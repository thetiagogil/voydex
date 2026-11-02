import { loadChunkedReferenceRows } from "@/modules/reference/reference-rows";
import type {
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
} from "@/modules/reference/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export type FavouritePokemonRow = {
  created_at: string;
  form_id: number;
  species_id: number;
};

/* The trainer's favourites, newest heart first, and the reference rows that draw them. */
export type FavouritePokemonRows = {
  attributes: PokemonAttributes[];
  favourites: FavouritePokemonRow[];
  forms: Pick<
    PokemonForm,
    "id" | "is_default" | "name" | "slug" | "species_id"
  >[];
  species: Pick<PokemonSpecies, "id" | "name" | "national_number" | "slug">[];
};

export const readFavouritePokemonRows = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<FavouritePokemonRows> => {
  const result = await supabase
    .schema("gameplay")
    .from("user_favourite_pokemon")
    .select("created_at, form_id, species_id")
    .eq("user_id", userId)
    .order("created_at", { ascending: false })
    .order("form_id", { ascending: true });

  if (result.error) {
    throw new Error("Unable to load your favourite Pokémon.");
  }

  const favourites = result.data ?? [];

  if (!favourites.length) {
    return { attributes: [], favourites, forms: [], species: [] };
  }

  const formIds = uniqueNumberIds(favourites.map((row) => row.form_id));
  const speciesIds = uniqueNumberIds(favourites.map((row) => row.species_id));
  const [forms, attributes, species] = await Promise.all([
    loadChunkedReferenceRows<FavouritePokemonRows["forms"][number]>(
      formIds,
      (ids, from, to) =>
        supabase
          .schema("reference")
          .from("pokemon_forms")
          .select("id, is_default, name, slug, species_id")
          .in("id", ids)
          .order("id", { ascending: true })
          .range(from, to),
      "Unable to load your favourite Pokémon.",
    ),
    loadChunkedReferenceRows<PokemonAttributes>(
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
      "Unable to load your favourite Pokémon's types.",
    ),
    loadChunkedReferenceRows<FavouritePokemonRows["species"][number]>(
      speciesIds,
      (ids, from, to) =>
        supabase
          .schema("reference")
          .from("pokemon_species")
          .select("id, name, national_number, slug")
          .in("id", ids)
          .order("id", { ascending: true })
          .range(from, to),
      "Unable to load your favourite Pokémon.",
    ),
  ]);

  return { attributes, favourites, forms, species };
};

/* Whether the trainer has hearted this form, for the Codex entry's heart. */
export const readIsFavouritePokemon = async (
  supabase: ServerSupabaseClient,
  userId: string,
  formId: number,
) => {
  const result = await supabase
    .schema("gameplay")
    .from("user_favourite_pokemon")
    .select("form_id")
    .eq("user_id", userId)
    .eq("form_id", formId)
    .maybeSingle();

  if (result.error) {
    throw new Error("Unable to load your favourite Pokémon.");
  }

  return Boolean(result.data);
};
