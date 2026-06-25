export const formatPokemonNationalNumberDigits = (number: number) => {
  return number.toString().padStart(4, "0");
};

export const formatPokemonNationalNumber = (number: number) => {
  return `#${formatPokemonNationalNumberDigits(number)}`;
};
