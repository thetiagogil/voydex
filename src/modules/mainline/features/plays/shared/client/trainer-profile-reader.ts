import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

export type TrainerNames = {
  /* The name Home greets. Null when none is set. */
  displayName: string | null;
  /*
   * The trainer name a new Play starts with: the default trainer name from
   * Settings, or your display name while none is set. Null when neither is.
   */
  trainerName: string | null;
};

/*
 * The trainer's names. A display name that is only the account's email is
 * treated as none (never greet anyone by their email); a failed read throws.
 */
export const readTrainerNames = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<TrainerNames> => {
  const [{ data, error }, claimsResult] = await Promise.all([
    supabase
      .schema("public")
      .from("profiles")
      .select("default_trainer_name, display_name")
      .eq("id", userId)
      .maybeSingle(),
    getClaimsWithTimeout(supabase),
  ]);

  if (error) {
    throw new Error("Unable to load your trainer name.");
  }

  const name = data?.display_name?.trim() || null;
  const email = claimsResult?.data?.claims?.email;
  const displayName =
    name &&
    typeof email === "string" &&
    name.toLowerCase() === email.trim().toLowerCase()
      ? null
      : name;

  return {
    displayName,
    trainerName: data?.default_trainer_name?.trim() || displayName,
  };
};
