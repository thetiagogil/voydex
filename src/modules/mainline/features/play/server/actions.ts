"use server";

import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import type { CreateMainlinePlayState } from "@/modules/mainline/features/play/create-mainline-play-action-state";
import { getClaimsWithTimeout } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";
import type { GameplayInsert } from "@/shared/types/database-helpers";

export type MainlineActionResult =
  | {
      ok: true;
    }
  | {
      error: string;
      ok: false;
    };

type CompleteMainlinePlayMilestoneInput = {
  milestoneId: number;
  playId: string;
};

type SetMainlinePokedexSpeciesProgressInput = {
  isCaught: boolean;
  isSeen: boolean;
  playId: string;
  speciesId: number;
};

type SetMainlineCollectibleEntryProgressInput = {
  collectibleEntryId: number;
  isCollected: boolean;
  playId: string;
};

const UUID_PATTERN =
  /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

function getRequiredText(formData: FormData, key: string) {
  const value = formData.get(key);

  if (typeof value !== "string") {
    return "";
  }

  return value.trim();
}

function getOptionalText(formData: FormData, key: string) {
  const value = getRequiredText(formData, key);

  return value.length > 0 ? value : null;
}

function parseOptionalDate(formData: FormData, key: string) {
  const value = getRequiredText(formData, key);

  if (!value) {
    return { value: null };
  }

  if (!/^\d{4}-\d{2}-\d{2}$/.test(value)) {
    return { error: "Use a valid date." };
  }

  return { value };
}

function parseOptionalNumber(formData: FormData, key: string) {
  const value = getRequiredText(formData, key);

  if (!value) {
    return { value: null };
  }

  const numberValue = Number(value);

  if (!Number.isInteger(numberValue)) {
    return { error: "Choose a valid option." };
  }

  return { value: numberValue };
}

function parseRequiredNumber(formData: FormData, key: string) {
  const parsed = parseOptionalNumber(formData, key);

  if (parsed.error) {
    return parsed;
  }

  if (!parsed.value) {
    return { error: "Choose a valid option." };
  }

  return parsed;
}

function isValidUuid(value: string) {
  return UUID_PATTERN.test(value);
}

function isValidPositiveInteger(value: number) {
  return Number.isInteger(value) && value > 0;
}

function revalidateMainlinePlay(playId: string) {
  revalidatePath(appRoutes.mainlineDashboard);
  revalidatePath(appRoutes.mainlinePlays);
  revalidatePath(appRoutes.mainlinePlay(playId));
  revalidatePath(appRoutes.mainlinePlayProgress(playId));
  revalidatePath(appRoutes.mainlinePlayStory(playId));
  revalidatePath(appRoutes.mainlinePlayPokedex(playId));
  revalidatePath(appRoutes.mainlinePlayCollectibles(playId));
}

async function getAuthedSupabaseActionClient() {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    return {
      error: "Your session expired. Log in again before updating this play.",
      supabase,
    };
  }

  return { supabase };
}

export async function completeMainlinePlayMilestone({
  milestoneId,
  playId,
}: CompleteMainlinePlayMilestoneInput): Promise<MainlineActionResult> {
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
}

export async function setMainlinePokedexSpeciesProgress({
  isCaught,
  isSeen,
  playId,
  speciesId,
}: SetMainlinePokedexSpeciesProgressInput): Promise<MainlineActionResult> {
  if (!isValidUuid(playId) || !isValidPositiveInteger(speciesId)) {
    return { error: "Choose a valid Pokedex entry.", ok: false };
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
    return { error: "Unable to update this Pokedex entry.", ok: false };
  }

  revalidateMainlinePlay(playId);

  return { ok: true };
}

export async function setMainlineCollectibleEntryProgress({
  collectibleEntryId,
  isCollected,
  playId,
}: SetMainlineCollectibleEntryProgressInput): Promise<MainlineActionResult> {
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
}

export async function createMainlinePlay(
  _previousState: CreateMainlinePlayState,
  formData: FormData,
): Promise<CreateMainlinePlayState> {
  const name = getRequiredText(formData, "name");
  const gameId = parseRequiredNumber(formData, "gameId");
  const statusId = parseOptionalNumber(formData, "statusId");
  const startedOn = parseOptionalDate(formData, "startedOn");
  const fieldErrors: CreateMainlinePlayState["fieldErrors"] = {};

  if (!name) {
    fieldErrors.name = "Play name is required.";
  }

  if (gameId.error) {
    fieldErrors.gameId = gameId.error;
  }

  if (statusId.error) {
    fieldErrors.statusId = statusId.error;
  }

  if (startedOn.error) {
    fieldErrors.startedOn = startedOn.error;
  }

  if (Object.keys(fieldErrors).length > 0) {
    return { fieldErrors };
  }

  const selectedGameId = gameId.value;
  const selectedStatusId =
    typeof statusId.value === "number" ? statusId.value : null;
  const selectedStartedOn =
    typeof startedOn.value === "string" ? startedOn.value : null;

  if (typeof selectedGameId !== "number") {
    return { fieldErrors: { gameId: "Choose a valid game." } };
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;
  const email =
    typeof claimsResult?.data?.claims?.email === "string"
      ? claimsResult.data.claims.email
      : null;

  if (!userId) {
    return {
      formError: "Your session expired. Log in again before creating a play.",
    };
  }

  const profileResult = await supabase.from("profiles").upsert(
    {
      display_name: email,
      id: userId,
    },
    { ignoreDuplicates: true, onConflict: "id" },
  );

  if (profileResult.error) {
    return { formError: "Unable to initialize your account profile." };
  }

  const gameResult = await supabase
    .schema("reference")
    .from("games")
    .select("id,name,version_group_id")
    .eq("id", selectedGameId)
    .maybeSingle();

  if (gameResult.error) {
    return { formError: "Unable to verify the selected game." };
  }

  if (!gameResult.data) {
    return { fieldErrors: { gameId: "Choose a valid game." } };
  }

  if (selectedStatusId) {
    const statusResult = await supabase
      .schema("gameplay")
      .from("mainline_play_statuses")
      .select("id")
      .eq("id", selectedStatusId)
      .maybeSingle();

    if (statusResult.error) {
      return { formError: "Unable to verify the selected status." };
    }

    if (!statusResult.data) {
      return { fieldErrors: { statusId: "Choose a valid status." } };
    }
  }

  const playInsert: GameplayInsert<"mainline_plays"> = {
    game_id: gameResult.data.id,
    name,
    notes: getOptionalText(formData, "notes"),
    started_on: selectedStartedOn,
    trainer_name: getOptionalText(formData, "trainerName"),
    user_id: userId,
    version_group_id: gameResult.data.version_group_id,
  };

  if (selectedStatusId) {
    playInsert.status_id = selectedStatusId;
  }

  const playResult = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .insert(playInsert)
    .select("id")
    .single();

  if (playResult.error || !playResult.data) {
    return { formError: "Unable to create this play." };
  }

  const settingsResult = await supabase
    .schema("gameplay")
    .from("mainline_play_settings")
    .upsert({ play_id: playResult.data.id }, { onConflict: "play_id" });

  if (settingsResult.error) {
    await supabase
      .schema("gameplay")
      .from("mainline_plays")
      .delete()
      .eq("id", playResult.data.id)
      .eq("user_id", userId);

    return { formError: "Unable to initialize settings for this play." };
  }

  revalidatePath(appRoutes.mainlineDashboard);
  revalidatePath(appRoutes.mainlinePlays);
  redirect(appRoutes.mainlinePlays);
}
