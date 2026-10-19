import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { readMoveVersionGroupOverrides } from "@/modules/reference/features/pokemon/server/move-override-reader";
import { isNumber } from "@/modules/reference/reference-data";
import type {
  Move,
  MoveAttribute,
  MoveVersionGroupAttribute,
  ResolvedPokemonLearnset,
} from "@/modules/reference/types";

export type PokemonDetailLearnsetMoveRows = {
  moveAttributes: MoveAttribute[];
  moveOverrides: MoveVersionGroupAttribute[];
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
      moveOverrides: [],
      moves: [],
    };
  }

  const [movesResult, moveAttributesResult, moveOverrides] = await Promise.all([
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
    readMoveVersionGroupOverrides(supabase, { moveIds }),
  ]);

  if (movesResult.error || moveAttributesResult.error) {
    throw new Error("Unable to load Pokémon learnset move data.");
  }

  return {
    moveAttributes: moveAttributesResult.data ?? [],
    moveOverrides,
    moves: movesResult.data ?? [],
  };
};
