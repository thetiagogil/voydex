"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { parseDisplayName } from "@/features/settings/utils/display-name";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type ProfileFormState = {
  message: string | null;
  /* The name as saved, so the form can take it as its new starting point. */
  savedName?: string | null;
  status: "error" | "idle" | "success";
};

/*
 * Saves your display name (Settings' trainer card and Welcome). Clearing it
 * is allowed: the bars then show your email. Every page's bar shows the
 * name, so the whole app is revalidated.
 */
export const saveDisplayNameAction = async (
  _previousState: ProfileFormState,
  formData: FormData,
): Promise<ProfileFormState> => {
  const parsed = parseDisplayName(formData.get("displayName"));

  if (!parsed.ok) {
    return { message: parsed.message, status: "error" };
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    return { message: "Log in again to save your name.", status: "error" };
  }

  const { data, error } = await supabase
    .from("profiles")
    .update({ display_name: parsed.value })
    .eq("id", userId)
    .select("display_name")
    .maybeSingle();

  if (error || !data) {
    return {
      message: "Your name couldn't be saved. Try again in a moment.",
      status: "error",
    };
  }

  revalidatePath(appRoutes.home, "layout");

  return {
    message: parsed.value ? "Name saved" : "Name cleared",
    savedName: data.display_name,
    status: "success",
  };
};
