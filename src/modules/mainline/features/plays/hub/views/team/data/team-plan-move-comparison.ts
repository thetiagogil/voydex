import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamPlanMoveComparison,
  MainlinePlayTeamPlanMoveTarget,
} from "@/modules/mainline/features/plays/hub/types";
import type { Json } from "@/shared/types/database.types";

const parsePlannedMoves = (
  value: Json | null,
): MainlinePlayTeamPlanMoveTarget[] => {
  if (!Array.isArray(value)) return [];

  return value
    .flatMap((move) => {
      if (!move || typeof move !== "object" || Array.isArray(move)) return [];

      const moveId = move.move_id;
      const name = move.name;
      const slot = move.slot;

      return typeof moveId === "number" &&
        typeof name === "string" &&
        typeof slot === "number" &&
        slot >= 1 &&
        slot <= 4
        ? [{ id: moveId, name, slot }]
        : [];
    })
    .sort((left, right) => left.slot - right.slot);
};

const compareMoves = (
  plannedMoves: MainlinePlayTeamPlanMoveTarget[],
  member: MainlinePlayTeamMember | null,
): {
  matches: boolean | null;
  rows: MainlinePlayTeamPlanMoveComparison[];
} => {
  const actualMoves = [...(member?.moves ?? [])].sort(
    (left, right) => left.slot - right.slot,
  );
  const usedActualIndexes = new Set<number>();
  const exactActualIndexByPlannedIndex = new Map<number, number>();

  plannedMoves.forEach((plannedMove, plannedIndex) => {
    const actualIndex = actualMoves.findIndex(
      (actualMove, candidateIndex) =>
        !usedActualIndexes.has(candidateIndex) &&
        actualMove.id === plannedMove.id,
    );

    if (actualIndex >= 0) {
      exactActualIndexByPlannedIndex.set(plannedIndex, actualIndex);
      usedActualIndexes.add(actualIndex);
    }
  });

  const unmatchedActualIndexes = actualMoves
    .map((_, index) => index)
    .filter((index) => !usedActualIndexes.has(index));
  let unmatchedActualCursor = 0;

  const rows: MainlinePlayTeamPlanMoveComparison[] = plannedMoves.map(
    (plannedMove, plannedIndex) => {
      const exactActualIndex = exactActualIndexByPlannedIndex.get(plannedIndex);

      if (exactActualIndex !== undefined) {
        return {
          actual: actualMoves[exactActualIndex] ?? null,
          matches: true,
          planned: plannedMove,
        };
      }

      const nextActualIndex =
        unmatchedActualIndexes[unmatchedActualCursor] ?? null;
      unmatchedActualCursor += 1;

      return {
        actual:
          nextActualIndex === null
            ? null
            : (actualMoves[nextActualIndex] ?? null),
        matches: false,
        planned: plannedMove,
      };
    },
  );

  for (
    let index = unmatchedActualCursor;
    index < unmatchedActualIndexes.length;
    index += 1
  ) {
    rows.push({
      actual: actualMoves[unmatchedActualIndexes[index] ?? -1] ?? null,
      matches: null,
      planned: null,
    });
  }

  return {
    matches: plannedMoves.length
      ? rows.filter((row) => row.planned).every((row) => row.matches === true)
      : null,
    rows,
  };
};

export const buildTeamPlanMoveComparison = (
  plannedMoves: Json | null,
  member: MainlinePlayTeamMember | null,
) => {
  return compareMoves(parsePlannedMoves(plannedMoves), member);
};
