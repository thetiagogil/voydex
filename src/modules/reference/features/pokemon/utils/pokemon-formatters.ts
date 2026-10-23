export const formatPokemonNationalNumberDigits = (number: number) => {
  return number.toString().padStart(4, "0");
};

export const formatPokemonNationalNumber = (number: number) => {
  return `#${formatPokemonNationalNumberDigits(number)}`;
};

export const formatPokedexName = (name: string) => {
  return name.replace(/\bPokedex\b/g, "Pokédex");
};

export const formatPokemonHeight = (heightDecimeters: number | null) => {
  if (!heightDecimeters) {
    return "Unknown";
  }

  return `${(heightDecimeters / 10).toFixed(1)} m`;
};

export const formatPokemonWeight = (weightHectograms: number | null) => {
  if (!weightHectograms) {
    return "Unknown";
  }

  return `${(weightHectograms / 10).toFixed(1)} kg`;
};

/*
 * A form's name without its species, for where the species is already
 * named beside it: "Hisuian Arcanine" reads "Hisuian", "Rotom (Heat)"
 * "Heat", "Paldean Tauros (Blaze Breed)" "Blaze Breed".
 */
export const formatShortFormName = (formName: string, speciesName: string) => {
  const detail = /\(([^)]+)\)\s*$/.exec(formName)?.[1];

  if (detail) {
    return detail;
  }

  const rest = formName.replace(speciesName, "").replace(/\s+/g, " ").trim();

  return rest || formName;
};
