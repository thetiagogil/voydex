import type { PokemonSpecies } from "@/modules/reference/shared/database-types";

/*
 * The classes the species flags record. A species is one of them, in this
 * precedence: a flagged Mythical wins over Legendary, which wins over Baby.
 * Ultra Beasts, Paradox Pokémon, fossils and starters join once the
 * reference data has them.
 */
export type PokemonCategory = "baby" | "legendary" | "mythical" | "other";

/* The browse list's groups, in the order they are shown. */
export const pokemonCategoryOrder = [
  "legendary",
  "mythical",
  "baby",
  "other",
] as const satisfies readonly PokemonCategory[];

export const pokemonCategoryNames = {
  baby: "Baby",
  legendary: "Legendary",
  mythical: "Mythical",
  other: "Other",
} as const satisfies Record<PokemonCategory, string>;

export const getPokemonCategory = (
  species: Pick<PokemonSpecies, "is_baby" | "is_legendary" | "is_mythical">,
): PokemonCategory => {
  if (species.is_mythical) {
    return "mythical";
  }

  if (species.is_legendary) {
    return "legendary";
  }

  return species.is_baby ? "baby" : "other";
};
