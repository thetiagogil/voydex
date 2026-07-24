import { describe, expect, it } from "vitest";

import { buildMainlinePlayTeamPlanSummary as mapMainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/views/team/data/team-plan-mapper";
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

const modernMechanics = resolveGameMechanics({
  gameId: 13,
  generationId: 9,
  versionGroupId: 22,
});

const buildMainlinePlayTeamPlanSummary = (
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

const buildPlanRow = (
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

const buildMember = (
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

const buildMove = (
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

const plannedMove = (
  moveId: number,
  slot: number,
  name = `Move ${moveId}`,
) => ({
  move_id: moveId,
  name,
  slot,
});

describe("buildMainlinePlayTeamPlanSummary", () => {
  it("derives an exact match from current identity and specified build fields", () => {
    const plan = buildMainlinePlayTeamPlanSummary(
      [
        buildPlanRow(1, {
          planned_ability_name: "Blaze",
          planned_gender: "male",
        }),
      ],
      [buildMember("member-1", { ability_name: "Blaze", gender: "male" })],
    );

    expect(plan).toMatchObject({
      exactMatchCount: 1,
      followingState: "following",
      foundCount: 1,
      offPlanCount: 0,
    });
    expect(plan?.comparisons[0]?.status).toBe("exact-match");
  });

  it("excludes mechanics unsupported by the exact game from build status", () => {
    const generationOneMechanics = resolveGameMechanics({
      gameId: 1,
      generationId: 1,
      versionGroupId: 1,
    });
    const plan = buildMainlinePlayTeamPlanSummary(
      [
        buildPlanRow(1, {
          planned_ability_name: "Invalid legacy ability",
          planned_gender: "male",
          planned_held_item_name: "Invalid legacy item",
          planned_nature_name: "Invalid legacy nature",
        }),
      ],
      [buildMember("member-1")],
      [],
      { mechanics: generationOneMechanics },
    );

    expect(plan?.comparisons[0]?.status).toBe("exact-match");
    expect(plan?.mechanics).toBe(generationOneMechanics);
  });

  it("continues comparing mechanics supported by the exact game", () => {
    const generationTwoMechanics = resolveGameMechanics({
      gameId: 3,
      generationId: 2,
      versionGroupId: 2,
    });
    const plan = buildMainlinePlayTeamPlanSummary(
      [
        buildPlanRow(1, {
          planned_ability_name: "Invalid legacy ability",
          planned_gender: "male",
          planned_held_item_name: "Berry",
          planned_nature_name: "Invalid legacy nature",
        }),
      ],
      [
        buildMember("member-1", {
          gender: "female",
          held_item_name: "Berry",
        }),
      ],
      [],
      { mechanics: generationTwoMechanics },
    );

    expect(plan?.comparisons[0]?.status).toBe("build-differs");
  });

  it("recognizes an earlier evolution through version-aware edges", () => {
    const edge = {
      from_form_id: 1,
      from_species_id: 1,
      to_form_id: 2,
      to_species_id: 2,
    } as PokemonEvolutionEdge;
    const plan = buildMainlinePlayTeamPlanSummary(
      [buildPlanRow(1, { target_form_id: 2, target_species_id: 2 })],
      [buildMember("member-1")],
      [edge],
    );

    expect(plan?.comparisons[0]).toMatchObject({
      relation: "earlier-evolution",
      status: "earlier-evolution",
    });
  });

  it("uses retired members as identity evidence without claiming build compliance", () => {
    const plan = buildMainlinePlayTeamPlanSummary(
      [buildPlanRow(1)],
      [
        buildMember("member-1", {
          roster_state_name: "Retired",
          roster_state_slug: "retired",
        }),
      ],
    );

    expect(plan?.comparisons[0]?.status).toBe("retired");
    expect(plan?.followingState).toBe("following-with-changes");
  });

  it("resolves planned types from the latest attributes in the Play generation", () => {
    const fireType = { id: 10, name: "Fire", slug: "fire" } as Type;
    const fightingType = {
      id: 2,
      name: "Fighting",
      slug: "fighting",
    } as Type;
    const plan = buildMainlinePlayTeamPlanSummary(
      [buildPlanRow(1)],
      [buildMember("member-1")],
      [],
      {
        attributes: [
          {
            form_id: 1,
            generation_start_id: 3,
            primary_type_id: fireType.id,
            secondary_type_id: null,
          },
          {
            form_id: 1,
            generation_start_id: 4,
            primary_type_id: fireType.id,
            secondary_type_id: fightingType.id,
          },
        ] as PokemonAttributes[],
        types: [fireType, fightingType],
      },
    );

    expect(plan?.comparisons[0]).toMatchObject({
      plannedPrimaryType: fireType,
      plannedSecondaryType: fightingType,
    });
  });

  it("matches planned moves by identity while preserving Plan order", () => {
    const plan = buildMainlinePlayTeamPlanSummary(
      [
        buildPlanRow(1, {
          planned_moves: [plannedMove(1, 1), plannedMove(2, 2)],
        }),
      ],
      [
        buildMember("member-1", {
          moves: [buildMove(2, 1), buildMove(1, 2)],
        }),
      ],
    );

    expect(plan?.comparisons[0]?.status).toBe("exact-match");
    expect(plan?.comparisons[0]?.moves).toMatchObject([
      { actual: { id: 1 }, matches: true, planned: { id: 1, slot: 1 } },
      { actual: { id: 2 }, matches: true, planned: { id: 2, slot: 2 } },
    ]);
  });

  it("pairs different moves in recorded order and marks the build different", () => {
    const plan = buildMainlinePlayTeamPlanSummary(
      [
        buildPlanRow(1, {
          planned_moves: [plannedMove(1, 1), plannedMove(2, 2)],
        }),
      ],
      [
        buildMember("member-1", {
          moves: [buildMove(1, 1), buildMove(3, 2)],
        }),
      ],
    );

    expect(plan?.comparisons[0]?.status).toBe("build-differs");
    expect(plan?.comparisons[0]?.moves).toMatchObject([
      { actual: { id: 1 }, matches: true, planned: { id: 1 } },
      { actual: { id: 3 }, matches: false, planned: { id: 2 } },
    ]);
  });

  it("marks a planned move missing when no recorded move remains", () => {
    const plan = buildMainlinePlayTeamPlanSummary(
      [
        buildPlanRow(1, {
          planned_moves: [plannedMove(1, 1), plannedMove(2, 2)],
        }),
      ],
      [buildMember("member-1", { moves: [buildMove(1, 1)] })],
    );

    expect(plan?.comparisons[0]?.moves[1]).toMatchObject({
      actual: null,
      matches: false,
      planned: { id: 2 },
    });
    expect(plan?.comparisons[0]?.status).toBe("build-differs");
  });

  it("appends additional recorded moves as neutral rows", () => {
    const plan = buildMainlinePlayTeamPlanSummary(
      [buildPlanRow(1, { planned_moves: [plannedMove(1, 1)] })],
      [
        buildMember("member-1", {
          moves: [buildMove(1, 1), buildMove(2, 2)],
        }),
      ],
    );

    expect(plan?.comparisons[0]?.moves[1]).toMatchObject({
      actual: { id: 2 },
      matches: null,
      planned: null,
    });
    expect(plan?.comparisons[0]?.status).toBe("exact-match");
  });

  it("keeps recorded moves neutral when the Plan specifies none", () => {
    const plan = buildMainlinePlayTeamPlanSummary(
      [buildPlanRow(1)],
      [buildMember("member-1", { moves: [buildMove(1, 1)] })],
    );

    expect(plan?.comparisons[0]?.moves).toMatchObject([
      { actual: { id: 1 }, matches: null, planned: null },
    ]);
    expect(plan?.comparisons[0]?.status).toBe("exact-match");
  });

  it("matches each Play member once and only summarizes unplanned members", () => {
    const plan = buildMainlinePlayTeamPlanSummary(
      [buildPlanRow(1), buildPlanRow(2)],
      [
        buildMember("member-1"),
        buildMember("member-2", { evolution_family_id: 99 }),
      ],
    );

    expect(plan?.foundCount).toBe(1);
    expect(plan?.offPlanCount).toBe(1);
    expect(plan?.offPlanMemberNames).toEqual(["Current"]);
    expect(plan?.comparisons[1]?.status).toBe("not-found");
  });

  it("omits the section when no linked plan is available", () => {
    expect(buildMainlinePlayTeamPlanSummary([], [])).toBeNull();
  });
});
