import { appRoutes } from "@/config/routes";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import { formatPlayMinutes } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import {
  toTrainerPlay,
  type TrainerPlay,
} from "@/modules/mainline/shared/data/trainer-pokemon-model";
import type { GameShelfGame } from "@/modules/reference/types";

/* One of your Plays of a game, as the game's sheet lists it. */
export type CollectionGamePlay = {
  archived: boolean;
  /* "Ash · 12h 30m": the trainer, and the playtime when there is one. */
  detail: string;
  play: TrainerPlay;
};

export type CollectionGame = {
  game: GameShelfGame;
  /* The game's Codex page, for a game you haven't played; null once you have. */
  href: string | null;
  /* Every Play of it, archived too, newest first as the summary rows come. */
  plays: CollectionGamePlay[];
};

export type CollectionGameSection = {
  games: CollectionGame[];
  key: string;
  /* "Generation I". */
  label: string;
  /* "1996–1998 · 1 of 3 played". */
  summary: string;
};

export type CollectionGames = {
  /* Every Play you have, archived too: each one played its game. */
  playCount: number;
  playedGameCount: number;
  sections: CollectionGameSection[];
  totalGameCount: number;
};

const toCollectionGamePlay = (
  row: MainlinePlaySummary,
): CollectionGamePlay | null => {
  const play = toTrainerPlay(row);

  if (!play) {
    return null;
  }

  return {
    archived: Boolean(row.archived_at),
    detail: [
      row.trainer_name,
      row.playtime_minutes ? formatPlayMinutes(row.playtime_minutes) : null,
    ]
      .filter(Boolean)
      .join(" · "),
    play,
  };
};

const formatYearSpan = (games: CollectionGame[]) => {
  const years = games.map(({ game }) => game.releaseYear);
  const first = Math.min(...years);
  const last = Math.max(...years);

  return first === last ? String(first) : `${first}–${last}`;
};

/*
 * Collection's Games: every game in release order, one section per
 * generation, each game with your Plays of it. The catalogue arrives in
 * release order, and the order is kept.
 */
export const buildCollectionGames = (
  catalogueGames: GameShelfGame[],
  plays: MainlinePlaySummary[],
): CollectionGames => {
  const playsByGameSlug = new Map<string, CollectionGamePlay[]>();

  for (const row of plays) {
    const gamePlay = row.game_slug ? toCollectionGamePlay(row) : null;

    if (row.game_slug && gamePlay) {
      const gamePlays = playsByGameSlug.get(row.game_slug) ?? [];

      gamePlays.push(gamePlay);
      playsByGameSlug.set(row.game_slug, gamePlays);
    }
  }

  const sectionsByNumber = new Map<number, CollectionGameSection>();
  let playCount = 0;
  let playedGameCount = 0;

  for (const game of catalogueGames) {
    const gamePlays = playsByGameSlug.get(game.slug) ?? [];
    const section = sectionsByNumber.get(game.generation.number) ?? {
      games: [],
      key: `generation-${game.generation.number}`,
      label: game.generation.name,
      summary: "",
    };

    playCount += gamePlays.length;
    playedGameCount += gamePlays.length ? 1 : 0;
    section.games.push({
      game,
      href: gamePlays.length
        ? null
        : appRoutes.codexVersionGroup(game.versionGroupSlug, game.slug),
      plays: gamePlays,
    });
    sectionsByNumber.set(game.generation.number, section);
  }

  return {
    playCount,
    playedGameCount,
    sections: [...sectionsByNumber.values()].map((section) => ({
      ...section,
      summary: `${formatYearSpan(section.games)} · ${section.games.filter((entry) => entry.plays.length).length} of ${section.games.length} played`,
    })),
    totalGameCount: catalogueGames.length,
  };
};
