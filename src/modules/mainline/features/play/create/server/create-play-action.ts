"use server";

import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import type { CreateMainlinePlayState } from "@/modules/mainline/features/play/create/create-mainline-play-action-state";
import {
  getOptionalText,
  getRequiredText,
  parseOptionalDate,
  parseOptionalNumber,
  parseRequiredNumber,
} from "@/modules/mainline/features/play/create/server/action-validation";
import { getClaimsWithTimeout } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";
import type { GameplayInsert } from "@/shared/types/database-helpers";

export const createMainlinePlay = async (
  _previousState: CreateMainlinePlayState,
  formData: FormData,
): Promise<CreateMainlinePlayState> => {
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
};
