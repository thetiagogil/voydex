import { buildTeamPlanMemberComparison } from "./team-plan-comparison-builder";
import { matchTeamPlanMembers } from "./team-plan-member-matching";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamPlanFollowingState,
  MainlinePlayTeamPlanMemberComparison,
  MainlinePlayTeamPlanRow,
  MainlinePlayTeamPlanSummary,
} from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import {
  resolveTypePair,
  selectLatestAttributes,
} from "@/modules/reference/features/pokemon/data/pokemon-attribute-selectors";
import type {
  PokemonAttributes,
  PokemonEvolutionEdge,
  Type,
} from "@/modules/reference/types";

type PlannedReferences = {
  attributes: PokemonAttributes[];
  mechanics: GameMechanicsProfile;
  types: Type[];
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
  if (comparisons.every((row) => row.status === "exact-match")) {
    return "following";
  }

  return "following-with-changes";
};

const getPlannedMembers = (rows: MainlinePlayTeamPlanRow[]) => {
  return rows
    .filter(
      (row) =>
        row.team_plan_member_id &&
        row.slot &&
        row.target_species_id &&
        row.target_form_id,
    )
    .sort((left, right) => (left.slot ?? 0) - (right.slot ?? 0));
};

export const buildMainlinePlayTeamPlanSummary = (
  rows: MainlinePlayTeamPlanRow[],
  roster: MainlinePlayTeamMember[],
  evolutionEdges: PokemonEvolutionEdge[],
  plannedReferences: PlannedReferences,
): MainlinePlayTeamPlanSummary | null => {
  const plan = rows[0];

  if (!plan?.team_plan_id || !plan.team_plan_name) return null;

  const plannedMembers = getPlannedMembers(rows);
  const latestAttributesByForm = selectLatestAttributes(
    plannedReferences.attributes,
  );
  const typeById = new Map(
    plannedReferences.types.map((type) => [type.id, type]),
  );
  const { matchedPlayMemberIds, matchByPlanMemberId } = matchTeamPlanMembers(
    plannedMembers,
    roster,
    evolutionEdges,
  );
  const comparisons = plannedMembers.map((planned) => {
    const match = matchByPlanMemberId.get(planned.team_plan_member_id ?? "");

    return buildTeamPlanMemberComparison({
      mechanics: plannedReferences.mechanics,
      member: match?.member ?? null,
      planned,
      plannedTypes: resolveTypePair(
        latestAttributesByForm.get(planned.target_form_id ?? -1) ?? null,
        typeById,
      ),
      relation: match?.relation ?? null,
    });
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
    offPlanMembers,
    otherVersionExclusives: {},
    planId: plan.team_plan_id,
    planName: plan.team_plan_name,
    statusName: plan.team_plan_status_name ?? "Draft",
    targetCount: comparisons.length,
  };
};
