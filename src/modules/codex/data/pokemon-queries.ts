import { createServerSupabaseClient } from "@/lib/supabase/server";
import type {
  Game,
  PokedexPageData,
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
} from "@/modules/codex/types";
import {
  byId,
  resolveTypePair,
  selectLatestAttributes,
} from "@/modules/codex/data/query-utils";
import { defaultPokedexPageFilters } from "@/modules/codex/utils/pokedex-filters";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";

const REFERENCE_PAGE_SIZE = 1000;

type PagedReferenceResult = {
  data: unknown[] | null;
  error: { message: string } | null;
};

const loadPagedReferenceRows = async <T>(
  queryPage: (from: number, to: number) => PromiseLike<PagedReferenceResult>,
  errorMessage: string,
): Promise<T[]> => {
  const rows: T[] = [];

  for (let from = 0; ; from += REFERENCE_PAGE_SIZE) {
    const to = from + REFERENCE_PAGE_SIZE - 1;
    const result = await queryPage(from, to);

    if (result.error) {
      throw new Error(errorMessage);
    }

    const page = (result.data ?? []) as T[];

    rows.push(...page);

    if (page.length < REFERENCE_PAGE_SIZE) {
      return rows;
    }
  }
};

const getDefaultDetailGameSlugByGenerationId = (games: Game[]) => {
  const slugByGenerationId = new Map<number, string>();

  for (const game of games) {
    if (!slugByGenerationId.has(game.generation_id)) {
      slugByGenerationId.set(game.generation_id, game.slug);
    }
  }

  return slugByGenerationId;
};

export const getPokedexPageData = async (): Promise<PokedexPageData> => {
  const supabase = await createServerSupabaseClient();

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
    throw new Error("Unable to load Pokémon types.");
  }

  if (generationsResult.error) {
    throw new Error("Unable to load generations.");
  }

  if (gamesResult.error) {
    throw new Error("Unable to load games.");
  }

  const types = typesResult.data ?? [];
  const generations = generationsResult.data ?? [];
  const defaultDetailGameSlugByGenerationId =
    getDefaultDetailGameSlugByGenerationId(gamesResult.data ?? []);

  const [species, forms, attributes] = await Promise.all([
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

  const typeById = byId(types);
  const generationById = byId(generations);
  const defaultFormBySpeciesId = new Map<number, PokemonForm>();
  const latestAttributesByFormId = selectLatestAttributes(attributes);

  for (const form of forms) {
    if (!defaultFormBySpeciesId.has(form.species_id)) {
      defaultFormBySpeciesId.set(form.species_id, form);
    }
  }

  return {
    filters: defaultPokedexPageFilters,
    generations,
    pokemon: species.map((pokemonSpecies) => {
      const defaultForm = defaultFormBySpeciesId.get(pokemonSpecies.id) ?? null;
      const latestAttributes = defaultForm
        ? (latestAttributesByFormId.get(defaultForm.id) ?? null)
        : null;
      const typePair = resolveTypePair(latestAttributes, typeById);
      const introducedGeneration =
        generationById.get(pokemonSpecies.introduced_generation_id) ?? null;
      const detailGameSlug = defaultDetailGameSlugByGenerationId.get(
        pokemonSpecies.introduced_generation_id,
      );

      if (!detailGameSlug) {
        throw new Error("Unable to resolve default Pokémon detail game.");
      }

      return {
        detailGameSlug,
        id: pokemonSpecies.id,
        imageAlt: getPokemonFormImageAlt(defaultForm),
        imageUrl: getPokemonFormImageUrl(defaultForm),
        introducedGeneration: introducedGeneration
          ? {
              id: introducedGeneration.id,
              name: introducedGeneration.name,
              slug: introducedGeneration.slug,
            }
          : null,
        isBaby: pokemonSpecies.is_baby,
        isLegendary: pokemonSpecies.is_legendary,
        isMythical: pokemonSpecies.is_mythical,
        name: pokemonSpecies.name,
        nationalNumber: pokemonSpecies.national_number,
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
    }),
    types,
  };
};
