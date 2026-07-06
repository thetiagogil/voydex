import type { ServerSupabaseClient } from "@/lib/supabase/server";
import {
  loadChunkedReferenceRows,
  loadPagedReferenceRows,
} from "@/modules/codex/shared/server/reference-row-loaders";
import type {
  Ability,
  Game,
  Generation,
  Pokedex,
  PokedexEntry,
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
  Type,
} from "@/modules/codex/shared/types";

export type GamePokedexBaseRows = {
  game: Game;
  generations: Generation[];
  pokedexes: Pokedex[];
  types: Type[];
};

export const loadGamePokedexBaseRows = async (
  supabase: ServerSupabaseClient,
  gameSlug: string,
): Promise<GamePokedexBaseRows | null> => {
  const gameResult = await supabase
    .schema("reference")
    .from("games")
    .select("*")
    .eq("slug", gameSlug)
    .maybeSingle();

  if (gameResult.error) {
    throw new Error("Unable to load game.");
  }

  if (!gameResult.data) {
    return null;
  }

  const game = gameResult.data;
  const [typesResult, generationsResult, pokedexesResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("types")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("generations")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("pokedex")
      .select("*")
      .eq("version_group_id", game.version_group_id)
      .order("sort_order", { ascending: true }),
  ]);

  if (typesResult.error) {
    throw new Error("Unable to load Pokemon types.");
  }

  if (generationsResult.error) {
    throw new Error("Unable to load generations.");
  }

  if (pokedexesResult.error) {
    throw new Error("Unable to load Pokedex.");
  }

  return {
    game,
    generations: generationsResult.data ?? [],
    pokedexes: pokedexesResult.data ?? [],
    types: typesResult.data ?? [],
  };
};

export const loadGamePokedexEntries = async (
  supabase: ServerSupabaseClient,
  pokedexId: number,
): Promise<PokedexEntry[]> => {
  return loadPagedReferenceRows<PokedexEntry>(
    (from, to) =>
      supabase
        .schema("reference")
        .from("pokedex_entries")
        .select("*")
        .eq("pokedex_id", pokedexId)
        .order("pokedex_number", { ascending: true })
        .range(from, to),
    "Unable to load Pokedex entries.",
  );
};

export const loadGamePokedexSpecies = async (
  supabase: ServerSupabaseClient,
  speciesIds: number[],
): Promise<PokemonSpecies[]> => {
  if (!speciesIds.length) {
    return [];
  }

  return loadChunkedReferenceRows<PokemonSpecies>(
    speciesIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_species")
        .select("*")
        .in("id", ids)
        .order("national_number", { ascending: true })
        .range(from, to),
    "Unable to load Pokedex Pokemon.",
  );
};

export const loadGamePokedexForms = async (
  supabase: ServerSupabaseClient,
  speciesIds: number[],
): Promise<PokemonForm[]> => {
  if (!speciesIds.length) {
    return [];
  }

  return loadChunkedReferenceRows<PokemonForm>(
    speciesIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_forms")
        .select("*")
        .in("species_id", ids)
        .order("species_id", { ascending: true })
        .order("form_order", { ascending: true })
        .range(from, to),
    "Unable to load Pokedex Pokemon forms.",
  );
};

export const loadGamePokedexAttributes = async (
  supabase: ServerSupabaseClient,
  formIds: number[],
): Promise<PokemonAttributes[]> => {
  if (!formIds.length) {
    return [];
  }

  return loadChunkedReferenceRows<PokemonAttributes>(
    formIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_attributes")
        .select("*")
        .in("form_id", ids)
        .order("form_id", { ascending: true })
        .order("generation_start_id", { ascending: false })
        .range(from, to),
    "Unable to load Pokedex Pokemon attributes.",
  );
};

export const loadGamePokedexAbilities = async (
  supabase: ServerSupabaseClient,
  abilityIds: number[],
): Promise<Ability[]> => {
  if (!abilityIds.length) {
    return [];
  }

  return loadChunkedReferenceRows<Ability>(
    abilityIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("abilities")
        .select("*")
        .in("id", ids)
        .order("sort_order", { ascending: true })
        .range(from, to),
    "Unable to load Pokedex Pokemon abilities.",
  );
};
