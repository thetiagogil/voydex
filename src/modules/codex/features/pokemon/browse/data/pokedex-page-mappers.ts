import { defaultPokedexPageFilters } from "@/modules/codex/features/pokemon/browse/utils/pokedex-filters";
import type { PokedexPageRows } from "@/modules/codex/features/pokemon/browse/server/pokedex-page-loaders";
import {
  byId,
  resolveTypePair,
  selectLatestAttributes,
} from "@/modules/reference/reference-data";
import type {
  Game,
  Generation,
  PokedexPageData,
  PokemonForm,
  Region,
  VersionGroup,
} from "@/modules/reference/types";
import {
  getBaseVersionGroupsForGeneration,
  getVersionGroupGames,
} from "@/modules/reference/features/games/domain/version-groups";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";

/*
 * Where each generation starts: its first version group (the entry a card
 * opens in) and that group's region (the list's group heading).
 */
export const getGenerationStarts = ({
  games,
  generations,
  regions,
  versionGroups,
}: {
  games: Game[];
  generations: Generation[];
  regions: Region[];
  versionGroups: VersionGroup[];
}) => {
  const regionById = byId(regions);

  return new Map(
    generations.flatMap((generation) => {
      const [firstVersionGroup] = getBaseVersionGroupsForGeneration(
        versionGroups,
        generation.id,
      );

      if (!firstVersionGroup) {
        return [];
      }

      const [firstGame] = getVersionGroupGames(firstVersionGroup, games);
      const region = firstGame ? regionById.get(firstGame.region_id) : null;

      return [
        [
          generation.id,
          {
            regionName: region?.name ?? null,
            versionGroupSlug: firstVersionGroup.slug,
          },
        ] as const,
      ];
    }),
  );
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
  regions,
  species,
  types,
  versionGroups,
}: PokedexPageRows): PokedexPageData => {
  const typeById = byId(types);
  const generationById = byId(generations);
  const defaultFormBySpeciesId = getDefaultFormBySpeciesId(defaultForms);
  const latestAttributesByFormId = selectLatestAttributes(attributes);
  const generationStarts = getGenerationStarts({
    games,
    generations,
    regions,
    versionGroups,
  });

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
      const detailVersionGroupSlug = generationStarts.get(
        pokemonSpecies.introduced_generation_id,
      )?.versionGroupSlug;

      if (!detailVersionGroupSlug) {
        throw new Error("Unable to resolve a Pokémon's first version group.");
      }

      return {
        detailVersionGroupSlug,
        id: pokemonSpecies.id,
        imageUrl: getPokemonFormImageUrl(defaultForm, "sm"),
        introducedGeneration: introducedGeneration
          ? {
              id: introducedGeneration.id,
              name: introducedGeneration.name,
              slug: introducedGeneration.slug,
            }
          : null,
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
    regionNameByGenerationSlug: Object.fromEntries(
      generations.flatMap((generation) => {
        const regionName = generationStarts.get(generation.id)?.regionName;

        return regionName ? [[generation.slug, regionName]] : [];
      }),
    ),
    types,
  };
};
