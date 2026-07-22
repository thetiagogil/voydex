import { describe, expect, it } from "vitest";

import { buildMainlinePlayTeamPlanSummary } from "@/modules/mainline/features/plays/hub/views/team/data/team-plan-mapper";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamPlanRow,
} from "@/modules/mainline/features/plays/hub/types";
import type { PokemonEvolutionEdge } from "@/modules/reference/types";

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
