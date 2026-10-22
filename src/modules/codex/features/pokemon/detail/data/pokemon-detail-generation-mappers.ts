import type { BattleFormLink } from "@/modules/reference/features/pokemon/data/battle-mechanics";
import { getGenerationSortOrder } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-generation-utils";
import { byId, resolveTypePair } from "@/modules/reference/reference-data";
import type {
  Game,
  Generation,
  PokemonAttributes,
  PokemonAvailabilitySummary,
  PokemonFormSummary,
  PokemonGenerationDetail,
  PokemonLearnsetSummary,
  PokemonPokedexSummary,
  PokemonSpecies,
  Type,
  VersionGroup,
} from "@/modules/reference/types";

type PokemonGenerationDetailsParams = {
  availability: PokemonAvailabilitySummary[];
  battleForms: BattleFormLink[];
  forms: PokemonFormSummary[];
  games: Game[];
  generations: Generation[];
  learnsets: PokemonLearnsetSummary[];
  pokedexEntries: PokemonPokedexSummary[];
  species: PokemonSpecies;
  typeById: Map<number, Type>;
  versionGroupById: Map<number, VersionGroup>;
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

export const buildPokemonGenerationDetails = ({
  availability,
  battleForms,
  forms,
  games,
  generations,
  learnsets,
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
      const generationLearnsets = learnsets.filter((row) => {
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
        battleForms: battleForms.filter((link) =>
          generationForms.some((form) => form.form.id === link.formId),
        ),
        forms: generationForms,
        games: sortGamesByVersionGroupAndSortOrder(
          generationGames,
          versionGroupById,
        ),
        generation,
        learnsets: generationLearnsets,
        pokedexEntries: generationPokedexEntries,
        versionGroups: generationVersionGroups,
      };
    });
};
