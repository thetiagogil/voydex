import { describe, expect, it } from "vitest";

import { appIcons } from "@/shared/components/app-icon";

import { toHomeNextUp } from "./home-next-up";

const types = new Map([[12, "grass"]]);

describe("toHomeNextUp", () => {
  it("shows a gym with its badge and what to do", () => {
    const nextUp = toHomeNextUp(
      { kind: "next", milestoneId: 22, name: "Rainbow Badge" },
      {
        badge_refs: [{ sprite_slug: "rainbow-badge", type_id: 12 }],
        category_name: "Gyms",
        description: "Beat Erika at Celadon Gym.",
        milestone_name: "Rainbow Badge",
        milestone_type_slug: "gym",
      },
      types,
    );

    expect(nextUp?.name).toBe("Rainbow Badge");
    expect(nextUp?.detail).toBe("Beat Erika at Celadon Gym.");
    expect(nextUp?.medallion).toMatchObject({ kind: "badge", type: "grass" });
  });

  it("falls back to the story's name and the calm medallion", () => {
    const nextUp = toHomeNextUp(
      { kind: "next", milestoneId: 3, name: "Arrive in Goldenrod" },
      null,
      types,
    );

    expect(nextUp).toEqual({
      detail: null,
      medallion: { icon: appIcons.milestones.story, kind: "calm" },
      name: "Arrive in Goldenrod",
    });
  });

  it("says the story is complete, and nothing without Story", () => {
    expect(toHomeNextUp({ kind: "complete" }, null, types)?.name).toBe(
      "Story complete",
    );
    expect(toHomeNextUp(null, null, types)).toBeNull();
  });
});
