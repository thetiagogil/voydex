import { createClient } from "@/lib/supabase/server";

export async function uncheckPokemonCaught(
  playId: string,
  speciesId: number,
  formId: number,
) {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("pokemon_caught")
    .delete()
    .eq("play_id", playId)
    .eq("species_id", speciesId);

  if (error) throw error;
  return { success: true };
}
