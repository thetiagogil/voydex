import { describe, expect, it } from "vitest";

import type { PlannerAvailabilityRow } from "@/modules/mainline/features/plans/planner/client/planner-pool-reader";

import { buildPlannerAvailabilityFacts } from "./planner-availability-facts";

/* Sword and Shield (18) with The Isle of Armor (19) and The Crown Tundra (20). */
const sword = 33;
const shield = 34;
const caught = 1;
const row = (
  formId: number,
  targetVersionGroupId: number,
  gameId: number | null,
): PlannerAvailabilityRow => ({
  availability_method_id: caught,
  form_id: formId,
  game_id: gameId,
  source_version_group_id: targetVersionGroupId,
  species_id: formId,
  target_version_group_id: targetVersionGroupId,
});
const getFacts = (availability: PlannerAvailabilityRow[]) =>
  buildPlannerAvailabilityFacts({
    availability,
    baseVersionGroupId: 18,
    eventMethodIds: new Set(),
    expansionIds: [19, 20],
    gameIds: [sword, shield],
    inGameMethodIds: new Set([caught]),
  });

describe("buildPlannerAvailabilityFacts version exclusives", () => {
  it("names the expansions that hand an exclusive out in another version", () => {
    const facts = getFacts([
      row(706, 18, shield),
      row(706, 19, null),
      row(706, 20, shield),
      row(865, 18, sword),
      row(865, 19, sword),
      row(26, 18, null),
    ]);

    /* Goodra: Shield only, until The Isle of Armor hands it out in both. */
    expect(facts(706)).toMatchObject({
      exclusiveEndedByExpansionIds: [19],
      exclusiveToGameIds: [shield],
    });
    /* Sirfetch'd: an expansion row in Sword alone ends nothing. */
    expect(facts(865)).toMatchObject({
      exclusiveEndedByExpansionIds: [],
      exclusiveToGameIds: [sword],
    });
    /* Raichu: in both games, never an exclusive. */
    expect(facts(26)).toMatchObject({
      exclusiveEndedByExpansionIds: [],
      exclusiveToGameIds: [],
    });
  });
});
