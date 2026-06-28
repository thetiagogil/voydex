import { byId, resolveTypePair } from "@/modules/codex/shared/data/query-utils";
import {
  getDefaultFormsBySpeciesId,
  getEffectiveAttributes,
  getSelectedGenerationForGame,
  groupAttributesByFormId,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-attributes";
import { getPokemonMenuRowBySpeciesId } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-row-builders";
import { loadChunkedReferenceRows } from "@/modules/codex/features/pokemon/detail/data/reference-row-loaders";
import type { PokemonMenuSpeciesRow } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-rows";
import type {
  Game,
  Generation,
  PokemonAttributes,
  PokemonDetailMenuPage,
  PokemonForm,
  Type,
} from "@/modules/codex/shared/types";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";
import type { createServerSupabaseClient } from "@/lib/supabase/server";

type SupabaseClient = Awaited<ReturnType<typeof createServerSupabaseClient>>;

type BuildPokemonDetailMenuPageParams = {
  game: Game;
  generations: Generation[];
  offset: number;
  speciesRows: PokemonMenuSpeciesRow[];
  supabase: SupabaseClient;
  total: number;
  types: Type[];
};

export const buildPokemonDetailMenuPage = async ({
  game,
  generations,
  offset,
  speciesRows,
  supabase,
  total,
  types,
}: BuildPokemonDetailMenuPageParams): Promise<PokemonDetailMenuPage> => {
  const species = speciesRows.map((row) => row.species);
  const rowBySpeciesId = getPokemonMenuRowBySpeciesId(speciesRows);
  const pageSpeciesIds = species.map((pokemonSpecies) => pokemonSpecies.id);

  if (!pageSpeciesIds.length) {
    return {
      nextOffset: null,
      pokemon: [],
      total,
    };
  }

  const forms = await loadChunkedReferenceRows<PokemonForm>(
    pageSpeciesIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_forms")
        .select("*")
        .in("species_id", ids)
        .eq("is_default", true)
        .order("species_id", { ascending: true })
        .order("form_order", { ascending: true })
        .range(from, to),
    "Unable to load game Pokémon form data.",
  );
  const defaultFormBySpeciesId = getDefaultFormsBySpeciesId(forms);
  const defaultFormIds = [...defaultFormBySpeciesId.values()].map((form) => {
    return form.id;
  });
  const attributes = await loadChunkedReferenceRows<PokemonAttributes>(
    defaultFormIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_attributes")
        .select("*")
        .in("form_id", ids)
        .order("species_id", { ascending: true })
        .order("generation_start_id", { ascending: false })
        .range(from, to),
    "Unable to load game Pokémon attribute data.",
  );
  const { generation: selectedGeneration, generationById } =
    getSelectedGenerationForGame(generations, game.generation_id);
  const typeById = byId(types);
  const attributesByFormId = groupAttributesByFormId(attributes);

  const pokemon = species.map((pokemonSpecies) => {
    const defaultForm = defaultFormBySpeciesId.get(pokemonSpecies.id) ?? null;
    const menuRow = rowBySpeciesId.get(pokemonSpecies.id) ?? null;
    const formAttributes = defaultForm
      ? (attributesByFormId.get(defaultForm.id) ?? [])
      : [];
    const typePair = resolveTypePair(
      getEffectiveAttributes(
        formAttributes,
        selectedGeneration,
        generationById,
      ),
      typeById,
    );

    return {
      id: pokemonSpecies.id,
      imageAlt: getPokemonFormImageAlt(defaultForm),
      imageUrl: getPokemonFormImageUrl(defaultForm),
      name: pokemonSpecies.name,
      nationalNumber: pokemonSpecies.national_number,
      pokedexGroup: menuRow?.pokedexGroup ?? null,
      pokedexNumber: menuRow?.pokedexNumber ?? null,
      primaryType: typePair.primaryType
        ? {
            id: typePair.primaryType.id,
            name: typePair.primaryType.name,
            slug: typePair.primaryType.slug,
          }
        : null,
      secondaryType: typePair.secondaryType
        ? {
            id: typePair.secondaryType.id,
            name: typePair.secondaryType.name,
            slug: typePair.secondaryType.slug,
          }
        : null,
      slug: pokemonSpecies.slug,
    };
  });

  return {
    nextOffset:
      offset + pokemon.length < total ? offset + pokemon.length : null,
    pokemon,
    total,
  };
};
