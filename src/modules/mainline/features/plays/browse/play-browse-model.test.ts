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
    generation_id: 4,
    generation_name: "Generation IV",
    generation_slug: "generation-iv",
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
      generation_id: 3,
      generation_name: "Generation III",
      generation_slug: "generation-iii",
      play_id: "play-2",
      play_name: "Hoenn Return",
      status_name: "Completed",
      status_slug: "completed",
      trainer_name: "Brendan",
      updated_at: "2026-02-03T00:00:00Z",
    }),
  ];

  it("derives game options by name and generation options in order", () => {
    expect(
      getPlayBrowseOptions([
        ...plays,
        buildPlay({
          generation_id: 2,
          generation_name: "Generation II",
          generation_slug: "generation-ii",
          play_id: "play-3",
        }),
      ]),
    ).toEqual({
      games: [
        {
          description: "Generation III",
          label: "Pokémon Emerald",
          value: "emerald",
        },
        {
          description: "Generation IV",
          label: "Pokémon HeartGold",
          value: "heartgold",
        },
      ],
      generations: [
        { label: "Generation II", value: "generation-ii" },
        { label: "Generation III", value: "generation-iii" },
        { label: "Generation IV", value: "generation-iv" },
      ],
    });
  });

  it("puts each game's generation and region, and each generation's region, under it", () => {
    expect(
      getPlayBrowseOptions([{ ...plays[0], regionName: "Johto" }]),
    ).toEqual({
      games: [
        {
          description: "Generation IV · Johto",
          label: "Pokémon HeartGold",
          value: "heartgold",
        },
      ],
      generations: [
        {
          description: "Johto",
          label: "Generation IV",
          value: "generation-iv",
        },
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
        generation: "generation-iv",
      }).map((play) => play.play_id),
    ).toEqual(["play-1"]);

    expect(
      filterAndSortPlays(plays, {
        ...defaultPlayBrowseFilters,
        generation: "generation-iii",
      }).map((play) => play.play_id),
    ).toEqual(["play-2"]);

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
          generation: "generation-iv",
          q: "  johto  ",
          sort: "unsupported",
        },
        options,
      ),
    ).toEqual({
      game: "",
      generation: "generation-iv",
      query: "johto",
      sort: "recent",
    });

    expect(
      getPlayBrowseUrlSearchParams({
        ...defaultPlayBrowseFilters,
        generation: "generation-iv",
        query: "  johto  ",
      }).toString(),
    ).toBe("q=johto&generation=generation-iv");
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
