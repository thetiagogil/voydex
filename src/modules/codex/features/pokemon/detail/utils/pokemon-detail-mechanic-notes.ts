import type { GameMechanicAbsence } from "@/modules/reference/features/games/domain/game-mechanics";

/*
 * A note in place of something the game doesn't have: its text ("Abilities
 * arrive in"), then the generation it arrives in on its own line, or null
 * for a game that leaves it out ("No abilities in Legends: Arceus").
 */
export type PokemonDetailMechanicNote = {
  arrivesIn: number | null;
  text: string;
};

/* The game is named, since a generation holds several and the page may be reading only one. */
const noteText = {
  abilities: {
    laterGeneration: "Abilities arrive in",
    notInGame: (game: string) => `No abilities in ${game}`,
  },
  breeding: {
    laterGeneration: "Breeding arrives in",
    notInGame: (game: string) => `No eggs or Day Care in ${game}`,
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
  /* The game the page reads, as in "Legends: Arceus". */
  gameName: string,
): PokemonDetailMechanicNote | null => {
  if (!absence) {
    return null;
  }

  return absence.kind === "later-generation"
    ? {
        arrivesIn: absence.introducedGeneration,
        text: noteText[subject].laterGeneration,
      }
    : { arrivesIn: null, text: noteText[subject].notInGame(gameName) };
};
