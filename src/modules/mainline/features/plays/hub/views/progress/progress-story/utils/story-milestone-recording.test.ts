import { describe, expect, it } from "vitest";

import {
  hasRecordedStoryMilestoneDecision,
  hasRecordedStoryMilestoneNote,
  hasRecordedStoryMilestoneSnapshot,
} from "./story-milestone-recording";

const recording = {
  notes: null,
  selectedDecisionId: null,
  selectedDecisionLabel: null,
  snapshotCount: 0,
};

describe("Story milestone recording evidence", () => {
  it("treats either normalized decision value as recorded evidence", () => {
    expect(
      hasRecordedStoryMilestoneDecision({
        ...recording,
        selectedDecisionLabel: "Rowlet",
      }),
    ).toBe(true);
  });

  it("ignores blank notes and detects persisted snapshots", () => {
    expect(
      hasRecordedStoryMilestoneNote({
        ...recording,
        notes: "   ",
      }),
    ).toBe(false);
    expect(
      hasRecordedStoryMilestoneSnapshot({
        ...recording,
        snapshotCount: 6,
      }),
    ).toBe(true);
  });
});
