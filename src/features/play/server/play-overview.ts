"use server";

import { getPlay } from "./play";
import { getPlayCollectibles } from "./play-collectibles";
import { getPlayCompletion } from "./play-completion";
import { getAvailableDlcs, getPlayDlcs } from "./play-dlc";
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
    collectiblesResult,
    completionResult,
    playDlcsResult,
    availableDlcsResult,
  ] = await Promise.all([
    getPlayTeam(playId),
    getPlayTrackingCategories(playId),
    getPlayCollectibles(playId),
    getPlayCompletion(playId),
    getPlayDlcs(playId),
    getAvailableDlcs(versionGroupId),
  ]);

  // Build collectibles summary (without entries)
  const collectiblesSummary = (collectiblesResult.data ?? []).map((c) => ({
    id: c.id,
    slug: c.slug,
    name: c.name,
    collectibleType: c.collectibleType,
    totalCount: c.totalCount,
    spriteUrl: c.spriteUrl,
    collectedCount: c.collectedCount,
    totalEntries: c.entries.length,
    versionGroupId: c.versionGroupId,
    versionGroupName: c.versionGroupName,
    isDlc: c.isDlc,
  }));

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
      trackingCategories: trackingResult.data ?? [],
      collectiblesSummary,
      completion: completionResult.data ?? {
        percentage: 0,
        isFullyComplete: false,
      },
    },
    error: null,
  };
};
