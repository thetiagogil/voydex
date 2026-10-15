/* A national number as the Pokédex prints it: "#025". */
export const formatNationalNumber = (value: number | null) =>
  value === null ? "" : `#${String(value).padStart(3, "0")}`;
