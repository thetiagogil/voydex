"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET PLAY REGIONAL DEX
// =============================================================================

export const getPlayRegionalDex = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_regional_dex")
    .select("*")
    .eq("play_id", playId)
    .order("regional_number", { ascending: true });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((entry) => ({
    regional_number: entry.regional_number,
    species_id: entry.species_id,
    form_id: entry.form_id,
    species: {
      id: entry.species_id,
      slug: entry.species_slug,
      name: entry.species_name,
    },
    form: {
      id: entry.form_id,
      slug: entry.form_slug,
      name: entry.form_name,
      sprite_url: entry.sprite_url,
    },
    caught: entry.is_caught,
    is_legendary: entry.is_legendary,
    is_mythical: entry.is_mythical,
  }));

  return { data: result, error: null };
};

// =============================================================================
// CHECK POKEMON CAUGHT
// =============================================================================

export const checkPokemonCaught = async (
  playId: string,
  speciesId: number,
  formId: number,
) => {
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

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// UNCHECK POKEMON CAUGHT
// =============================================================================

export const uncheckPokemonCaught = async (
  playId: string,
  speciesId: number,
) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("pokemon_caught")
    .delete()
    .eq("play_id", playId)
    .eq("species_id", speciesId);

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// BULK CHECK POKEMON CAUGHT
// =============================================================================

export const checkPokemonCaughtBulk = async (
  playId: string,
  pokemon: Array<{ speciesId: number; formId: number }>,
) => {
  const supabase = await createClient();

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

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// BULK UNCHECK POKEMON CAUGHT
// =============================================================================

export const uncheckPokemonCaughtBulk = async (
  playId: string,
  speciesIds: number[],
) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("pokemon_caught")
    .delete()
    .eq("play_id", playId)
    .in("species_id", speciesIds);

  if (error) return { success: false, error };
  return { success: true, error: null };
};
