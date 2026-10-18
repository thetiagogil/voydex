import { describe, expect, it } from "vitest";

import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";

import { getProgressSummaryItems } from "./progress-summary-model";

const overview = {
  caught_required_pokedex_species_count: 24,
  completed_required_milestone_count: 10,
  required_milestone_count: 16,
  required_pokedex_species_count: 151,
} as MainlinePlayOverview;

describe("getProgressSummaryItems", () => {
  it("says each tracker's count in words", () => {
    expect(
      getProgressSummaryItems(overview, "play-1").map(({ detail, label }) => ({
        detail,
        label,
      })),
    ).toEqual([
      { detail: "10 of 16 milestones", label: "Story" },
      { detail: "24 of 151 caught", label: "Pokédex" },
    ]);
  });
});
