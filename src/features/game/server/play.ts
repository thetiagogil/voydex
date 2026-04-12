"use server";

import { createClient } from "@/lib/supabase/server";

export const createPlay = async (gameId: number, name?: string) => {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { data: null, error: { message: "Not authenticated" } };

  // Default status_id = 1 (active) is set by the database default
  const { data, error } = await supabase
    .schema("gameplay")
    .from("plays")
    .insert({
      user_id: user.id,
      game_id: gameId,
      name: name || null,
    })
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};
