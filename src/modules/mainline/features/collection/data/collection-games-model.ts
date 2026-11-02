import { appRoutes } from "@/config/routes";
import type { GameShelfGame } from "@/modules/reference/types";

/* What the Games view needs of a Play: which game, and whether it's archived. */
export type CollectionGamePlay = {
  archived_at: string | null;
  game_slug: string | null;
  play_id: string | null;
};

export type CollectionGame = {
  game: GameShelfGame;
  /*
   * Where the card leads: the one Play, your Plays of the game when there are
   * several, or the game's Codex page when you haven't played it.
   */
  href: string;
  playCount: number;
};

export type CollectionGameSection = {
  games: CollectionGame[];
  key: string;
  /* "Generation I". */
  label: string;
  /* "1996–1998 · 1 of 4 played". */
  summary: string;
};

export type CollectionGames = {
  /* Every Play you have, archived too: each one played its game. */
  playCount: number;
  playedGameCount: number;
  sections: CollectionGameSection[];
  totalGameCount: number;
};

const getPlayedHref = (
  game: GameShelfGame,
  plays: { archived: boolean; id: string }[],
) => {
  if (plays.length === 1) {
    return appRoutes.mainlinePlay(plays[0].id);
  }

  /* The Plays list keeps archived Plays apart, and filters only the others. */
  return plays.some((play) => !play.archived)
    ? appRoutes.mainlinePlaysGame(game.slug)
    : appRoutes.mainlinePlaysArchived;
};

const formatYearSpan = (games: CollectionGame[]) => {
  const years = games.map(({ game }) => game.releaseYear);
  const first = Math.min(...years);
  const last = Math.max(...years);

  return first === last ? String(first) : `${first}–${last}`;
};

/*
 * Collection's Games: every game in release order, one section per
 * generation, each game with how many of your Plays are of it. The catalogue
 * arrives in release order, and the order is kept.
 */
export const buildCollectionGames = (
  catalogueGames: GameShelfGame[],
  plays: CollectionGamePlay[],
): CollectionGames => {
  const playsByGameSlug = new Map<
    string,
    { archived: boolean; id: string }[]
  >();

  for (const play of plays) {
    if (play.play_id && play.game_slug) {
      const gamePlays = playsByGameSlug.get(play.game_slug) ?? [];

      gamePlays.push({ archived: Boolean(play.archived_at), id: play.play_id });
      playsByGameSlug.set(play.game_slug, gamePlays);
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
        ? getPlayedHref(game, gamePlays)
        : appRoutes.codexVersionGroup(game.versionGroupSlug, game.slug),
      playCount: gamePlays.length,
    });
    sectionsByNumber.set(game.generation.number, section);
  }

  return {
    playCount,
    playedGameCount,
    sections: [...sectionsByNumber.values()].map((section) => ({
      ...section,
      summary: `${formatYearSpan(section.games)} · ${section.games.filter((game) => game.playCount).length} of ${section.games.length} played`,
    })),
    totalGameCount: catalogueGames.length,
  };
};
