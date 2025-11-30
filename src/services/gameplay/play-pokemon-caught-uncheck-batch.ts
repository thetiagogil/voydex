"use server";

import { createClient } from "@/lib/supabase/server";

export async function uncheckPokemonCaughtBatch(
  playId: string,
  speciesIds: number[],
) {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("pokemon_caught")
    .delete()
    .eq("play_id", playId)
    .in("species_id", speciesIds);

  if (error) throw error;
  return { data: { success: true }, error: null };
}
