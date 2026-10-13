import { byId, resolveTypePair } from "@/modules/reference/reference-data";
import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import { sortVersionGroupPokedexes } from "@/modules/codex/features/games/shared/data/version-group-pokedexes";
import {
  getPokedexEntryKey,
  selectGamePokedexEntryForms,
} from "@/modules/codex/features/games/shared/data/pokedex-entry-forms";
import type {
  Ability,
  Game,
  GamePokedexData,
  GamePokedexPokemonAbility,
  Generation,
  Pokedex,
  PokedexEntry,
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
  Type,
  VersionGroup,
} from "@/modules/reference/types";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";

type BuildGamePokedexDataParams = {
  abilities: Ability[];
  attributes: PokemonAttributes[];
  entries: PokedexEntry[];
  forms: PokemonForm[];
  games: Game[];
  generations: Generation[];
  pokedex: Pokedex;
  pokedexes: Pokedex[];
  species: PokemonSpecies[];
  types: Type[];
  versionGroup: VersionGroup;
  versionGroupById: Map<number, VersionGroup>;
};

const getGenerationSortOrder = (
  generationId: number,
  generationById: Map<number, Generation>,
) => {
  return generationById.get(generationId)?.sort_order ?? generationId;
};

const selectGenerationAttributes = ({
  attributes,
  generationById,
  generationId,
}: {
  attributes: PokemonAttributes[];
  generationById: Map<number, Generation>;
  generationId: number;
}) => {
  const attributesByFormId = new Map<number, PokemonAttributes>();
  const gameGenerationOrder = getGenerationSortOrder(
    generationId,
    generationById,
  );

  for (const attribute of attributes) {
    const attributeGenerationOrder = getGenerationSortOrder(
      attribute.generation_start_id,
      generationById,
    );

    if (attributeGenerationOrder > gameGenerationOrder) {
      continue;
    }

    const currentAttribute = attributesByFormId.get(attribute.form_id);

    if (
      !currentAttribute ||
      attributeGenerationOrder >
        getGenerationSortOrder(
          currentAttribute.generation_start_id,
          generationById,
        )
    ) {
      attributesByFormId.set(attribute.form_id, attribute);
    }
  }

  return attributesByFormId;
};

const buildPokemonAbilities = (
  attributes: PokemonAttributes | null,
  abilityById: Map<number, Ability>,
): GamePokedexPokemonAbility[] => {
  if (!attributes) {
    return [];
  }

  const abilitySlots = [
    {
      abilityId: attributes.primary_ability_id,
      slot: "primary",
    },
    {
      abilityId: attributes.secondary_ability_id,
      slot: "secondary",
    },
    {
      abilityId: attributes.hidden_ability_id,
      slot: "hidden",
    },
  ] satisfies {
    abilityId: number | null;
    slot: GamePokedexPokemonAbility["slot"];
  }[];

  return abilitySlots.flatMap(({ abilityId, slot }) => {
    const ability = abilityId ? abilityById.get(abilityId) : null;

    return ability ? [{ ability, slot }] : [];
  });
};

export const buildGamePokedexData = ({
  abilities,
  attributes,
  entries,
  forms,
  games,
  generations,
  pokedex,
  pokedexes,
  species,
  types,
  versionGroup,
  versionGroupById,
}: BuildGamePokedexDataParams): GamePokedexData => {
  const abilityById = byId(abilities);
  const generationById = byId(generations);
  const generation = generationById.get(versionGroup.generation_id);
  const speciesById = byId(species);
  const typeById = byId(types);

  if (!generation) {
    throw new Error("Unable to resolve the version group's generation.");
  }

  const attributesByFormId = selectGenerationAttributes({
    attributes,
    generationById,
    generationId: generation.id,
  });
  const entryFormsByKey = selectGamePokedexEntryForms({ entries, forms });

  return {
    entries: entries.flatMap((entry) => {
      const matchedSpecies = speciesById.get(entry.species_id);

      if (!matchedSpecies) {
        return [];
      }

      const form = entryFormsByKey.get(getPokedexEntryKey(entry)) ?? null;
      const attributes = form
        ? (attributesByFormId.get(form.id) ?? null)
        : null;

      return [
        {
          abilities: buildPokemonAbilities(attributes, abilityById),
          attributes,
          entry,
          form,
          imageAlt: getPokemonFormImageAlt(form),
          imageUrl: getPokemonFormImageUrl(form),
          species: matchedSpecies,
          typePair: resolveTypePair(attributes, typeById),
        },
      ];
    }),
    games,
    generation,
    mechanics: resolveVersionGroupMechanics({
      gameIds: games.map((game) => game.id),
      generationId: generation.id,
      versionGroupId: versionGroup.id,
    }),
    pokedex,
    pokedexes: sortVersionGroupPokedexes(pokedexes, versionGroupById),
    types,
    versionGroup,
  };
};
