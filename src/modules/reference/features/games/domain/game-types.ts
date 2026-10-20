/* A type as a game offers it, such as for Monotype's pick. */
export type GameTypeChoice = { id: number; name: string; slug: string };

/* A type with the place of the generation that brought it in. */
export type TypeIntroduction = GameTypeChoice & {
  introducedGenerationNumber: number;
};

/*
 * The types a game has: those its generation or an earlier one brought in,
 * so Dark and Steel start in Generation II and Fairy in Generation VI.
 */
export const getGameTypes = (
  types: readonly TypeIntroduction[],
  generationNumber: number,
): GameTypeChoice[] =>
  types
    .filter((type) => type.introducedGenerationNumber <= generationNumber)
    .map(({ id, name, slug }) => ({ id, name, slug }));
