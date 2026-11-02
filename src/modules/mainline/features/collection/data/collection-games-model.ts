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
  /* Every Play of it, archived too, newest first as the summary rows come. */
  plays: CollectionGamePlay[];
};

export type CollectionGames = {
  /* Only the games you've played, most Plays first, then release order. */
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
 * Collection's Games: only the games you've played (as Collection's Pokémon
 * are only the ones that joined you), the ones with the most Plays leading,
 * then the catalogue's release order, each with your Plays of it.
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

  const played = catalogueGames.flatMap((game, index) => {
    const gamePlays = playsByGameSlug.get(game.slug) ?? [];

    return gamePlays.length
      ? [{ entry: { game, plays: gamePlays }, index }]
      : [];
  });

  return {
    games: played
      .toSorted(
        (left, right) =>
          right.entry.plays.length - left.entry.plays.length ||
          left.index - right.index,
      )
      .map(({ entry }) => entry),
    playCount: played.reduce(
      (total, { entry }) => total + entry.plays.length,
      0,
    ),
    playedGameCount: played.length,
    totalGameCount: catalogueGames.length,
  };
};
