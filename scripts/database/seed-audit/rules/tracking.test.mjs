import path from "node:path";

import { describe, expect, it } from "vitest";

import { createAuditContext, seedsRoot } from "../context.mjs";
import { assertTrackingCoreRows } from "./tracking.mjs";

const seedPath = path.join(seedsRoot, "03_tracking", "fixture.sql");

/* One version group with a gym Story point, its leader and the badge fight. */
function buildTableRows({ withOpponentRef }) {
  const rows = (table, list) => [
    table,
    list.map((row) => ({ table, row, filePath: seedPath })),
  ];
  return new Map([
    rows("reference.version_groups", [{ id: 1, slug: "red-blue" }]),
    rows("reference.types", [{ id: 13, slug: "rock" }]),
    rows("reference.pokemon_species", [{ id: 95, slug: "onix" }]),
    rows("reference.pokemon_forms", [{ id: 9500, species_id: 95 }]),
    rows("reference.game_content_scopes", [
      { game_id: 1, version_group_id: 1 },
    ]),
    rows("tracking.mainline_snapshot_policies", [{ id: 2, slug: "optional" }]),
    rows("tracking.mainline_milestone_types", [
      { id: 1, slug: "story" },
      { id: 2, slug: "gym" },
    ]),
    rows("tracking.mainline_milestone_prerequisite_kinds", []),
    rows("tracking.mainline_collectible_types", []),
    rows("tracking.mainline_categories", [
      {
        id: 101,
        version_group_id: 1,
        slug: "main-story",
        category_kind: "story",
        sort_order: 1,
      },
    ]),
    rows("tracking.mainline_opponents", [
      {
        id: 1001,
        version_group_id: 1,
        game_id: null,
        slug: "brock",
        name: "Brock",
        opponent_role: "gym-leader",
        primary_type_id: 13,
        secondary_type_id: null,
        sprite_slug: "brock",
        sort_order: 1,
      },
    ]),
    rows("tracking.mainline_badges", []),
    rows("tracking.mainline_collectibles", []),
    rows("tracking.mainline_collectible_entries", []),
    rows("tracking.mainline_milestones", [
      {
        id: 10002,
        version_group_id: 1,
        game_id: null,
        category_id: 101,
        milestone_type_id: 1,
        snapshot_policy_id: 2,
        parent_milestone_id: null,
        slug: "receive-pokedex",
        name: "Receive Pokedex",
        description: "Receive the Pokedex.",
        sort_order: 1,
        is_required_for_completion: true,
      },
      {
        id: 10003,
        version_group_id: 1,
        game_id: null,
        category_id: 101,
        milestone_type_id: 2,
        snapshot_policy_id: 2,
        parent_milestone_id: null,
        slug: "boulder-badge",
        name: "Boulder Badge",
        description: "Defeat Brock.",
        sort_order: 2,
        is_required_for_completion: true,
      },
    ]),
    rows("tracking.mainline_milestone_pokemon_refs", []),
    rows(
      "tracking.mainline_milestone_opponent_refs",
      withOpponentRef
        ? [
            {
              milestone_id: 10003,
              opponent_id: 1001,
              version_group_id: 1,
              relation_kind: "battle-opponent",
              sort_order: 1,
              notes: null,
            },
          ]
        : [],
    ),
    rows("tracking.mainline_milestone_badge_refs", []),
    rows("tracking.mainline_milestone_collectible_refs", []),
    rows("tracking.mainline_milestone_decision_options", []),
    rows("tracking.mainline_milestone_prerequisites", []),
  ]);
}

describe("tracking seed rules", () => {
  it("accepts a battle Story point that names its opponent", () => {
    const context = createAuditContext();

    assertTrackingCoreRows(context, buildTableRows({ withOpponentRef: true }));

    expect(context.errors).toEqual([]);
  });

  it("rejects a battle Story point with no opponent to fight", () => {
    const context = createAuditContext();

    assertTrackingCoreRows(context, buildTableRows({ withOpponentRef: false }));

    expect(context.errors).toEqual([
      "seeds/03_tracking/fixture.sql: tracking.mainline_milestones row 10003 is a gym battle with no opponent in tracking.mainline_milestone_opponent_refs.",
    ]);
  });
});
