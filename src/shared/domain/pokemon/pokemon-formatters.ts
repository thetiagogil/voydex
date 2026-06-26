export const formatPokemonNationalNumberDigits = (number: number) => {
  return number.toString().padStart(4, "0");
};

export const formatPokemonNationalNumber = (number: number) => {
  return `#${formatPokemonNationalNumberDigits(number)}`;
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
