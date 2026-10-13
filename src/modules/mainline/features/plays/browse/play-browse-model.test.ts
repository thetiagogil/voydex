import { describe, expect, it } from "vitest";

import {
  defaultPlayBrowseFilters,
  filterAndSortPlays,
  getInitialPlayBrowseFilters,
  getPlayBrowseOptions,
  getPlayBrowseUrlSearchParams,
  groupPlaysByStatus,
} from "@/modules/mainline/features/plays/browse/play-browse-model";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";

const buildPlay = (
  overrides: Partial<MainlinePlaySummary>,
): MainlinePlaySummary => {
  return {
    created_at: "2026-01-01T00:00:00Z",
    game_name: "Pokémon HeartGold",
    game_slug: "heartgold",
    play_id: "play-1",
    play_name: "Johto Adventure",
    started_on: "2026-01-02",
    status_name: "Playing",
    status_slug: "playing",
    trainer_name: "Lyra",
    updated_at: "2026-01-03T00:00:00Z",
    ...overrides,
  } as MainlinePlaySummary;
};

describe("play browse model", () => {
  const plays = [
    buildPlay({ play_id: "play-1" }),
    buildPlay({
      created_at: "2026-02-01T00:00:00Z",
      game_name: "Pokémon Emerald",
      game_slug: "emerald",
      play_id: "play-2",
      play_name: "Hoenn Return",
      status_name: "Completed",
      status_slug: "completed",
      trainer_name: "Brendan",
      updated_at: "2026-02-03T00:00:00Z",
    }),
  ];

  it("derives stable game and status options from the loaded library", () => {
    expect(getPlayBrowseOptions(plays)).toEqual({
      games: [
        { label: "Pokémon Emerald", value: "emerald" },
        { label: "Pokémon HeartGold", value: "heartgold" },
      ],
      statuses: [
        { label: "Completed", value: "completed" },
        { label: "Playing", value: "playing" },
      ],
    });
  });

  it("searches identity fields, filters exact values, and sorts results", () => {
    expect(
      filterAndSortPlays(plays, {
        ...defaultPlayBrowseFilters,
        query: "brendan",
      }).map((play) => play.play_id),
    ).toEqual(["play-2"]);

    expect(
      filterAndSortPlays(plays, {
        ...defaultPlayBrowseFilters,
        game: "heartgold",
        status: "playing",
      }).map((play) => play.play_id),
    ).toEqual(["play-1"]);

    expect(
      filterAndSortPlays(plays, {
        ...defaultPlayBrowseFilters,
        sort: "name",
      }).map((play) => play.play_id),
    ).toEqual(["play-2", "play-1"]);
  });

  it("normalizes unsupported URL values and omits default criteria", () => {
    const options = getPlayBrowseOptions(plays);

    expect(
      getInitialPlayBrowseFilters(
        {
          game: "missing-game",
          q: "  johto  ",
          sort: "unsupported",
          status: "playing",
        },
        options,
      ),
    ).toEqual({
      game: "",
      query: "johto",
      sort: "recent",
      status: "playing",
    });

    expect(
      getPlayBrowseUrlSearchParams({
        ...defaultPlayBrowseFilters,
        query: "  johto  ",
        status: "playing",
      }).toString(),
    ).toBe("q=johto&status=playing");
  });

  it("groups Plays by status in reading order and keeps their order", () => {
    const groups = groupPlaysByStatus([
      buildPlay({
        play_id: "done",
        status_name: "Completed",
        status_slug: "completed",
      }),
      buildPlay({
        play_id: "paused",
        status_name: "Paused",
        status_slug: "paused",
      }),
      buildPlay({
        play_id: "first",
        status_name: "Playing",
        status_slug: "playing",
      }),
      buildPlay({
        play_id: "custom",
        status_name: "Shelved",
        status_slug: "shelved",
      }),
      buildPlay({
        play_id: "second",
        status_name: "Playing",
        status_slug: "playing",
      }),
      buildPlay({ play_id: "unknown", status_name: null, status_slug: null }),
    ]);

    expect(
      groups.map((group) => [
        group.name,
        group.plays.map((play) => play.play_id),
      ]),
    ).toEqual([
      ["Playing", ["first", "second"]],
      ["Paused", ["paused"]],
      ["Completed", ["done"]],
      ["Shelved", ["custom"]],
      ["Other", ["unknown"]],
    ]);
  });
});
