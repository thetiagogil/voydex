import { describe, expect, it } from "vitest";

import { getStoryMilestoneMoment } from "./story-milestone-moment";

describe("getStoryMilestoneMoment", () => {
  it("makes completing a milestone a moment, as Overview's Record does", () => {
    expect(
      getStoryMilestoneMoment({
        intent: "complete",
        recordTeamSnapshot: false,
      }),
    ).toEqual({ createMoment: true, includeTeamSnapshot: false });
  });

  it("adds the team snapshot only when asked for", () => {
    expect(
      getStoryMilestoneMoment({ intent: "complete", recordTeamSnapshot: true }),
    ).toEqual({ createMoment: true, includeTeamSnapshot: true });
    expect(
      getStoryMilestoneMoment({
        intent: "story-moment",
        recordTeamSnapshot: false,
      }),
    ).toEqual({ createMoment: true, includeTeamSnapshot: true });
  });

  it("does not make a new moment for a note or decision edit", () => {
    expect(
      getStoryMilestoneMoment({ intent: "note", recordTeamSnapshot: false }),
    ).toEqual({ createMoment: false, includeTeamSnapshot: false });
    expect(
      getStoryMilestoneMoment({ intent: "decision", recordTeamSnapshot: true }),
    ).toEqual({ createMoment: false, includeTeamSnapshot: false });
  });
});
