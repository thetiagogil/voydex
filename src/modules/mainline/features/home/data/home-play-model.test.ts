import { describe, expect, it } from "vitest";

import { isWaitingForPartner } from "./home-play-model";

describe("isWaitingForPartner", () => {
  const play = {
    active_team_count: 0,
    completed_milestone_count: 0,
    reserve_team_count: 0,
  };

  it("asks for the partner while nothing is recorded", () => {
    expect(isWaitingForPartner(play)).toBe(true);
  });

  it("never asks once the Play has a team, even with no progress", () => {
    expect(isWaitingForPartner({ ...play, active_team_count: 6 })).toBe(false);
    expect(isWaitingForPartner({ ...play, reserve_team_count: 1 })).toBe(false);
  });

  it("never asks once a milestone is recorded", () => {
    expect(isWaitingForPartner({ ...play, completed_milestone_count: 1 })).toBe(
      false,
    );
  });
});
