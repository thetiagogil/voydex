import { describe, expect, it } from "vitest";

import {
  mergeSnapshots,
  rowKeyOf,
  toMicros,
  type ChangeRecord,
  type SchemaShape,
  type SyncSnapshot,
} from "@/platform/local-db/sync-merge";

const plays = "gameplay.mainline_plays";
const team = "gameplay.mainline_play_pokemon";

/* A Play and its team, two Pokémon never in one slot. */
const shape: SchemaShape = {
  foreignKeys: [
    {
      child: team,
      childColumns: ["play_id"],
      onDelete: "cascade",
      parent: plays,
      parentColumns: ["id"],
    },
  ],
  tables: [
    { keyColumns: ["id"], name: plays },
    { keyColumns: ["id"], name: team },
  ],
  uniqueKeys: [{ columns: ["play_id", "slot"], table: team }],
};

const synced = "2026-11-01T10:00:00+00:00";
const play = { id: "p1", name: "Kanto run" };

const added = (
  table: string,
  row: Record<string, unknown>,
  at: string,
  base: string | null,
): ChangeRecord => ({
  baseChangedAt: base,
  changedAt: at,
  column: "",
  deleted: false,
  key: rowKeyOf(row, ["id"]),
  table,
});

/* One side: the synced Play, plus a Pokémon it added in slot 1 at `at`. */
const sideWith = (pokemon: { id: string; name: string }, at: string) =>
  ({
    changes: [
      added(plays, play, synced, synced),
      added(team, pokemon, at, null),
    ],
    tables: {
      [plays]: [play],
      [team]: [{ ...pokemon, play_id: "p1", slot: 1 }],
    },
  }) satisfies SyncSnapshot;

describe("mergeSnapshots", () => {
  const local = sideWith(
    { id: "a", name: "Pikachu" },
    "2026-11-02T10:00:00+00:00",
  );
  const remote = sideWith(
    { id: "b", name: "Eevee" },
    "2026-11-03T10:00:00+00:00",
  );

  it("asks which side's Play to keep when its team won't fit together", () => {
    expect(mergeSnapshots({ local, remote, shape })).toEqual({
      clashes: [
        {
          id: 'item:gameplay.mainline_plays:["p1"]',
          item: { key: '["p1"]', label: "Kanto run", table: plays },
          kind: "item",
        },
      ],
      status: "clashes",
    });
  });

  it("keeps the chosen side's whole Play", () => {
    const result = mergeSnapshots({
      choices: { 'item:gameplay.mainline_plays:["p1"]': "remote" },
      local,
      remote,
      shape,
    });

    expect(result.status === "merged" && result.snapshot.tables[team]).toEqual([
      { id: "b", name: "Eevee", play_id: "p1", slot: 1 },
    ]);
  });

  it("orders times to the microsecond, whatever their spelling", () => {
    expect(toMicros("2026-11-10T09:30:00.000001+00:00")).toBeGreaterThan(
      toMicros("2026-11-10T09:30:00+00:00"),
    );
    expect(toMicros("2026-11-10T10:30:00.5+01:00")).toBe(
      toMicros("2026-11-10T09:30:00.500000Z"),
    );
  });

  it("writes keys the way the device does", () => {
    expect(
      rowKeyOf({ play_id: "p", species_id: 25 }, ["play_id", "species_id"]),
    ).toBe('["p", 25]');
  });
});
