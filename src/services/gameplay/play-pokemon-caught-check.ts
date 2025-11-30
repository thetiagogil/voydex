import { createClient } from "@/lib/supabase/server";

export async function checkPlayPokemonCaught(
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

export async function checkPlayPokemonCaughtBatch(
  playId: string,
  pokemon: Array<{ speciesId: number; formId: number }>,
) {
  const supabase = await createClient();

  // Insert multiple pokemon_caught records at once
  const records = pokemon.map((p) => ({
    play_id: playId,
    species_id: p.speciesId,
    form_id: p.formId,
  }));

  const { error } = await supabase
    .schema("gameplay")
    .from("pokemon_caught")
    .upsert(records, {
      onConflict: "play_id,species_id",
      ignoreDuplicates: false,
    });

  if (error) throw error;
  return { data: { success: true }, error: null };
}
