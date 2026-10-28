"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { isProfileIconForm } from "@/features/settings/server/profile-icon-choices-query";
import {
  parseDisplayName,
  parseTrainerName,
} from "@/features/settings/utils/display-name";
import { parseProfileIconInput } from "@/features/settings/utils/profile-icon-input";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import type { TablesUpdate } from "@/shared/types/database.types";

export type SavedProfile = {
  defaultTrainerName: string | null;
  displayName: string | null;
  iconFormId: number | null;
};

export type ProfileFormState = {
  message: string | null;
  /* The profile as saved, so the form can take it as its new starting point. */
  saved?: SavedProfile;
  status: "error" | "idle" | "success";
};

type ProfileUpdate = TablesUpdate<"profiles">;

const SAVE_FAILED = "Your profile couldn't be saved. Try again in a moment.";

/*
 * Updates your own profile row and returns what it holds now. Every page's
 * bar shows the name and icon, so the whole app is revalidated.
 */
const updateOwnProfile = async (
  update: ProfileUpdate,
): Promise<
  { message: string; ok: false } | { ok: true; saved: SavedProfile }
> => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    return { message: "Log in again to save your profile.", ok: false };
  }

  if (update.icon_form_id) {
    const isOffered = await isProfileIconForm(
      supabase,
      update.icon_form_id,
    ).catch(() => null);

    if (isOffered === null) {
      return { message: SAVE_FAILED, ok: false };
    }

    if (!isOffered) {
      return { message: "That icon isn't one you can pick.", ok: false };
    }
  }

  const { data, error } = await supabase
    .from("profiles")
    .update(update)
    .eq("id", userId)
    .select("default_trainer_name, display_name, icon_form_id")
    .maybeSingle();

  if (error || !data) {
    return { message: SAVE_FAILED, ok: false };
  }

  revalidatePath(appRoutes.home, "layout");

  return {
    ok: true,
    saved: {
      defaultTrainerName: data.default_trainer_name,
      displayName: data.display_name,
      iconFormId: data.icon_form_id,
    },
  };
};

/*
 * Saves Settings' trainer card: your display name, the default trainer name
 * of a new Play and your Pokémon icon. Clearing a name is allowed: the bars
 * then show your email and New Play falls back to your display name.
 */
export const saveProfileAction = async (
  _previousState: ProfileFormState,
  formData: FormData,
): Promise<ProfileFormState> => {
  const displayName = parseDisplayName(formData.get("displayName"));
  const trainerName = parseTrainerName(formData.get("defaultTrainerName"));
  const icon = parseProfileIconInput(formData.get("iconFormId"));

  if (!displayName.ok) {
    return { message: displayName.message, status: "error" };
  }

  if (!trainerName.ok) {
    return { message: trainerName.message, status: "error" };
  }

  if (!icon.ok) {
    return { message: icon.message, status: "error" };
  }

  const result = await updateOwnProfile({
    default_trainer_name: trainerName.value,
    display_name: displayName.value,
    icon_form_id: icon.formId,
  });

  return result.ok
    ? { message: "Profile saved", saved: result.saved, status: "success" }
    : { message: result.message, status: "error" };
};

/*
 * Finishes Welcome with Continue: saves the name and icon you gave (an empty
 * name leaves yours as it was) and marks Welcome done, so it never opens
 * again.
 */
export const finishWelcomeAction = async (
  _previousState: ProfileFormState,
  formData: FormData,
): Promise<ProfileFormState> => {
  const displayName = parseDisplayName(formData.get("displayName"));
  const icon = parseProfileIconInput(formData.get("iconFormId"));

  if (!displayName.ok) {
    return { message: displayName.message, status: "error" };
  }

  if (!icon.ok) {
    return { message: icon.message, status: "error" };
  }

  const result = await updateOwnProfile({
    ...(displayName.value ? { display_name: displayName.value } : {}),
    ...(icon.formId ? { icon_form_id: icon.formId } : {}),
    welcome_completed_at: new Date().toISOString(),
  });

  return result.ok
    ? { message: null, saved: result.saved, status: "success" }
    : { message: result.message, status: "error" };
};

/* Skips Welcome: marks it done without changing anything else. */
export const skipWelcomeAction = async (): Promise<ProfileFormState> => {
  const result = await updateOwnProfile({
    welcome_completed_at: new Date().toISOString(),
  });

  return result.ok
    ? { message: null, saved: result.saved, status: "success" }
    : { message: result.message, status: "error" };
};
