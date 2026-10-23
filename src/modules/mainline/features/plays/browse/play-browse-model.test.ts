import { describe, expect, it } from "vitest";

import {
  defaultPlayBrowseFilters,
  filterAndSortPlays,
  getInitialPlayBrowseFilters,
  getPlayBrowseOptions,
  getPlayBrowseUrlSearchParams,
  hasActivePlayBrowseFilters,
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
      statuses: [
        { label: "Playing", value: "playing" },
        { label: "Completed", value: "completed" },
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
      statuses: [{ label: "Playing", value: "playing" }],
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

  it("orders status options the way a library reads, unknown ones last", () => {
    const statuses = getPlayBrowseOptions([
      buildPlay({ status_name: "Shelved", status_slug: "shelved" }),
      buildPlay({ status_name: "Abandoned", status_slug: "abandoned" }),
      buildPlay({ status_name: "Paused", status_slug: "paused" }),
      buildPlay({ status_name: "Not started", status_slug: "not_started" }),
      buildPlay({ status_name: "Completed", status_slug: "completed" }),
      buildPlay({ status_name: "Playing", status_slug: "playing" }),
      buildPlay({ status_name: null, status_slug: null }),
    ]).statuses.map((option) => option.value);

    expect(statuses).toEqual([
      "playing",
      "not_started",
      "paused",
      "completed",
      "abandoned",
      "shelved",
    ]);
  });

  it("filters by status and keeps one flat list", () => {
    expect(
      filterAndSortPlays(plays, {
        ...defaultPlayBrowseFilters,
        status: "completed",
      }).map((play) => play.play_id),
    ).toEqual(["play-2"]);

    expect(
      filterAndSortPlays(plays, defaultPlayBrowseFilters).map(
        (play) => play.play_id,
      ),
    ).toEqual(["play-2", "play-1"]);
  });

  it("counts a status as an active filter and puts it in the URL", () => {
    expect(hasActivePlayBrowseFilters(defaultPlayBrowseFilters)).toBe(false);
    expect(
      hasActivePlayBrowseFilters({
        ...defaultPlayBrowseFilters,
        status: "playing",
      }),
    ).toBe(true);
    expect(
      getPlayBrowseUrlSearchParams({
        ...defaultPlayBrowseFilters,
        status: "playing",
      }).toString(),
    ).toBe("status=playing");
  });

  it("drops a status from the URL that no Play has", () => {
    const options = getPlayBrowseOptions(plays);

    expect(
      getInitialPlayBrowseFilters({ status: "completed" }, options).status,
    ).toBe("completed");
    expect(
      getInitialPlayBrowseFilters({ status: "shelved" }, options).status,
    ).toBe("");
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
      status: "",
    });

    expect(
      getPlayBrowseUrlSearchParams({
        ...defaultPlayBrowseFilters,
        generation: "generation-iv",
        query: "  johto  ",
      }).toString(),
    ).toBe("q=johto&generation=generation-iv");
  });
});
