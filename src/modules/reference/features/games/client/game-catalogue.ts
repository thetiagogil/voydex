"use client";

import type { GameCatalogue } from "@/modules/reference/features/games/types";
import { getPrebuiltDataPath } from "@/platform/prebuilt-data/prebuilt-data";
import {
  fetchPrebuiltData,
  usePrebuiltData,
} from "@/platform/prebuilt-data/use-prebuilt-data";

/*
 * Every game, its first partners, expansions, badge count, collectibles and
 * every type with its generation (Monotype's pick), for the game pickers
 * (Start a Play, New Play, Home's first Play, the Codex's game switch). One
 * pre-built file (`npm run codex:build`), read in the browser.
 */
export const gameCatalogueFile = getPrebuiltDataPath("game-catalogue");

export const fetchGameCatalogue = async (): Promise<GameCatalogue> => {
  const catalogue = await fetchPrebuiltData<GameCatalogue>(gameCatalogueFile);

  if (!catalogue) {
    throw new Error("The games list is missing; run npm run codex:build.");
  }

  return catalogue;
};

/* The catalogue for a page: loading, ready, or missing or failed. */
export const useGameCatalogue = () =>
  usePrebuiltData<GameCatalogue>(gameCatalogueFile);
