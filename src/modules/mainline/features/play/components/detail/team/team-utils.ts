import type { MainlinePlayTeamPokemon } from "@/modules/mainline/features/play/types";

export type DisplayMove = {
  current_pp?: number | null;
  move_name?: string | null;
  name?: string | null;
  pp?: number | null;
  type_name?: string | null;
};

export const getMoves = (pokemon: MainlinePlayTeamPokemon): DisplayMove[] => {
  return Array.isArray(pokemon.moves) ? (pokemon.moves as DisplayMove[]) : [];
};
