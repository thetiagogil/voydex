import { describe, expect, it } from "vitest";

import {
  buildMember,
  buildPlanRow,
  buildTeamPlanSummary,
} from "@/modules/mainline/features/plays/hub/views/team/data/__tests__/team-plan-test-fixtures";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type {
  PokemonAttributes,
  PokemonEvolutionEdge,
  Type,
} from "@/modules/reference/types";

describe("buildMainlinePlayTeamPlanSummary", () => {
  it("derives an exact match from current identity and specified build fields", () => {
    const plan = buildTeamPlanSummary(
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
    const plan = buildTeamPlanSummary(
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
    const plan = buildTeamPlanSummary(
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
    const plan = buildTeamPlanSummary(
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
    const plan = buildTeamPlanSummary(
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
    const plan = buildTeamPlanSummary(
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

  it("matches each Play member once and only summarizes unplanned members", () => {
    const plan = buildTeamPlanSummary(
      [buildPlanRow(1), buildPlanRow(2)],
      [
        buildMember("member-1"),
        buildMember("member-2", { evolution_family_id: 99 }),
      ],
    );

    expect(plan?.foundCount).toBe(1);
    expect(plan?.offPlanCount).toBe(1);
    expect(plan?.offPlanMembers.map((member) => member.species_name)).toEqual([
      "Current",
    ]);
    expect(plan?.comparisons[1]?.status).toBe("not-found");
  });

  it("omits the section when no linked plan is available", () => {
    expect(buildTeamPlanSummary([], [])).toBeNull();
  });
});
