import type { GameMechanicAbsence } from "@/modules/reference/features/games/domain/game-mechanics";
import { formatGenerationName } from "@/modules/reference/features/games/utils/game-display";

/*
 * What a fact the game doesn't have reads in its place, quietly and as a
 * fact about the game (never the dashed "not in Voydex yet" marker, which is
 * data Voydex owes): "From Generation II", or "Not in this game".
 */
export const getPokemonDetailAbsenceLabel = (
  absence: GameMechanicAbsence | null,
) => {
  if (!absence) {
    return null;
  }

  return absence.kind === "later-generation"
    ? `From ${formatGenerationName(absence.introducedGeneration)}`
    : "Not in this game";
};

/* The Abilities card's line when the game has none. */
export const getPokemonDetailAbilitiesAbsence = (
  absence: GameMechanicAbsence | null,
) => {
  if (!absence) {
    return null;
  }

  return absence.kind === "later-generation"
    ? `Abilities arrive in ${formatGenerationName(absence.introducedGeneration)}.`
    : "This game has no abilities.";
};
