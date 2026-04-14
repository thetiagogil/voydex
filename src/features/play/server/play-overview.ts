"use server";

import { getPlay } from "./play";
import { getPlayCollectiblesSummary } from "./play-collectibles";
import { getPlayCompletion } from "./play-completion";
import { getAvailableDlcs, getPlayDlcs } from "./play-dlc";
import { getPlayPokedexSummary } from "./play-pokedex";
import { getPlayTeam } from "./play-team";
import { getPlayTrackingCategories } from "./play-tracking";

// =============================================================================
// PLAY OVERVIEW — single fetch for the entire Play page
// =============================================================================

export const getPlayOverview = async (playId: string) => {
  // First fetch the play to get versionGroupId for available DLCs
  const playResult = await getPlay(playId);
  if (playResult.error || !playResult.data) {
    return { data: null, error: playResult.error ?? "Play not found" };
  }

  const play = playResult.data;
  const versionGroupId = play.game.versionGroupId;

  // Fetch all remaining slices in parallel
  const [
    teamResult,
    trackingResult,
    collectiblesSummaryResult,
    completionResult,
    playDlcsResult,
    availableDlcsResult,
    pokedexSummaryResult,
  ] = await Promise.all([
    getPlayTeam(playId),
    getPlayTrackingCategories(playId),
    getPlayCollectiblesSummary(playId),
    getPlayCompletion(playId),
    getPlayDlcs(playId),
    getAvailableDlcs(versionGroupId),
    getPlayPokedexSummary(playId),
  ]);

  // Attach DLC data to the play object
  const playWithDlcs = {
    ...play,
    selectedDlcs: playDlcsResult.data ?? [],
    game: {
      ...play.game,
      availableDlcs: availableDlcsResult.data ?? [],
    },
  };

  return {
    data: {
      play: playWithDlcs,
      pokemonTeam: teamResult.data ?? [],
      storySummary: trackingResult.data ?? [],
      collectiblesSummary: collectiblesSummaryResult.data ?? [],
      pokedexSummary: pokedexSummaryResult.data ?? [],
      completion: completionResult.data ?? {
        percentage: 0,
        isFullyComplete: false,
      },
    },
    error: null,
  };
};
