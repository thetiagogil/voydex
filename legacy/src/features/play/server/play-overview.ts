"use server";

import type { PlayOverview } from "../types";
import { getPlay } from "./play";
import { getPlayCollectiblesSummary } from "./play-collectibles";
import { getPlayCompletion } from "./play-completion";
import { getPlayPokedexSummary } from "./play-pokedex";
import { getPlayTeam } from "./play-team";
import { getPlayTrackingCategories } from "./play-tracking";

// =============================================================================
// PLAY OVERVIEW — single fetch for the entire Play page
// =============================================================================

export const getPlayOverview = async (playId: string) => {
  const playResult = await getPlay(playId);
  if (playResult.error || !playResult.data) {
    return { data: null, error: playResult.error ?? "Play not found" };
  }

  const [
    teamResult,
    trackingResult,
    collectiblesSummaryResult,
    completionResult,
    pokedexSummaryResult,
  ] = await Promise.all([
    getPlayTeam(playId),
    getPlayTrackingCategories(playId),
    getPlayCollectiblesSummary(playId),
    getPlayCompletion(playId),
    getPlayPokedexSummary(playId),
  ]);

  const firstError =
    teamResult.error ||
    trackingResult.error ||
    collectiblesSummaryResult.error ||
    completionResult.error ||
    pokedexSummaryResult.error;

  if (firstError) {
    return { data: null, error: firstError };
  }

  return {
    data: {
      play: playResult.data,
      pokemonTeam: teamResult.data ?? [],
      storySummary: trackingResult.data ?? [],
      collectiblesSummary: collectiblesSummaryResult.data ?? [],
      pokedexSummary: pokedexSummaryResult.data ?? [],
      completion: completionResult.data,
    } as PlayOverview,
    error: null,
  };
};
