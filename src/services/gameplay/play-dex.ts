"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET PLAY DEX ENTRIES (from views.play_dex_detail)
// =============================================================================

export const getPlayDex = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_dex_detail")
    .select("*")
    .eq("play_id", playId);

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const result = data.map((entry) => ({
    dexEntryId: entry.dex_entry_id,
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
// MARK DEX ENTRY AS SEEN
// =============================================================================

export const markDexEntrySeen = async (playId: string, dexEntryId: number) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("play_dex_entries")
    .upsert(
      {
        play_id: playId,
        dex_entry_id: dexEntryId,
        is_seen: true,
      },
      { onConflict: "play_id,dex_entry_id" },
    )
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// MARK DEX ENTRY AS CAUGHT (also marks seen)
// =============================================================================

export const markDexEntryCaught = async (
  playId: string,
  dexEntryId: number,
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("gameplay")
    .from("play_dex_entries")
    .upsert(
      {
        play_id: playId,
        dex_entry_id: dexEntryId,
        is_seen: true,
        is_caught: true,
      },
      { onConflict: "play_id,dex_entry_id" },
    )
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// UNMARK DEX ENTRY (remove seen/caught)
// =============================================================================

export const unmarkDexEntry = async (playId: string, dexEntryId: number) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("play_dex_entries")
    .delete()
    .eq("play_id", playId)
    .eq("dex_entry_id", dexEntryId);

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// BULK MARK DEX ENTRIES AS CAUGHT
// =============================================================================

export const markDexEntriesCaughtBulk = async (
  playId: string,
  dexEntryIds: number[],
) => {
  const supabase = await createClient();

  const records = dexEntryIds.map((entryId) => ({
    play_id: playId,
    dex_entry_id: entryId,
    is_seen: true,
    is_caught: true,
  }));

  const { error } = await supabase
    .schema("gameplay")
    .from("play_dex_entries")
    .upsert(records, {
      onConflict: "play_id,dex_entry_id",
    });

  if (error) return { success: false, error };
  return { success: true, error: null };
};

// =============================================================================
// BULK UNMARK DEX ENTRIES
// =============================================================================

export const unmarkDexEntriesBulk = async (
  playId: string,
  dexEntryIds: number[],
) => {
  const supabase = await createClient();

  const { error } = await supabase
    .schema("gameplay")
    .from("play_dex_entries")
    .delete()
    .eq("play_id", playId)
    .in("dex_entry_id", dexEntryIds);

  if (error) return { success: false, error };
  return { success: true, error: null };
};
