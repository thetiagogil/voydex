import { describe, expect, it } from "vitest";

import {
  getHomeContinue,
  getHomeShelfSource,
  isWaitingForPartner,
} from "./home-play-model";

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

describe("getHomeShelfSource", () => {
  const play = (
    id: string,
    status_slug: string | null,
    updated_at = "2026-01-01T00:00:00Z",
    last_opened_at: string | null = null,
  ) => ({ id, last_opened_at, status_slug, updated_at });

  it("keeps the Plays still underway", () => {
    expect(
      getHomeShelfSource([
        play("a", "completed"),
        play("b", "playing"),
        play("c", "abandoned"),
        play("d", "paused"),
        play("e", "not_started"),
        play("f", null),
      ]).map(({ id }) => id),
    ).toEqual(["b", "d", "e", "f"]);
  });

  it("falls back to every Play when all are finished or dropped", () => {
    expect(
      getHomeShelfSource([play("a", "completed"), play("b", "abandoned")]).map(
        ({ id }) => id,
      ),
    ).toEqual(["a", "b"]);
  });

  it("puts first the Play opened or changed last, whichever is later", () => {
    expect(
      getHomeShelfSource([
        play("changed-late", "playing", "2026-03-01T00:00:00Z"),
        play(
          "opened-latest",
          "playing",
          "2026-01-01T00:00:00Z",
          "2026-04-01T00:00:00Z",
        ),
        play("never-opened", "playing", "2026-02-01T00:00:00Z"),
        play(
          "opened-then-changed",
          "playing",
          "2026-03-15T00:00:00Z",
          "2026-01-15T00:00:00Z",
        ),
        play(
          "opened-early",
          "playing",
          "2026-01-01T00:00:00Z",
          "2026-01-15T00:00:00Z",
        ),
      ]).map(({ id }) => id),
    ).toEqual([
      "opened-latest",
      "opened-then-changed",
      "changed-late",
      "never-opened",
      "opened-early",
    ]);
  });
});
