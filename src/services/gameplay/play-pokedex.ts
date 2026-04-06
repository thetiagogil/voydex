"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET PLAY POKEDEX ENTRIES (from views.play_dex_detail)
// =============================================================================

export const getPlayPokedex = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_pokedex_detail")
    .select("*")
    .eq("play_id", playId);

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((entry) => ({
    pokedexEntryId: entry.pokedex_entry_id,
    dexNumber: entry.dex_number,
    dex: {
      id: entry.dex_id,
      slug: entry.dex_slug,
      name: entry.dex_name,
      kind: entry.dex_kind,
    },
    speciesId: entry.species_id,
    formId: entry.form_id,
    species: {
      id: entry.species_id,
      slug: entry.species_slug,
      name: entry.species_name,
      isLegendary: entry.is_legendary,
      isMythical: entry.is_mythical,
    },
    form: {
      id: entry.form_id,
      slug: entry.form_slug,
      name: entry.form_name,
      pokemonDbSpriteSlug: entry.pokemondb_sprite_slug,
    },
    isSeen: entry.is_seen,
    isCaught: entry.is_caught,
  }));

  return { data: result, error: null };
};

// =============================================================================
// MARK POKEDEX ENTRY AS SEEN
// =============================================================================

export const markPokedexEntrySeen = async (playId: string, pokedexEntryId: number) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("play_pokedex_entries")
    .upsert(
      {
        play_id: playId,
        pokedex_entry_id: pokedexEntryId,
        is_seen: true,
      },
      { onConflict: "play_id,pokedex_entry_id" },
    )
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// MARK POKEDEX ENTRY AS CAUGHT (also marks seen)
// =============================================================================

export const markPokedexEntryCaught = async (
  playId: string,
  pokedexEntryId: number,
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("play_pokedex_entries")
    .upsert(
      {
        play_id: playId,
        pokedex_entry_id: pokedexEntryId,
        is_seen: true,
        is_caught: true,
      },
      { onConflict: "play_id,pokedex_entry_id" },
    )
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// UNMARK POKEDEX ENTRY (remove seen/caught)
// =============================================================================

export const unmarkPokedexEntry = async (playId: string, pokedexEntryId: number) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("play_pokedex_entries")
    .delete()
    .eq("play_id", playId)
    .eq("pokedex_entry_id", pokedexEntryId);

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// BULK MARK POKEDEX ENTRIES AS CAUGHT
// =============================================================================

export const markPokedexEntriesCaughtBulk = async (
  playId: string,
  pokedexEntryIds: number[],
) => {
  const supabase = await createClient();

  const records = pokedexEntryIds.map((entryId) => ({
    play_id: playId,
    pokedex_entry_id: entryId,
    is_seen: true,
    is_caught: true,
  }));

  const { error } = await supabase
    .schema("gameplay")
    .from("play_pokedex_entries")
    .upsert(records, {
      onConflict: "play_id,pokedex_entry_id",
    });

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// BULK UNMARK POKEDEX ENTRIES
// =============================================================================

export const unmarkPokedexEntriesBulk = async (
  playId: string,
  pokedexEntryIds: number[],
) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("play_pokedex_entries")
    .delete()
    .eq("play_id", playId)
    .in("pokedex_entry_id", pokedexEntryIds);

  if (error) return { success: false, error };
  return { success: true, error: null };
};
