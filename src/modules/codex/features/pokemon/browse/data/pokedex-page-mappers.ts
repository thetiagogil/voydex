import { defaultPokedexPageFilters } from "@/modules/codex/features/pokemon/browse/utils/pokedex-filters";
import type { PokedexPageRows } from "@/modules/codex/features/pokemon/browse/server/pokedex-page-loaders";
import {
  byId,
  resolveTypePair,
  selectLatestAttributes,
} from "@/modules/reference/reference-data";
import type {
  Game,
  PokedexPageData,
  PokemonForm,
} from "@/modules/reference/types";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";

const getDefaultDetailGameSlugByGenerationId = (games: Game[]) => {
  const slugByGenerationId = new Map<number, string>();

  for (const game of games) {
    if (!slugByGenerationId.has(game.generation_id)) {
      slugByGenerationId.set(game.generation_id, game.slug);
    }
  }

  return slugByGenerationId;
};

const getDefaultFormBySpeciesId = (forms: PokemonForm[]) => {
  const defaultFormBySpeciesId = new Map<number, PokemonForm>();

  for (const form of forms) {
    if (!defaultFormBySpeciesId.has(form.species_id)) {
      defaultFormBySpeciesId.set(form.species_id, form);
    }
  }

  return defaultFormBySpeciesId;
};

export const buildPokedexPageData = ({
  attributes,
  defaultForms,
  games,
  generations,
  species,
  types,
}: PokedexPageRows): PokedexPageData => {
  const typeById = byId(types);
  const generationById = byId(generations);
  const defaultFormBySpeciesId = getDefaultFormBySpeciesId(defaultForms);
  const latestAttributesByFormId = selectLatestAttributes(attributes);
  const defaultDetailGameSlugByGenerationId =
    getDefaultDetailGameSlugByGenerationId(games);

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
        throw new Error("Unable to resolve default Pokemon detail game.");
      }

      return {
        detailGameSlug,
        id: pokemonSpecies.id,
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
