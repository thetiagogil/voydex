import { describe, expect, it } from "vitest";

import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";

import { getProgressSummaryItems } from "./progress-summary-model";

const overview = {
  caught_required_pokedex_species_count: 24,
  completed_required_milestone_count: 10,
  required_milestone_count: 16,
  required_pokedex_species_count: 151,
  seen_required_pokedex_species_count: 22,
} as MainlinePlayOverview;

describe("getProgressSummaryItems", () => {
  it("says each tracker's count and what is left or what else counts", () => {
    expect(
      getProgressSummaryItems(overview, "play-1").map(
        ({ detail, label, note }) => ({ detail, label, note }),
      ),
    ).toEqual([
      { detail: "10 of 16 milestones", label: "Story", note: "6 to go" },
      { detail: "24 of 151 caught", label: "Pokédex", note: "22 more seen" },
    ]);
  });

  it("says a finished Story is done", () => {
    expect(
      getProgressSummaryItems(
        { ...overview, completed_required_milestone_count: 16 },
        "play-1",
      )[0]?.note,
    ).toBe("Story done");
  });
});
