import { buildTeamPlanMoveComparison } from "./team-plan-move-comparison";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamPlanCriterion,
  MainlinePlayTeamPlanMemberComparison,
  MainlinePlayTeamPlanRelation,
  MainlinePlayTeamPlanRow,
} from "@/modules/mainline/features/plays/hub/types";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import type { Type } from "@/modules/reference/types";

type PlannedTypePair = {
  primaryType: Type | null;
  secondaryType: Type | null;
};

const criterion = (
  planned: string | null,
  actual: string | null,
): MainlinePlayTeamPlanCriterion => ({
  actual,
  matches: planned === null ? null : planned === actual,
  planned,
});

export const buildTeamPlanMemberComparison = ({
  mechanics,
  member,
  planned,
  plannedTypes,
  relation,
}: {
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember | null;
  planned: MainlinePlayTeamPlanRow;
  plannedTypes: PlannedTypePair;
  relation: MainlinePlayTeamPlanRelation | null;
}): MainlinePlayTeamPlanMemberComparison => {
  const moves = buildTeamPlanMoveComparison(planned.planned_moves, member);
  const build = {
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
  };
  const supportedBuildCriteria = [
    [gameMechanics.abilities, build.ability],
    [gameMechanics.pokemonGender, build.gender],
    [gameMechanics.heldItems, build.heldItem],
    [gameMechanics.natures, build.nature],
  ] as const;
  const buildMatches =
    supportedBuildCriteria
      .filter(([mechanic]) => supportsGameMechanic(mechanics, mechanic))
      .every(([, item]) => item.matches !== false) && moves.matches !== false;
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
    moves: moves.rows,
    planMemberId: planned.team_plan_member_id ?? "",
    plannedFormId: planned.target_form_id ?? -1,
    plannedFormName: planned.target_form_name ?? "Default form",
    plannedFormSlug: planned.target_form_slug ?? "",
    plannedName: planned.target_species_name ?? "Unknown Pokémon",
    plannedPrimaryType: plannedTypes.primaryType,
    plannedSecondaryType: plannedTypes.secondaryType,
    plannedSpeciesId: planned.target_species_id ?? -1,
    playMember: member,
    relation,
    roleLabel: planned.role_name,
    slot: planned.slot ?? 0,
    status,
  };
};
