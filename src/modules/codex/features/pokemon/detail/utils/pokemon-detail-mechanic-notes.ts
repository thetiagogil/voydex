import type { GameMechanicAbsence } from "@/modules/reference/features/games/domain/game-mechanics";
import { formatGenerationName } from "@/modules/reference/features/games/utils/game-display";

/* A note in place of something the game doesn't have, and when it arrives. */
export type PokemonDetailMechanicNote = {
  /* The generation it arrives in, for a link there; null for a game that leaves it out. */
  arrivesIn: number | null;
  text: string;
};

const noteText = {
  abilities: {
    laterGeneration: (generation: string) =>
      `Abilities arrive in ${generation}`,
    notInGame: "This game has no abilities",
  },
  breeding: {
    laterGeneration: (generation: string) =>
      `Breeding arrives in ${generation}`,
    notInGame: "This game has no eggs or Day Care",
  },
} as const;

/*
 * What stands in for abilities or breeding when the game has none: a fact
 * about the game ("Abilities arrive in Generation III"), never the dashed
 * pending marker, which means data Voydex doesn't have yet.
 */
export const getPokemonDetailMechanicNote = (
  absence: GameMechanicAbsence | null,
  subject: keyof typeof noteText,
): PokemonDetailMechanicNote | null => {
  if (!absence) {
    return null;
  }

  return absence.kind === "later-generation"
    ? {
        arrivesIn: absence.introducedGeneration,
        text: noteText[subject].laterGeneration(
          formatGenerationName(absence.introducedGeneration),
        ),
      }
    : { arrivesIn: null, text: noteText[subject].notInGame };
};
