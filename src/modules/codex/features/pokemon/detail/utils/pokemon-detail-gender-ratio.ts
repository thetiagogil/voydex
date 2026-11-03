/* How a species' gender ratio reads on its entry. */
export type PokemonDetailGenderRatio =
  | { kind: "genderless" }
  | { kind: "single"; gender: "female" | "male" }
  | { femalePercent: number; kind: "split"; malePercent: number };

/* "12.5", "50", "87.5": an eighth as a percentage, without a trailing ".0". */
export const formatRatioPercent = (percent: number) =>
  Number.isInteger(percent) ? String(percent) : percent.toFixed(1);

/*
 * A species' gender ratio from how many of every eight are female (the
 * games count in eighths): none recorded is genderless, 0 male only, 8
 * female only, anything else a split.
 */
export const getPokemonDetailGenderRatio = (
  femaleRatioEighths: number | null,
): PokemonDetailGenderRatio => {
  if (femaleRatioEighths === null) {
    return { kind: "genderless" };
  }

  if (femaleRatioEighths <= 0) {
    return { gender: "male", kind: "single" };
  }

  if (femaleRatioEighths >= 8) {
    return { gender: "female", kind: "single" };
  }

  const femalePercent = (femaleRatioEighths / 8) * 100;

  return { femalePercent, kind: "split", malePercent: 100 - femalePercent };
};

/*
 * The ratio a form shows: a form that is always one gender (Meowstic's
 * female form, a Cap Pikachu) reads as that gender alone, any other as its
 * species' ratio.
 */
export const getFormFemaleRatioEighths = (
  formGender: string | null,
  speciesFemaleRatioEighths: number | null,
): number | null => {
  if (formGender === "male") return 0;
  if (formGender === "female") return 8;

  return speciesFemaleRatioEighths;
};
