import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { loadPagedReferenceRows } from "@/modules/codex/shared/server/reference-row-loaders";
import type {
  Game,
  Generation,
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
  Type,
} from "@/modules/codex/shared/types";

export type PokedexPageRows = {
  attributes: PokemonAttributes[];
  defaultForms: PokemonForm[];
  games: Game[];
  generations: Generation[];
  species: PokemonSpecies[];
  types: Type[];
};

export const loadPokedexPageRows = async (
  supabase: ServerSupabaseClient,
): Promise<PokedexPageRows> => {
  const [typesResult, generationsResult, gamesResult] = await Promise.all([
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
      .from("games")
      .select("*")
      .order("generation_id", { ascending: true })
      .order("sort_order", { ascending: true }),
  ]);

  if (typesResult.error) {
    throw new Error("Unable to load Pokemon types.");
  }

  if (generationsResult.error) {
    throw new Error("Unable to load generations.");
  }

  if (gamesResult.error) {
    throw new Error("Unable to load games.");
  }

  const [species, defaultForms, attributes] = await Promise.all([
    loadPagedReferenceRows<PokemonSpecies>(
      (from, to) =>
        supabase
          .schema("reference")
          .from("pokemon_species")
          .select("*")
          .order("national_number", { ascending: true })
          .range(from, to),
      "Unable to load Pokedex species.",
    ),
    loadPagedReferenceRows<PokemonForm>(
      (from, to) =>
        supabase
          .schema("reference")
          .from("pokemon_forms")
          .select("*")
          .eq("is_default", true)
          .order("species_id", { ascending: true })
          .order("form_order", { ascending: true })
          .range(from, to),
      "Unable to load Pokemon forms.",
    ),
    loadPagedReferenceRows<PokemonAttributes>(
      (from, to) =>
        supabase
          .schema("reference")
          .from("pokemon_attributes")
          .select("*")
          .order("species_id", { ascending: true })
          .order("generation_start_id", { ascending: false })
          .range(from, to),
      "Unable to load Pokemon attributes.",
    ),
  ]);

  return {
    attributes,
    defaultForms,
    games: gamesResult.data ?? [],
    generations: generationsResult.data ?? [],
    species,
    types: typesResult.data ?? [],
  };
};
