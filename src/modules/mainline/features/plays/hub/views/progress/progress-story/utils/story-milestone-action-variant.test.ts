import { describe, expect, it } from "vitest";

import { getStoryMilestoneRecordingActionVariant } from "./story-milestone-action-variant";

describe("getStoryMilestoneRecordingActionVariant", () => {
  it("uses the primary variant when recording a new value", () => {
    expect(getStoryMilestoneRecordingActionVariant(false)).toBe("default");
  });

  it("uses the outline variant when updating a recorded value", () => {
    expect(getStoryMilestoneRecordingActionVariant(true)).toBe("outline");
  });
});
