import { describe, expect, it } from "vitest";

import { getHomeContinue, isWaitingForPartner } from "./home-play-model";

describe("isWaitingForPartner", () => {
  const play = {
    active_team_count: 0,
    completed_milestone_count: 0,
    reserve_team_count: 0,
    storyTracked: true,
  };

  it("asks for the partner while nothing is recorded", () => {
    expect(isWaitingForPartner(play)).toBe(true);
  });

  it("never asks once the Play has a team, even with no progress", () => {
    expect(isWaitingForPartner({ ...play, active_team_count: 6 })).toBe(false);
    expect(isWaitingForPartner({ ...play, reserve_team_count: 1 })).toBe(false);
  });

  it("never asks when the Play doesn't track Story", () => {
    expect(isWaitingForPartner({ ...play, storyTracked: false })).toBe(false);
  });

  it("never asks once a milestone is recorded", () => {
    expect(isWaitingForPartner({ ...play, completed_milestone_count: 1 })).toBe(
      false,
    );
  });
});

describe("getHomeContinue", () => {
  const pikachu = { id: "pokemon-1", name: "Sparky" };

  it("continues the Play when nothing is picked", () => {
    expect(
      getHomeContinue({ id: "play-1", statusSlug: "playing" }, null),
    ).toEqual({
      href: "/mainline/plays/play-1",
      label: "Continue",
    });
  });

  it("continues with the picked Pokémon, in its Roster", () => {
    expect(
      getHomeContinue({ id: "play-1", statusSlug: "playing" }, pikachu),
    ).toEqual({
      href: "/mainline/plays/play-1/team?pokemon=pokemon-1",
      label: "Continue with Sparky",
    });
  });

  it("opens a completed Play, or the Pokémon picked in it", () => {
    expect(
      getHomeContinue({ id: "play-1", statusSlug: "completed" }, null).label,
    ).toBe("Open");
    expect(
      getHomeContinue({ id: "play-1", statusSlug: "completed" }, pikachu).label,
    ).toBe("Open Sparky");
  });
});
