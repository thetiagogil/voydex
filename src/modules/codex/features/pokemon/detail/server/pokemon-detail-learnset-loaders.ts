import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { isNumber } from "@/modules/reference/reference-data";
import type {
  Move,
  MoveAttribute,
  ResolvedPokemonLearnset,
} from "@/modules/reference/types";

export type PokemonDetailLearnsetMoveRows = {
  moveAttributes: MoveAttribute[];
  moves: Move[];
};

export const loadPokemonDetailLearnsetMoveRows = async (
  supabase: ServerSupabaseClient,
  learnsetRows: ResolvedPokemonLearnset[],
): Promise<PokemonDetailLearnsetMoveRows> => {
  const moveIds = [
    ...new Set(learnsetRows.map((row) => row.move_id).filter(isNumber)),
  ];

  if (!moveIds.length) {
    return {
      moveAttributes: [],
      moves: [],
    };
  }

  const [movesResult, moveAttributesResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("moves")
      .select("*")
      .in("id", moveIds)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("move_attributes")
      .select("*")
      .in("move_id", moveIds)
      .order("generation_start_id", { ascending: false }),
  ]);

  if (movesResult.error || moveAttributesResult.error) {
    throw new Error("Unable to load PokÃ©mon learnset move data.");
  }

  return {
    moveAttributes: moveAttributesResult.data ?? [],
    moves: movesResult.data ?? [],
  };
};
