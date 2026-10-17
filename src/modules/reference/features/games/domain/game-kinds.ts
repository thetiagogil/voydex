import type { Game, GameType } from "@/modules/reference/shared/database-types";

/*
 * How the Codex groups games for browsing (v3): the core series (main pairs
 * and their sequels), companions and remakes (enhanced versions and remakes),
 * and the Legends titles.
 */
export const gameKinds = ["core", "companion", "legends"] as const;

export type GameKind = (typeof gameKinds)[number];

export const gameKindLabels: Record<GameKind, string> = {
  companion: "Companions and remakes",
  core: "Core series",
  legends: "Legends",
};

/*
 * The Legends titles are main releases by game type, so they are named here
 * as exact-title exceptions rather than inferred from a name.
 */
const legendsGameSlugs = new Set(["legends-arceus", "legends-za"]);

const companionGameTypeSlugs = new Set(["enhanced", "remake"]);

export const getGameKind = (
  game: Pick<Game, "slug">,
  gameType: Pick<GameType, "slug"> | null,
): GameKind => {
  if (legendsGameSlugs.has(game.slug)) {
    return "legends";
  }

  return gameType && companionGameTypeSlugs.has(gameType.slug)
    ? "companion"
    : "core";
};

export const isGameKind = (value: string): value is GameKind => {
  return (gameKinds as readonly string[]).includes(value);
};
