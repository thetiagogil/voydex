import { buildMainlinePlayTeamPlanSummary as mapMainlinePlayTeamPlanSummary } from "../team-plan-mapper";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
  MainlinePlayTeamPlanRow,
} from "@/modules/mainline/features/plays/hub/types";
import {
  resolveGameMechanics,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import type {
  PokemonAttributes,
  PokemonEvolutionEdge,
  Type,
} from "@/modules/reference/types";

/* Pokémon Scarlet: a modern game with every build mechanic. */
const modernMechanics = resolveGameMechanics({
  gameId: 36,
  generationId: 9,
  versionGroupId: 23,
});

export const buildTeamPlanSummary = (
  rows: MainlinePlayTeamPlanRow[],
  roster: MainlinePlayTeamMember[],
  evolutionEdges: PokemonEvolutionEdge[] = [],
  references: {
    attributes?: PokemonAttributes[];
    mechanics?: GameMechanicsProfile;
    types?: Type[];
  } = {},
) => {
  return mapMainlinePlayTeamPlanSummary(rows, roster, evolutionEdges, {
    attributes: references.attributes ?? [],
    mechanics: references.mechanics ?? modernMechanics,
    types: references.types ?? [],
  });
};

export const buildPlanRow = (
  slot: number,
  overrides: Partial<MainlinePlayTeamPlanRow> = {},
) =>
  ({
    linked_play_count: 1,
    planned_moves: [],
    slot,
    target_evolution_family_id: 10,
    target_form_id: slot,
    target_form_name: "Default",
    target_form_slug: `form-${slot}`,
    target_species_id: slot,
    target_species_name: `Planned ${slot}`,
    target_sprite_slug: `planned-${slot}`,
    team_plan_id: "plan-id",
    team_plan_member_id: `plan-member-${slot}`,
    team_plan_name: "Balanced team",
    team_plan_status_name: "Active",
    ...overrides,
  }) as MainlinePlayTeamPlanRow;

export const buildMember = (
  id: string,
  overrides: Partial<MainlinePlayTeamMember> = {},
) =>
  ({
    ability_id: null,
    created_at: "2026-01-01T00:00:00Z",
    evolution_family_id: 10,
    form_id: 1,
    gender: "unknown",
    held_item_id: null,
    moves: [],
    nature_id: null,
    play_pokemon_id: id,
    roster_state_name: "Active",
    roster_state_slug: "active",
    species_id: 1,
    species_name: "Current",
    ...overrides,
  }) as MainlinePlayTeamMember;

export const buildMove = (
  id: number,
  slot: number,
  name = `Move ${id}`,
): MainlinePlayTeamMove =>
  ({
    id,
    name,
    slot,
    slug: `move-${id}`,
  }) as MainlinePlayTeamMove;

export const plannedMove = (
  moveId: number,
  slot: number,
  name = `Move ${moveId}`,
) => ({
  move_id: moveId,
  name,
  slot,
});
