import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The trainer's display name, the default trainer name of a new Play and the
 * name Home greets. Null when none is set, and when it is only the account's
 * email (never greet anyone by their email); a failed read throws.
 */
export const readTrainerDisplayName = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<string | null> => {
  const [{ data, error }, claimsResult] = await Promise.all([
    supabase
      .schema("public")
      .from("profiles")
      .select("display_name")
      .eq("id", userId)
      .maybeSingle(),
    getClaimsWithTimeout(supabase),
  ]);

  if (error) {
    throw new Error("Unable to load your trainer name.");
  }

  const name = data?.display_name?.trim() || null;
  const email = claimsResult?.data?.claims?.email;

  return name &&
    typeof email === "string" &&
    name.toLowerCase() === email.trim().toLowerCase()
    ? null
    : name;
};
