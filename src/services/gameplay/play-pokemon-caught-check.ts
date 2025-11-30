import { createClient } from "@/lib/supabase/server";

export async function checkPokemonCaught(
  playId: string,
  speciesId: number,
  formId: number,
) {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("pokemon_caught")
    .insert({
      play_id: playId,
      species_id: speciesId,
      form_id: formId,
    })
    .select()
    .single();

  if (error) throw error;
  return data;
}
