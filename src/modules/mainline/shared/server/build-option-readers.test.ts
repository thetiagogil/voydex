import { describe, expect, it } from "vitest";

import {
  getAvailableItemIds,
  getLearnableMoveIds,
} from "./build-option-readers";

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

describe("getAvailableItemIds", () => {
  const rows = [
    { game_id: null, item_id: 1 },
    { game_id: null, item_id: 1 },
    { game_id: 33, item_id: 2 },
    { game_id: 34, item_id: 3 },
    { game_id: null, item_id: null },
  ];

  it("keeps the items every game of the group has, once each", () => {
    expect(getAvailableItemIds(rows, [31])).toEqual([1]);
  });

  it("adds a game's own items only for that game", () => {
    expect(getAvailableItemIds(rows, [33])).toEqual([1, 2]);
    expect(getAvailableItemIds(rows, [33, 34])).toEqual([1, 2, 3]);
  });

  it("leaves out an item no game has, like a later generation's Berry (Gen II)", () => {
    expect(getAvailableItemIds([], [33])).toEqual([]);
  });
});
