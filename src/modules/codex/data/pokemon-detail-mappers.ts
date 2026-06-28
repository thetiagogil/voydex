import type {
  EvolutionMethod,
  Game,
  Generation,
  PokemonAttributes,
  PokemonAvailabilitySummary,
  PokemonDetailData,
  PokemonEvolutionEdge,
  PokemonEvolutionFamilySummary,
  PokemonForm,
  PokemonFormSummary,
  PokemonGenerationDetail,
  PokemonPokedexSummary,
  PokemonSpecies,
  Type,
  VersionGroup,
} from "@/modules/codex/types";
import {
  byId,
  resolveTypePair,
  selectLatestAttributes,
} from "@/modules/codex/data/query-utils";

type PokemonFormSummaryParams = {
  attributes: PokemonAttributes[];
  forms: PokemonForm[];
  generationById: Map<number, Generation>;
  typeById: Map<number, Type>;
};

type PokemonGenerationDetailsParams = {
  availability: PokemonAvailabilitySummary[];
  forms: PokemonFormSummary[];
  games: Game[];
  generations: Generation[];
  pokedexEntries: PokemonPokedexSummary[];
  species: PokemonSpecies;
  typeById: Map<number, Type>;
  versionGroupById: Map<number, VersionGroup>;
};

type PokemonEvolutionFamilyParams = {
  attributes: PokemonAttributes[];
  edges: PokemonEvolutionEdge[];
  forms: PokemonForm[];
  generationById: Map<number, Generation>;
  methods: EvolutionMethod[];
  species: PokemonSpecies[];
  typeById: Map<number, Type>;
};

const getGenerationSortOrder = (
  generationId: number,
  generationById: Map<number, Generation>,
) => {
  return generationById.get(generationId)?.sort_order ?? generationId;
};

const groupAttributesByFormId = (attributes: PokemonAttributes[]) => {
  const attributesByFormId = new Map<number, PokemonAttributes[]>();

  for (const attribute of attributes) {
    const current = attributesByFormId.get(attribute.form_id) ?? [];

    current.push(attribute);
    attributesByFormId.set(attribute.form_id, current);
  }

  return attributesByFormId;
};

const getEffectiveAttributes = (
  attributes: PokemonAttributes[],
  generation: Generation,
  generationById: Map<number, Generation>,
) => {
  return (
    attributes
      .filter((attribute) => {
        return (
          getGenerationSortOrder(
            attribute.generation_start_id,
            generationById,
          ) <= generation.sort_order
        );
      })
      .sort((a, b) => {
        return (
          getGenerationSortOrder(b.generation_start_id, generationById) -
          getGenerationSortOrder(a.generation_start_id, generationById)
        );
      })[0] ?? null
  );
};

const dedupePokedexEntries = (
  entries: PokemonPokedexSummary[],
): PokemonPokedexSummary[] => {
  const seenEntryKeys = new Set<string>();

  return entries.filter(({ entry, pokedex }) => {
    const entryKey = [
      pokedex?.name ?? entry.pokedex_id,
      entry.pokedex_number,
    ].join(":");

    if (seenEntryKeys.has(entryKey)) {
      return false;
    }

    seenEntryKeys.add(entryKey);

    return true;
  });
};

const getVersionGroupSortOrder = (
  versionGroupId: number,
  versionGroupById: Map<number, VersionGroup>,
) => {
  return versionGroupById.get(versionGroupId)?.sort_order ?? versionGroupId;
};

const sortVersionGroupsBySortOrder = (versionGroups: VersionGroup[]) => {
  return [...versionGroups].sort((firstVersionGroup, secondVersionGroup) => {
    return (
      firstVersionGroup.sort_order - secondVersionGroup.sort_order ||
      firstVersionGroup.name.localeCompare(secondVersionGroup.name)
    );
  });
};

const sortGamesByVersionGroupAndSortOrder = (
  games: Game[],
  versionGroupById: Map<number, VersionGroup>,
) => {
  return [...games].sort((firstGame, secondGame) => {
    return (
      getVersionGroupSortOrder(firstGame.version_group_id, versionGroupById) -
        getVersionGroupSortOrder(
          secondGame.version_group_id,
          versionGroupById,
        ) ||
      firstGame.sort_order - secondGame.sort_order ||
      firstGame.name.localeCompare(secondGame.name)
    );
  });
};

export const buildPokemonFormSummaries = ({
  attributes,
  forms,
  generationById,
  typeById,
}: PokemonFormSummaryParams): PokemonFormSummary[] => {
  const latestAttributesByFormId = selectLatestAttributes(attributes);
  const attributesByFormId = groupAttributesByFormId(attributes);

  return forms.map((form) => {
    const latestAttributes = latestAttributesByFormId.get(form.id) ?? null;
    const formAttributes = attributesByFormId.get(form.id) ?? [];

    return {
      attributesByGeneration: [...formAttributes].sort((a, b) => {
        return (
          getGenerationSortOrder(a.generation_start_id, generationById) -
          getGenerationSortOrder(b.generation_start_id, generationById)
        );
      }),
      form,
      latestAttributes,
      typePair: resolveTypePair(latestAttributes, typeById),
      introducedGeneration:
        generationById.get(form.introduced_generation_id) ?? null,
    };
  });
};

export const buildPokemonGenerationDetails = ({
  availability,
  forms,
  games,
  generations,
  pokedexEntries,
  species,
  typeById,
  versionGroupById,
}: PokemonGenerationDetailsParams): PokemonGenerationDetail[] => {
  const speciesIntroducedSortOrder =
    generations.find((generation) => {
      return generation.id === species.introduced_generation_id;
    })?.sort_order ?? species.introduced_generation_id;
  const generationById = byId(generations);

  return generations
    .filter((generation) => {
      return generation.sort_order >= speciesIntroducedSortOrder;
    })
    .map((generation) => {
      const generationForms = forms
        .filter((form) => {
          const introducedSortOrder =
            form.introducedGeneration?.sort_order ??
            form.form.introduced_generation_id;

          return introducedSortOrder <= generation.sort_order;
        })
        .map((form) => {
          const attributes = getEffectiveAttributes(
            form.attributesByGeneration,
            generation,
            generationById,
          );

          return {
            attributes,
            form: form.form,
            introducedGeneration: form.introducedGeneration,
            typePair: resolveTypePair(attributes, typeById),
          };
        });
      const generationAvailability = availability.filter((row) => {
        const versionGroup = row.targetVersionGroup
          ? versionGroupById.get(row.targetVersionGroup.id)
          : null;

        return versionGroup?.generation_id === generation.id;
      });
      const generationVersionGroups = sortVersionGroupsBySortOrder(
        [...versionGroupById.values()].filter((versionGroup) => {
          return versionGroup.generation_id === generation.id;
        }),
      );
      const generationGames = games.filter((game) => {
        return game.generation_id === generation.id;
      });
      const generationPokedexEntries = dedupePokedexEntries(
        pokedexEntries.filter(({ pokedex }) => {
          if (!pokedex?.version_group_id) {
            return false;
          }

          return (
            versionGroupById.get(pokedex.version_group_id)?.generation_id ===
            generation.id
          );
        }),
      );

      return {
        availability: generationAvailability,
        forms: generationForms,
        games: sortGamesByVersionGroupAndSortOrder(
          generationGames,
          versionGroupById,
        ),
        generation,
        pokedexEntries: generationPokedexEntries,
        versionGroups: generationVersionGroups,
      };
    });
};

export const buildPokemonEvolutionFamily = ({
  attributes,
  edges,
  forms,
  generationById,
  methods,
  species,
  typeById,
}: PokemonEvolutionFamilyParams): PokemonEvolutionFamilySummary => {
  const defaultFormBySpeciesId = new Map<number, PokemonForm>();
  const latestAttributesByFormId = selectLatestAttributes(attributes);
  const methodById = byId(methods);
  const speciesById = byId(species);

  for (const form of forms) {
    if (form.is_default || !defaultFormBySpeciesId.has(form.species_id)) {
      defaultFormBySpeciesId.set(form.species_id, form);
    }
  }

  return {
    edges: edges.map((edge) => ({
      edge,
      fromSpecies: speciesById.get(edge.from_species_id) ?? null,
      introducedGeneration:
        generationById.get(edge.introduced_generation_id) ?? null,
      method: methodById.get(edge.evolution_method_id) ?? null,
      toSpecies: speciesById.get(edge.to_species_id) ?? null,
    })),
    species: species.map((pokemonSpecies) => {
      const defaultForm = defaultFormBySpeciesId.get(pokemonSpecies.id) ?? null;
      const latestAttributes = defaultForm
        ? (latestAttributesByFormId.get(defaultForm.id) ?? null)
        : null;

      return {
        defaultForm,
        introducedGeneration:
          generationById.get(pokemonSpecies.introduced_generation_id) ?? null,
        latestAttributes,
        species: pokemonSpecies,
        typePair: resolveTypePair(latestAttributes, typeById),
      };
    }),
  };
};

export const resolveDefaultPokemonForm = (
  data: Pick<PokemonDetailData, "forms">,
) => {
  return (
    data.forms.find((form) => {
      return form.form.is_default;
    }) ??
    data.forms[0] ??
    null
  );
};
