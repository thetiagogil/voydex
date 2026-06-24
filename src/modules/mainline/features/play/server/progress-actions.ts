"use server";

import { getAuthedSupabaseActionClient } from "@/modules/mainline/features/play/server/action-auth";
import { revalidateMainlinePlay } from "@/modules/mainline/features/play/server/action-revalidation";
import type {
  CompleteMainlinePlayMilestoneInput,
  MainlineActionResult,
  SetMainlineCollectibleEntryProgressInput,
  SetMainlinePokedexSpeciesProgressInput,
} from "@/modules/mainline/features/play/server/action-types";
import {
  isValidPositiveInteger,
  isValidUuid,
} from "@/modules/mainline/features/play/server/action-validation";

export const completeMainlinePlayMilestone = async ({
  milestoneId,
  playId,
}: CompleteMainlinePlayMilestoneInput): Promise<MainlineActionResult> => {
  if (!isValidUuid(playId) || !isValidPositiveInteger(milestoneId)) {
    return { error: "Choose a valid milestone.", ok: false };
  }

  const { error: authError, supabase } = await getAuthedSupabaseActionClient();

  if (authError) {
    return { error: authError, ok: false };
  }

  const result = await supabase
    .schema("gameplay")
    .rpc("complete_mainline_play_milestone", {
      p_create_event: true,
      p_include_team_snapshot: false,
      p_milestone_id: milestoneId,
      p_play_id: playId,
    });

  if (result.error) {
    return { error: "Unable to complete this milestone.", ok: false };
  }

  revalidateMainlinePlay(playId);
  return { ok: true };
};

export const setMainlinePokedexSpeciesProgress = async ({
  isCaught,
  isSeen,
  playId,
  speciesId,
}: SetMainlinePokedexSpeciesProgressInput): Promise<MainlineActionResult> => {
  if (!isValidUuid(playId) || !isValidPositiveInteger(speciesId)) {
    return { error: "Choose a valid Pokédex entry.", ok: false };
  }

  const { error: authError, supabase } = await getAuthedSupabaseActionClient();

  if (authError) {
    return { error: authError, ok: false };
  }

  const normalizedSeen = isSeen || isCaught;
  const result = await supabase
    .schema("gameplay")
    .rpc("set_mainline_play_pokedex_species_progress", {
      p_is_caught: isCaught,
      p_is_seen: normalizedSeen,
      p_play_id: playId,
      p_species_id: speciesId,
    });

  if (result.error) {
    return { error: "Unable to update this Pokédex entry.", ok: false };
  }

  revalidateMainlinePlay(playId);
  return { ok: true };
};

export const setMainlineCollectibleEntryProgress = async ({
  collectibleEntryId,
  isCollected,
  playId,
}: SetMainlineCollectibleEntryProgressInput): Promise<MainlineActionResult> => {
  if (!isValidUuid(playId) || !isValidPositiveInteger(collectibleEntryId)) {
    return { error: "Choose a valid collectible entry.", ok: false };
  }

  const { error: authError, supabase } = await getAuthedSupabaseActionClient();

  if (authError) {
    return { error: authError, ok: false };
  }

  const result = await supabase
    .schema("gameplay")
    .rpc("set_mainline_play_collectible_entry_progress", {
      p_collectible_entry_id: collectibleEntryId,
      p_is_collected: isCollected,
      p_play_id: playId,
    });

  if (result.error) {
    return { error: "Unable to update this collectible.", ok: false };
  }

  revalidateMainlinePlay(playId);
  return { ok: true };
};
