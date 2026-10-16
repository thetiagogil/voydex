import type {
  Generation,
  PokedexPokemonBrowseCard,
  Type,
} from "@/modules/reference/types";

export type PokedexPokemonGenerationGroup = {
  key: string;
  label: string;
  pokemon: PokedexPokemonBrowseCard[];
};

export const groupPokemonByGeneration = (
  pokemon: PokedexPokemonBrowseCard[],
  generations: Generation[],
) => {
  const generationSlugSet = new Set(
    generations.map((generation) => generation.slug),
  );
  const pokemonByGenerationSlug = new Map<string, PokedexPokemonBrowseCard[]>();
  const unknownGenerationPokemon: PokedexPokemonBrowseCard[] = [];

  for (const entry of pokemon) {
    const generationSlug = entry.introducedGeneration?.slug;

    if (!generationSlug) {
      unknownGenerationPokemon.push(entry);
      continue;
    }

    const generationPokemon = pokemonByGenerationSlug.get(generationSlug) ?? [];
    generationPokemon.push(entry);
    pokemonByGenerationSlug.set(generationSlug, generationPokemon);
  }

  const groups: PokedexPokemonGenerationGroup[] = generations.flatMap(
    (generation) => {
      const generationPokemon = pokemonByGenerationSlug.get(generation.slug);

      return generationPokemon?.length
        ? [
            {
              key: generation.slug,
              label: generation.name,
              pokemon: generationPokemon,
            },
          ]
        : [];
    },
  );

  for (const [generationSlug, generationPokemon] of pokemonByGenerationSlug) {
    if (generationSlugSet.has(generationSlug)) {
      continue;
    }

    groups.push({
      key: generationSlug,
      label:
        generationPokemon[0]?.introducedGeneration?.name ??
        "Unknown generation",
      pokemon: generationPokemon,
    });
  }

  if (unknownGenerationPokemon.length) {
    groups.push({
      key: "unknown",
      label: "Unknown generation",
      pokemon: unknownGenerationPokemon,
    });
  }

  return groups;
};

/*
 * The list grouped by type instead: one range per type, in type-chart
 * order, each Pokémon under its primary type (Charizard under Fire). A
 * Pokémon without a recorded type closes the list.
 */
export const groupPokemonByType = (
  pokemon: PokedexPokemonBrowseCard[],
  types: Pick<Type, "name" | "slug">[],
): PokedexPokemonGenerationGroup[] => {
  const pokemonByTypeSlug = new Map<string, PokedexPokemonBrowseCard[]>();
  const untyped: PokedexPokemonBrowseCard[] = [];

  for (const entry of pokemon) {
    const typeSlug = entry.primaryType?.slug;

    if (!typeSlug) {
      untyped.push(entry);
      continue;
    }

    pokemonByTypeSlug.set(typeSlug, [
      ...(pokemonByTypeSlug.get(typeSlug) ?? []),
      entry,
    ]);
  }

  const groups: PokedexPokemonGenerationGroup[] = types.flatMap((type) => {
    const typePokemon = pokemonByTypeSlug.get(type.slug);

    return typePokemon?.length
      ? [{ key: `type-${type.slug}`, label: type.name, pokemon: typePokemon }]
      : [];
  });

  if (untyped.length) {
    groups.push({
      key: "type-unknown",
      label: "Unknown type",
      pokemon: untyped,
    });
  }

  return groups;
};
