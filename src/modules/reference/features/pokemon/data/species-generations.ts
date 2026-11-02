/* A generation as the album pages it: how many species it introduced, and their numbers. */
export type SpeciesGeneration = {
  /* The first National number it introduced. */
  firstNumber: number;
  id: number;
  /* The last National number it introduced. */
  lastNumber: number;
  /* "Generation I". */
  name: string;
  /* The generation's place in the series: 1 for Generation I. */
  number: number;
  speciesCount: number;
};

type GenerationRow = { id: number; name: string; sort_order: number };
type SpeciesRow = { introduced_generation_id: number; national_number: number };

/*
 * Every generation that introduced species, in order, each with its count
 * and the span of National numbers it owns (each generation's new species
 * follow the last generation's, so the spans never overlap).
 */
export const buildSpeciesGenerations = (
  generations: GenerationRow[],
  species: SpeciesRow[],
): SpeciesGeneration[] => {
  const byGenerationId = new Map<number, SpeciesGeneration>();

  for (const generation of generations.toSorted(
    (left, right) => left.sort_order - right.sort_order,
  )) {
    byGenerationId.set(generation.id, {
      firstNumber: Number.MAX_SAFE_INTEGER,
      id: generation.id,
      lastNumber: 0,
      name: generation.name,
      number: generation.sort_order,
      speciesCount: 0,
    });
  }

  for (const row of species) {
    const generation = byGenerationId.get(row.introduced_generation_id);

    if (!generation) {
      continue;
    }

    generation.speciesCount += 1;
    generation.firstNumber = Math.min(
      generation.firstNumber,
      row.national_number,
    );
    generation.lastNumber = Math.max(
      generation.lastNumber,
      row.national_number,
    );
  }

  return [...byGenerationId.values()].filter(
    (generation) => generation.speciesCount > 0,
  );
};

/* The generation that introduced a National number; null outside every span. */
export const findSpeciesGeneration = (
  generations: SpeciesGeneration[],
  nationalNumber: number | null,
) =>
  nationalNumber === null
    ? null
    : (generations.find(
        (generation) =>
          nationalNumber >= generation.firstNumber &&
          nationalNumber <= generation.lastNumber,
      ) ?? null);
