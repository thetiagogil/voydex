import {
  emptyBattleReference,
  getZMoves,
  type BattleItem,
  type ZMoveSourceReference,
} from "@/modules/reference/features/pokemon/data/battle-mechanics";

import type { StoryOpponentMoveRow } from "./story-matchups-model";

/*
 * Marks each of an opponent's moves its held Z-Crystal turns into a Z-Move
 * with that Z-Move's name, by the same rule as your own Pokémon's: an
 * exclusive crystal only the move its species knows, a type crystal any
 * damaging move of its type.
 */
export const withZMoveNames = (
  moves: StoryOpponentMoveRow[],
  {
    crystal,
    formId,
    speciesId,
    zSources,
  }: {
    crystal: BattleItem;
    formId: number;
    speciesId: number;
    zSources: ZMoveSourceReference[];
  },
): StoryOpponentMoveRow[] => {
  const zMoves = getZMoves(
    crystal,
    {
      formId,
      hasGigantamaxFactor: false,
      heldItem: crystal,
      moves: moves.map((move) => ({
        id: move.id,
        isStatus: move.damageClass === "status",
        name: move.name,
        slug: move.slug,
        typeId: move.typeId,
      })),
      speciesId,
    },
    { ...emptyBattleReference, zSources },
  );
  const zMoveNameByMove = new Map(
    zMoves.map((zMove) => [zMove.fromMoveName, zMove.move.name]),
  );

  return moves.map((move) => ({
    ...move,
    zMoveName: zMoveNameByMove.get(move.name) ?? null,
  }));
};
