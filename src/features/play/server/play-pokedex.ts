"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET PLAY POKEDEX ENTRIES (from views.play_pokedex_detail)
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

  const result = data.map((entry: Record<string, unknown>) => ({
    pokedexEntryId: entry.pokedex_entry_id,
    pokedexNumber: entry.pokedex_number,
    pokedex: {
      id: entry.pokedex_id,
      slug: entry.pokedex_slug,
      name: entry.pokedex_name,
      kind: entry.pokedex_kind,
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
    versionGroupId: entry.version_group_id,
    versionGroupName: entry.version_group_name,
    isDlc: entry.parent_version_group_id !== null,
  }));

  return { data: result, error: null };
};

// =============================================================================
// MARK POKEDEX ENTRY AS SEEN
// =============================================================================

export const markPokedexEntrySeen = async (
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
      },
      { onConflict: "play_id,pokedex_entry_id" },
    )
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// MARK POKEDEX ENTRY AS CAUGHT
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
// UNMARK POKEDEX ENTRY
// =============================================================================

export const unmarkPokedexEntry = async (
  playId: string,
  pokedexEntryId: number,
) => {
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
// BULK MARK POKEDEX ENTRIES AS SEEN
// =============================================================================

export const markPokedexEntriesSeenBulk = async (
  playId: string,
  pokedexEntryIds: number[],
) => {
  const supabase = await createClient();

  const records = pokedexEntryIds.map((entryId) => ({
    play_id: playId,
    pokedex_entry_id: entryId,
    is_seen: true,
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

// =============================================================================
// LIGHTWEIGHT POKEDEX SUMMARY (for overview — no entry-level data)
// =============================================================================

export const getPlayPokedexSummary = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_pokedex_detail")
    .select(
      "pokedex_id, pokedex_slug, pokedex_name, pokedex_kind, is_seen, is_caught, is_mythical, version_group_id, version_group_name, parent_version_group_id",
    )
    .eq("play_id", playId);

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const pokedexMap = new Map<
    number,
    {
      pokedexId: number;
      pokedexSlug: string;
      pokedexName: string;
      pokedexKind: string;
      totalEntries: number;
      seenCount: number;
      caughtCount: number;
      mythicalCount: number;
      mythicalSeenCount: number;
      mythicalCaughtCount: number;
      versionGroupId: number;
      versionGroupName: string;
      isDlc: boolean;
    }
  >();

  for (const row of data) {
    const id = row.pokedex_id as number;
    if (!pokedexMap.has(id)) {
      pokedexMap.set(id, {
        pokedexId: row.pokedex_id as number,
        pokedexSlug: row.pokedex_slug as string,
        pokedexName: row.pokedex_name as string,
        pokedexKind: row.pokedex_kind as string,
        totalEntries: 0,
        seenCount: 0,
        caughtCount: 0,
        mythicalCount: 0,
        mythicalSeenCount: 0,
        mythicalCaughtCount: 0,
        versionGroupId: row.version_group_id as number,
        versionGroupName: row.version_group_name as string,
        isDlc: row.parent_version_group_id !== null,
      });
    }
    const summary = pokedexMap.get(id)!;
    summary.totalEntries++;
    if (row.is_seen) summary.seenCount++;
    if (row.is_caught) summary.caughtCount++;
    if (row.is_mythical) {
      summary.mythicalCount++;
      if (row.is_seen) summary.mythicalSeenCount++;
      if (row.is_caught) summary.mythicalCaughtCount++;
    }
  }

  return { data: Array.from(pokedexMap.values()), error: null };
};
