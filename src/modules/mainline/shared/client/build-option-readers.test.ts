import { describe, expect, it } from "vitest";

import {
  getAvailableItemIds,
  getLearnableMoveIds,
  pickMoveLearnMethods,
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

describe("pickMoveLearnMethods", () => {
  const methods = [
    { id: 1, name: "Level Up", slug: "level_up", sort_order: 1 },
    { id: 2, name: "TM", slug: "tm", sort_order: 2 },
    { id: 5, name: "Egg Move", slug: "egg", sort_order: 5 },
  ];
  const learn = (
    moveId: number,
    methodId: number,
    extra: Partial<{
      game_id: number | null;
      level_learned_at: number | null;
      machine_label: string | null;
      sort_order: number | null;
    }> = {},
  ) => ({
    game_id: null,
    learn_method_id: methodId,
    level_learned_at: null,
    machine_label: null,
    move_id: moveId,
    sort_order: null,
    ...extra,
  });

  it("takes each move's first way: level up before a TM, the lowest level", () => {
    const picked = pickMoveLearnMethods(
      [
        learn(10, 2, { machine_label: "TM08", sort_order: 8 }),
        learn(10, 1, { level_learned_at: 24 }),
        learn(10, 1, { level_learned_at: 12 }),
        learn(20, 5),
      ],
      methods,
      [31],
    );

    expect(picked.get(10)).toEqual({
      detail: "Lv. 12",
      label: "Level up",
      methodOrder: 1,
      order: 12,
    });
    expect(picked.get(20)).toMatchObject({ detail: "Egg", label: "Egg" });
  });

  it("orders machines by their number and skips another game's rows", () => {
    const picked = pickMoveLearnMethods(
      [
        learn(30, 2, { machine_label: "TM 31", sort_order: 31 }),
        learn(40, 1, { game_id: 32, level_learned_at: 5 }),
      ],
      methods,
      [31],
    );

    expect(picked.get(30)).toMatchObject({ detail: "TM 31", order: 31 });
    expect(picked.has(40)).toBe(false);
  });
});
