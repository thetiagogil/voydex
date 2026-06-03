"use server";

import { createClient } from "@/lib/supabase/server";
import { SupabaseClient, User } from "@supabase/supabase-js";

type AuthResult<T> = {
  data: T | null;
  error: { message: string } | null;
};

/**
 * Wrapper utility for authenticated service calls.
 * Handles user authentication check and provides supabase client and user to the callback.
 *
 * @example
 * export const getMyData = async () => {
 *   return withAuth(async (supabase, user) => {
 *     const { data, error } = await supabase
 *       .from("my_table")
 *       .select("*")
 *       .eq("user_id", user.id);
 *     return { data, error };
 *   });
 * };
 */
export const withAuth = async <T>(
  fn: (supabase: SupabaseClient, user: User) => Promise<AuthResult<T>>,
): Promise<AuthResult<T>> => {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return { data: null, error: { message: "Not authenticated" } };
  }

  return fn(supabase, user);
};
