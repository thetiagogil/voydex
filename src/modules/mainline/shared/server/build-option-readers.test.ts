import { describe, expect, it } from "vitest";

import { getLearnableMoveIds } from "./build-option-readers";

const row = (
  moveId: number,
  gameId: number | null = null,
  scopeOperation = "add",
) => ({ game_id: gameId, move_id: moveId, scope_operation: scopeOperation });

describe("getLearnableMoveIds", () => {
  it("keeps group-wide moves and drops removed ones", () => {
    expect(
      getLearnableMoveIds([row(1), row(2), row(2, null, "remove")], [31]),
    ).toEqual([1]);
  });

  it("keeps a game's own move only when every asked game has it", () => {
    /* Let's Go: a move only Pikachu's game lists isn't a group-wide fact. */
    const rows = [row(10), row(20, 33), row(30, 33), row(30, 34)];

    expect(getLearnableMoveIds(rows, [33])).toEqual([10, 20, 30]);
    expect(getLearnableMoveIds(rows, [33, 34])).toEqual([10, 30]);
  });
});
