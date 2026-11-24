import { formatPokedexNumber } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";

/* A national number as the Pokédex prints it: "#025". */
export const formatNationalNumber = (value: number | null) =>
  value === null ? "" : formatPokedexNumber(value);
