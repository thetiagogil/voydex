import { describe, expect, it } from "vitest";

import { getHomeShelfSource } from "./home-play-model";

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
