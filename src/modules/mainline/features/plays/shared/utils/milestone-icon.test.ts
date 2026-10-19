import { describe, expect, it } from "vitest";

import { appIcons } from "@/shared/components/app-icon";

import {
  getMilestoneIcon,
  getMilestoneMedallion,
  isTrophyMilestone,
} from "./milestone-icon";

describe("isTrophyMilestone", () => {
  it("counts the League and the gym stand-ins as trophies", () => {
    for (const slug of ["champion", "elite-four", "hall-of-fame", "trial"]) {
      expect(isTrophyMilestone(slug)).toBe(true);
    }
  });

  it("leaves story steps, choices, rivals and bosses out", () => {
    for (const slug of ["story", "decision", "rival", "boss", null]) {
      expect(isTrophyMilestone(slug)).toBe(false);
    }
  });
});

describe("getMilestoneMedallion", () => {
  const icon = getMilestoneIcon("story");

  it("wears a gym's badge in its type", () => {
    expect(
      getMilestoneMedallion({ badgeType: "water", icon, isTrophy: false }),
    ).toEqual({ kind: "badge", type: "water" });
  });

  it("is gold for a trophy and calm blue for anything else", () => {
    expect(
      getMilestoneMedallion({ badgeType: null, icon, isTrophy: true }).kind,
    ).toBe("gold");
    expect(
      getMilestoneMedallion({ badgeType: null, icon, isTrophy: false }),
    ).toEqual({ icon: appIcons.milestones.story, kind: "calm" });
  });
});
