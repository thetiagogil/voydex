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
  /* New Play with the game picked, for a game you haven't played; null once you have. */
  href: string | null;
  /* Every Play of it, archived too, newest first as the summary rows come. */
  plays: CollectionGamePlay[];
};

export type CollectionGames = {
  /* The games you've played first, most Plays first, then the rest in release order. */
  games: CollectionGame[];
  /* Every Play you have, archived too: each one played its game. */
  playCount: number;
  playedGameCount: number;
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

/*
 * Collection's Games: the games you've played first, the ones with the most
 * Plays leading, then every other game in release order (the catalogue's),
 * each with your Plays of it.
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

  const games = catalogueGames.map((game, index) => {
    const gamePlays = playsByGameSlug.get(game.slug) ?? [];

    return {
      entry: {
        game,
        href: gamePlays.length ? null : appRoutes.mainlineNewPlay(game.slug),
        plays: gamePlays,
      },
      index,
    };
  });
  const played = games.filter(({ entry }) => entry.plays.length);

  return {
    games: [
      ...played
        .toSorted(
          (left, right) =>
            right.entry.plays.length - left.entry.plays.length ||
            left.index - right.index,
        )
        .map(({ entry }) => entry),
      ...games
        .filter(({ entry }) => !entry.plays.length)
        .map(({ entry }) => entry),
    ],
    playCount: played.reduce(
      (total, { entry }) => total + entry.plays.length,
      0,
    ),
    playedGameCount: played.length,
    totalGameCount: catalogueGames.length,
  };
};
