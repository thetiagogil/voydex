import { createClient } from "@/lib/supabase/server";

export async function uncheckPlayPokemonCaught(
  playId: string,
  speciesId: number,
  formId: number = 0,
) {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("pokemon_caught")
    .delete()
    .eq("play_id", playId)
    .eq("species_id", speciesId)
    .eq("form_id", formId);

  if (error) throw error;
  return { success: true };
}

export async function uncheckPlayPokemonCaughtBatch(
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
