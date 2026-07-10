import { byId, resolveTypePair } from "@/modules/reference/reference-data";
import {
  getGamePokedexEntryKey,
  selectGamePokedexEntryForms,
} from "@/modules/codex/features/games/pokedex/data/game-pokedex-selectors";
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
  game: Game;
  generations: Generation[];
  pokedex: Pokedex;
  pokedexes: Pokedex[];
  species: PokemonSpecies[];
  types: Type[];
};

const getGenerationSortOrder = (
  generationId: number,
  generationById: Map<number, Generation>,
) => {
  return generationById.get(generationId)?.sort_order ?? generationId;
};

const selectGameGenerationAttributes = ({
  attributes,
  game,
  generationById,
}: {
  attributes: PokemonAttributes[];
  game: Game;
  generationById: Map<number, Generation>;
}) => {
  const attributesByFormId = new Map<number, PokemonAttributes>();
  const gameGenerationOrder = getGenerationSortOrder(
    game.generation_id,
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
  game,
  generations,
  pokedex,
  pokedexes,
  species,
  types,
}: BuildGamePokedexDataParams): GamePokedexData => {
  const abilityById = byId(abilities);
  const generationById = byId(generations);
  const generation = generationById.get(game.generation_id);
  const speciesById = byId(species);
  const typeById = byId(types);

  if (!generation) {
    throw new Error("Unable to resolve game generation.");
  }

  const attributesByFormId = selectGameGenerationAttributes({
    attributes,
    game,
    generationById,
  });
  const entryFormsByKey = selectGamePokedexEntryForms({ entries, forms });

  return {
    entries: entries.flatMap((entry) => {
      const matchedSpecies = speciesById.get(entry.species_id);

      if (!matchedSpecies) {
        return [];
      }

      const form =
        entryFormsByKey.get(
          getGamePokedexEntryKey({
            pokedexId: entry.pokedex_id,
            pokedexNumber: entry.pokedex_number,
            speciesId: entry.species_id,
          }),
        ) ?? null;
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
    game,
    generation,
    pokedex,
    pokedexes,
    types,
  };
};
