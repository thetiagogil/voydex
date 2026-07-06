import { createServerSupabaseClient } from "@/lib/supabase/server";
import {
  loadChunkedReferenceRows,
  loadPagedReferenceRows,
} from "@/modules/codex/shared/server/reference-row-loaders";
import type {
  Ability,
  Game,
  Generation,
  Pokedex,
  PokedexEntry,
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
  PokemonTypePair,
  Type,
} from "@/modules/codex/shared/types";
import {
  byId,
  resolveTypePair,
} from "@/modules/codex/shared/data/reference-data-utils";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";

export type GamePokedexPokemonAbility = {
  ability: Ability;
  slot: "primary" | "secondary" | "hidden";
};

export type GamePokedexPokemon = {
  abilities: GamePokedexPokemonAbility[];
  attributes: PokemonAttributes | null;
  form: PokemonForm | null;
  imageAlt: string;
  imageUrl: string | null;
  entry: PokedexEntry;
  species: PokemonSpecies;
  typePair: PokemonTypePair;
};

export type GamePokedexData = {
  entries: GamePokedexPokemon[];
  game: Game;
  generation: Generation;
  pokedex: Pokedex;
  pokedexes: Pokedex[];
  types: Type[];
};

const getDefaultFormBySpeciesId = (forms: PokemonForm[]) => {
  const formBySpeciesId = new Map<number, PokemonForm>();

  for (const form of forms) {
    if (!form.is_default) {
      continue;
    }

    const currentForm = formBySpeciesId.get(form.species_id);

    if (!currentForm || form.form_order < currentForm.form_order) {
      formBySpeciesId.set(form.species_id, form);
    }
  }

  return formBySpeciesId;
};

const resolveEntryForm = ({
  defaultFormBySpeciesId,
  entry,
  formById,
}: {
  defaultFormBySpeciesId: Map<number, PokemonForm>;
  entry: PokedexEntry;
  formById: Map<number, PokemonForm>;
}) => {
  if (entry.display_form_id) {
    return formById.get(entry.display_form_id) ?? null;
  }

  return defaultFormBySpeciesId.get(entry.species_id) ?? null;
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

const collectAbilityIds = (attributes: PokemonAttributes[]) => {
  return Array.from(
    new Set(
      attributes.flatMap((attribute) =>
        [
          attribute.primary_ability_id,
          attribute.secondary_ability_id,
          attribute.hidden_ability_id,
        ].filter((abilityId): abilityId is number => Boolean(abilityId)),
      ),
    ),
  );
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

export const getGamePokedexData = async (
  gameSlug: string,
  pokedexSlug: string,
): Promise<GamePokedexData | null> => {
  const supabase = await createServerSupabaseClient();
  const gameResult = await supabase
    .schema("reference")
    .from("games")
    .select("*")
    .eq("slug", gameSlug)
    .maybeSingle();

  if (gameResult.error) {
    throw new Error("Unable to load game.");
  }

  if (!gameResult.data) {
    return null;
  }

  const game = gameResult.data;
  const [typesResult, generationsResult, pokedexesResult] = await Promise.all([
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
      .from("pokedex")
      .select("*")
      .eq("version_group_id", game.version_group_id)
      .order("sort_order", { ascending: true }),
  ]);

  if (typesResult.error) {
    throw new Error("Unable to load Pokémon types.");
  }

  if (generationsResult.error) {
    throw new Error("Unable to load generations.");
  }

  if (pokedexesResult.error) {
    throw new Error("Unable to load Pokédex.");
  }

  const pokedexes = pokedexesResult.data ?? [];
  const pokedex = pokedexes.find((entry) => entry.slug === pokedexSlug);

  if (!pokedex) {
    return null;
  }

  const entries = await loadPagedReferenceRows<PokedexEntry>(
    (from, to) =>
      supabase
        .schema("reference")
        .from("pokedex_entries")
        .select("*")
        .eq("pokedex_id", pokedex.id)
        .order("pokedex_number", { ascending: true })
        .range(from, to),
    "Unable to load Pokédex entries.",
  );
  const speciesIds = Array.from(
    new Set(entries.map((entry) => entry.species_id)),
  );
  const species = speciesIds.length
    ? await loadChunkedReferenceRows<PokemonSpecies>(
        speciesIds,
        (ids, from, to) =>
          supabase
            .schema("reference")
            .from("pokemon_species")
            .select("*")
            .in("id", ids)
            .order("national_number", { ascending: true })
            .range(from, to),
        "Unable to load Pokédex Pokémon.",
      )
    : [];
  const speciesById = byId(species);
  const forms = speciesIds.length
    ? await loadChunkedReferenceRows<PokemonForm>(
        speciesIds,
        (ids, from, to) =>
          supabase
            .schema("reference")
            .from("pokemon_forms")
            .select("*")
            .in("species_id", ids)
            .order("species_id", { ascending: true })
            .order("form_order", { ascending: true })
            .range(from, to),
        "Unable to load Pokédex Pokémon forms.",
      )
    : [];
  const formById = byId(forms);
  const defaultFormBySpeciesId = getDefaultFormBySpeciesId(forms);
  const entryFormsByKey = new Map<string, PokemonForm | null>();

  for (const entry of entries) {
    entryFormsByKey.set(
      `${entry.pokedex_id}:${entry.pokedex_number}:${entry.species_id}`,
      resolveEntryForm({
        defaultFormBySpeciesId,
        entry,
        formById,
      }),
    );
  }

  const formIds = Array.from(
    new Set(
      [...entryFormsByKey.values()].flatMap((form) => (form ? [form.id] : [])),
    ),
  );
  const attributes = formIds.length
    ? await loadChunkedReferenceRows<PokemonAttributes>(
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
        "Unable to load Pokédex Pokémon attributes.",
      )
    : [];
  const abilityIds = collectAbilityIds(attributes);
  const abilities = abilityIds.length
    ? await loadChunkedReferenceRows<Ability>(
        abilityIds,
        (ids, from, to) =>
          supabase
            .schema("reference")
            .from("abilities")
            .select("*")
            .in("id", ids)
            .order("sort_order", { ascending: true })
            .range(from, to),
        "Unable to load Pokédex Pokémon abilities.",
      )
    : [];
  const abilityById = byId(abilities);
  const generationById = byId(generationsResult.data ?? []);
  const generation = generationById.get(game.generation_id);

  if (!generation) {
    throw new Error("Unable to resolve game generation.");
  }

  const attributesByFormId = selectGameGenerationAttributes({
    attributes,
    game,
    generationById,
  });
  const typeById = byId(typesResult.data ?? []);

  return {
    entries: entries.flatMap((entry) => {
      const matchedSpecies = speciesById.get(entry.species_id);

      if (!matchedSpecies) {
        return [];
      }

      const form =
        entryFormsByKey.get(
          `${entry.pokedex_id}:${entry.pokedex_number}:${entry.species_id}`,
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
    types: typesResult.data ?? [],
  };
};
