import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamPlanCriterion,
  MainlinePlayTeamPlanFollowingState,
  MainlinePlayTeamPlanMemberComparison,
  MainlinePlayTeamPlanMoveComparison,
  MainlinePlayTeamPlanMoveTarget,
  MainlinePlayTeamPlanRelation,
  MainlinePlayTeamPlanRow,
  MainlinePlayTeamPlanSummary,
} from "@/modules/mainline/features/plays/hub/types";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import {
  resolveTypePair,
  selectLatestAttributes,
} from "@/modules/reference/features/pokemon/data/pokemon-attribute-selectors";
import type {
  PokemonAttributes,
  PokemonEvolutionEdge,
  Type,
} from "@/modules/reference/types";
import type { Json } from "@/shared/types/database.types";

type PlannedReferences = {
  attributes: PokemonAttributes[];
  mechanics: GameMechanicsProfile;
  types: Type[];
};

type PlannedTypePair = {
  primaryType: Type | null;
  secondaryType: Type | null;
};

const identityKey = (speciesId: number, formId: number) =>
  `${speciesId}:${formId}`;

const parsePlannedMoves = (
  value: Json | null,
): MainlinePlayTeamPlanMoveTarget[] => {
  if (!Array.isArray(value)) return [];

  return value
    .flatMap((move) => {
      if (!move || typeof move !== "object" || Array.isArray(move)) return [];
      const moveId = move.move_id;
      const name = move.name;
      const slot = move.slot;

      return typeof moveId === "number" &&
        typeof name === "string" &&
        typeof slot === "number" &&
        slot >= 1 &&
        slot <= 4
        ? [{ id: moveId, name, slot }]
        : [];
    })
    .sort((left, right) => left.slot - right.slot);
};

const canReach = (
  from: string,
  to: string,
  edgesBySource: Map<string, string[]>,
) => {
  const pending = [...(edgesBySource.get(from) ?? [])];
  const visited = new Set<string>();

  while (pending.length) {
    const current = pending.shift();
    if (!current || visited.has(current)) continue;
    if (current === to) return true;
    visited.add(current);
    pending.push(...(edgesBySource.get(current) ?? []));
  }

  return false;
};

const getRelation = (
  planned: MainlinePlayTeamPlanRow,
  member: MainlinePlayTeamMember,
  edgesBySource: Map<string, string[]>,
): MainlinePlayTeamPlanRelation | null => {
  if (
    planned.target_species_id === member.species_id &&
    planned.target_form_id === member.form_id
  ) {
    return "exact";
  }

  if (planned.target_species_id === member.species_id) {
    return "alternate-form";
  }

  if (
    !planned.target_evolution_family_id ||
    planned.target_evolution_family_id !== member.evolution_family_id
  ) {
    return null;
  }

  const plannedKey = identityKey(
    planned.target_species_id ?? -1,
    planned.target_form_id ?? -1,
  );
  const memberKey = identityKey(member.species_id ?? -1, member.form_id ?? -1);

  if (canReach(memberKey, plannedKey, edgesBySource)) {
    return "earlier-evolution";
  }

  if (canReach(plannedKey, memberKey, edgesBySource)) {
    return "later-evolution";
  }

  return "branched-evolution";
};

const relationScore = (relation: MainlinePlayTeamPlanRelation) => {
  switch (relation) {
    case "exact":
      return 500;
    case "alternate-form":
      return 400;
    case "earlier-evolution":
    case "later-evolution":
      return 300;
    case "branched-evolution":
      return 200;
  }
};

const rosterStateScore = (member: MainlinePlayTeamMember) => {
  switch (member.roster_state_slug) {
    case "active":
      return 30;
    case "reserve":
      return 20;
    case "retired":
      return 10;
    case "replaced":
      return 5;
    default:
      return 0;
  }
};

const criterion = (
  planned: string | null,
  actual: string | null,
): MainlinePlayTeamPlanCriterion => ({
  actual,
  matches: planned === null ? null : planned === actual,
  planned,
});

const compareMoves = (
  plannedMoves: MainlinePlayTeamPlanMoveTarget[],
  member: MainlinePlayTeamMember | null,
): {
  matches: boolean | null;
  rows: MainlinePlayTeamPlanMoveComparison[];
} => {
  const actualMoves = [...(member?.moves ?? [])].sort(
    (left, right) => left.slot - right.slot,
  );
  const usedActualIndexes = new Set<number>();
  const exactActualIndexByPlannedIndex = new Map<number, number>();

  plannedMoves.forEach((plannedMove, plannedIndex) => {
    const actualIndex = actualMoves.findIndex(
      (actualMove, candidateIndex) =>
        !usedActualIndexes.has(candidateIndex) &&
        actualMove.id === plannedMove.id,
    );

    if (actualIndex >= 0) {
      exactActualIndexByPlannedIndex.set(plannedIndex, actualIndex);
      usedActualIndexes.add(actualIndex);
    }
  });

  const unmatchedActualIndexes = actualMoves
    .map((_, index) => index)
    .filter((index) => !usedActualIndexes.has(index));
  let unmatchedActualCursor = 0;

  const rows: MainlinePlayTeamPlanMoveComparison[] = plannedMoves.map(
    (plannedMove, plannedIndex) => {
      const exactActualIndex = exactActualIndexByPlannedIndex.get(plannedIndex);

      if (exactActualIndex !== undefined) {
        return {
          actual: actualMoves[exactActualIndex] ?? null,
          matches: true,
          planned: plannedMove,
        };
      }

      const nextActualIndex =
        unmatchedActualIndexes[unmatchedActualCursor] ?? null;
      unmatchedActualCursor += 1;

      return {
        actual:
          nextActualIndex === null
            ? null
            : (actualMoves[nextActualIndex] ?? null),
        matches: false,
        planned: plannedMove,
      };
    },
  );

  for (
    let index = unmatchedActualCursor;
    index < unmatchedActualIndexes.length;
    index += 1
  ) {
    rows.push({
      actual: actualMoves[unmatchedActualIndexes[index] ?? -1] ?? null,
      matches: null,
      planned: null,
    });
  }

  return {
    matches: plannedMoves.length
      ? rows.filter((row) => row.planned).every((row) => row.matches === true)
      : null,
    rows,
  };
};

const getBuild = (
  planned: MainlinePlayTeamPlanRow,
  member: MainlinePlayTeamMember | null,
) => {
  const plannedMoves = parsePlannedMoves(planned.planned_moves);
  const moves = compareMoves(plannedMoves, member);

  return {
    build: {
      ability: criterion(
        planned.planned_ability_name ?? null,
        member?.ability_name ?? null,
      ),
      gender: criterion(planned.planned_gender ?? null, member?.gender ?? null),
      heldItem: criterion(
        planned.planned_held_item_name ?? null,
        member?.held_item_name ?? null,
      ),
      nature: criterion(
        planned.planned_nature_name ?? null,
        member?.nature_name ?? null,
      ),
    },
    moves: moves.rows,
    movesMatch: moves.matches,
  };
};

const buildComparison = (
  planned: MainlinePlayTeamPlanRow,
  member: MainlinePlayTeamMember | null,
  relation: MainlinePlayTeamPlanRelation | null,
  plannedTypes: PlannedTypePair,
  mechanics: GameMechanicsProfile,
): MainlinePlayTeamPlanMemberComparison => {
  const { build, moves, movesMatch } = getBuild(planned, member);
  const supportedBuildCriteria = [
    [gameMechanics.abilities, build.ability],
    [gameMechanics.pokemonGender, build.gender],
    [gameMechanics.heldItems, build.heldItem],
    [gameMechanics.natures, build.nature],
  ] as const;
  const buildMatches =
    supportedBuildCriteria
      .filter(([mechanic]) => supportsGameMechanic(mechanics, mechanic))
      .every(([, item]) => item.matches !== false) && movesMatch !== false;
  const status = !member
    ? "not-found"
    : member.roster_state_slug === "retired"
      ? "retired"
      : member.roster_state_slug === "replaced"
        ? "replaced"
        : relation === "exact" && buildMatches
          ? "exact-match"
          : relation === "exact"
            ? "build-differs"
            : (relation ?? "not-found");

  return {
    build,
    memberNotes: planned.team_plan_member_notes,
    moves,
    planMemberId: planned.team_plan_member_id ?? "",
    plannedFormId: planned.target_form_id ?? -1,
    plannedFormName: planned.target_form_name ?? "Default form",
    plannedFormSlug: planned.target_form_slug ?? "",
    plannedName: planned.target_species_name ?? "Unknown Pokémon",
    plannedPrimaryType: plannedTypes.primaryType,
    plannedSecondaryType: plannedTypes.secondaryType,
    plannedSpeciesId: planned.target_species_id ?? -1,
    plannedSpriteSlug: planned.target_sprite_slug,
    playMember: member,
    relation,
    roleLabel: planned.role_label,
    slot: planned.slot ?? 0,
    status,
  };
};

const getFollowingState = (
  comparisons: MainlinePlayTeamPlanMemberComparison[],
  rosterCount: number,
): MainlinePlayTeamPlanFollowingState => {
  if (
    !comparisons.length ||
    (!rosterCount && comparisons.every((row) => !row.playMember))
  ) {
    return "not-started";
  }

  const found = comparisons.filter((row) => row.playMember);
  if (!found.length) return "not-following";
  if (comparisons.every((row) => row.status === "exact-match"))
    return "following";
  return "following-with-changes";
};

export const buildMainlinePlayTeamPlanSummary = (
  rows: MainlinePlayTeamPlanRow[],
  roster: MainlinePlayTeamMember[],
  evolutionEdges: PokemonEvolutionEdge[],
  plannedReferences: PlannedReferences,
): MainlinePlayTeamPlanSummary | null => {
  const plan = rows[0];

  if (!plan?.team_plan_id || !plan.team_plan_name) return null;

  const plannedMembers = rows
    .filter(
      (row) =>
        row.team_plan_member_id &&
        row.slot &&
        row.target_species_id &&
        row.target_form_id,
    )
    .sort((left, right) => (left.slot ?? 0) - (right.slot ?? 0));
  const latestAttributesByForm = selectLatestAttributes(
    plannedReferences.attributes,
  );
  const typeById = new Map(
    plannedReferences.types.map((type) => [type.id, type]),
  );
  const edgesBySource = new Map<string, string[]>();

  for (const edge of evolutionEdges) {
    const source = identityKey(edge.from_species_id, edge.from_form_id);
    const targets = edgesBySource.get(source) ?? [];
    targets.push(identityKey(edge.to_species_id, edge.to_form_id));
    edgesBySource.set(source, targets);
  }

  const candidates = plannedMembers.flatMap((planned) =>
    roster.flatMap((member) => {
      const relation = getRelation(planned, member, edgesBySource);
      return relation
        ? [
            {
              member,
              planned,
              relation,
              score: relationScore(relation) + rosterStateScore(member),
            },
          ]
        : [];
    }),
  );

  candidates.sort(
    (left, right) =>
      right.score - left.score ||
      (left.planned.slot ?? 0) - (right.planned.slot ?? 0) ||
      (left.member.created_at ?? "").localeCompare(
        right.member.created_at ?? "",
      ),
  );

  const matchByPlanMemberId = new Map<
    string,
    { member: MainlinePlayTeamMember; relation: MainlinePlayTeamPlanRelation }
  >();
  const matchedPlayMemberIds = new Set<string>();

  for (const candidate of candidates) {
    const planMemberId = candidate.planned.team_plan_member_id;
    const playMemberId = candidate.member.play_pokemon_id;
    if (!planMemberId || !playMemberId) continue;
    if (
      matchByPlanMemberId.has(planMemberId) ||
      matchedPlayMemberIds.has(playMemberId)
    )
      continue;

    matchByPlanMemberId.set(planMemberId, {
      member: candidate.member,
      relation: candidate.relation,
    });
    matchedPlayMemberIds.add(playMemberId);
  }

  const comparisons = plannedMembers.map((planned) => {
    const match = matchByPlanMemberId.get(planned.team_plan_member_id ?? "");
    return buildComparison(
      planned,
      match?.member ?? null,
      match?.relation ?? null,
      resolveTypePair(
        latestAttributesByForm.get(planned.target_form_id ?? -1) ?? null,
        typeById,
      ),
      plannedReferences.mechanics,
    );
  });
  const offPlanMembers = roster.filter(
    (member) =>
      member.play_pokemon_id &&
      !matchedPlayMemberIds.has(member.play_pokemon_id),
  );

  return {
    comparisons,
    exactMatchCount: comparisons.filter((row) => row.status === "exact-match")
      .length,
    foundCount: comparisons.filter((row) => row.playMember).length,
    followingState: getFollowingState(comparisons, roster.length),
    linkedPlayCount: Number(plan.linked_play_count ?? 0),
    mechanics: plannedReferences.mechanics,
    notes: plan.team_plan_notes,
    offPlanCount: offPlanMembers.length,
    offPlanMemberNames: offPlanMembers.map(
      (member) => member.nickname ?? member.species_name ?? "Unknown Pokémon",
    ),
    planId: plan.team_plan_id,
    planName: plan.team_plan_name,
    statusName: plan.team_plan_status_name ?? "Draft",
    targetCount: comparisons.length,
  };
};
