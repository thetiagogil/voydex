import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamPlanRelation,
  MainlinePlayTeamPlanRow,
} from "@/modules/mainline/features/plays/hub/types";
import type { PokemonEvolutionEdge } from "@/modules/reference/types";

type TeamPlanMemberMatch = {
  member: MainlinePlayTeamMember;
  relation: MainlinePlayTeamPlanRelation;
};

const identityKey = (speciesId: number, formId: number) =>
  `${speciesId}:${formId}`;

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

const buildEvolutionGraph = (evolutionEdges: PokemonEvolutionEdge[]) => {
  const edgesBySource = new Map<string, string[]>();

  for (const edge of evolutionEdges) {
    const source = identityKey(edge.from_species_id, edge.from_form_id);
    const targets = edgesBySource.get(source) ?? [];
    targets.push(identityKey(edge.to_species_id, edge.to_form_id));
    edgesBySource.set(source, targets);
  }

  return edgesBySource;
};

export const matchTeamPlanMembers = (
  plannedMembers: MainlinePlayTeamPlanRow[],
  roster: MainlinePlayTeamMember[],
  evolutionEdges: PokemonEvolutionEdge[],
) => {
  const edgesBySource = buildEvolutionGraph(evolutionEdges);
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

  const matchByPlanMemberId = new Map<string, TeamPlanMemberMatch>();
  const matchedPlayMemberIds = new Set<string>();

  for (const candidate of candidates) {
    const planMemberId = candidate.planned.team_plan_member_id;
    const playMemberId = candidate.member.play_pokemon_id;

    if (!planMemberId || !playMemberId) continue;
    if (
      matchByPlanMemberId.has(planMemberId) ||
      matchedPlayMemberIds.has(playMemberId)
    ) {
      continue;
    }

    matchByPlanMemberId.set(planMemberId, {
      member: candidate.member,
      relation: candidate.relation,
    });
    matchedPlayMemberIds.add(playMemberId);
  }

  return { matchedPlayMemberIds, matchByPlanMemberId };
};
