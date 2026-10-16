import type { GameMechanicAbsence } from "@/modules/reference/features/games/domain/game-mechanics";

/*
 * A note in place of something the game doesn't have: its text ("Abilities
 * arrive in"), then the generation it arrives in on its own line, or null
 * for a game that leaves it out ("This game has no abilities").
 */
export type PokemonDetailMechanicNote = {
  arrivesIn: number | null;
  text: string;
};

const noteText = {
  abilities: {
    laterGeneration: "Abilities arrive in",
    notInGame: "This game has no abilities",
  },
  breeding: {
    laterGeneration: "Breeding arrives in",
    notInGame: "This game has no eggs or Day Care",
  },
} as const;

/*
 * What stands in for abilities or breeding when the game has none: a fact
 * about the game, never the dashed pending marker, which means data Voydex
 * doesn't have yet.
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
        text: noteText[subject].laterGeneration,
      }
    : { arrivesIn: null, text: noteText[subject].notInGame };
};
