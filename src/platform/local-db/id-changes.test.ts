import { afterAll, beforeAll, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import {
  applyIdChanges,
  droppableTables,
  findPendingIdChanges,
  IdChangeError,
  type IdChange,
  type IdChangeShape,
  type IdChangeTargets,
} from "@/platform/local-db/id-changes";
import { readIdChangeShape } from "@/platform/local-db/device-id-changes";
import { createTestDevice } from "@/platform/local-db/local-db-test-support";
import {
  rowKeyOf,
  type ChangeRecord,
  type SyncSnapshot,
} from "@/platform/local-db/sync-merge";
import type { UserRow } from "@/platform/local-db/user-data";

const playId = "10000000-0000-4000-8000-000000000001";
const userId = "00000000-0000-4000-8000-000000000001";
const pokemonId = "40000000-0000-4000-8000-000000000001";
const momentA = "50000000-0000-4000-8000-00000000000a";
const momentB = "50000000-0000-4000-8000-00000000000b";

const milestones = "tracking.mainline_milestones";
const progress = "gameplay.mainline_play_milestone_progress";
const decisions = "gameplay.mainline_play_milestone_decisions";
const events = "gameplay.mainline_play_events";
const playPokemon = "gameplay.mainline_play_pokemon";
const pokemonMoves = "gameplay.mainline_play_pokemon_moves";
const favourites = "gameplay.user_favourite_pokemon";
const plays = "gameplay.mainline_plays";
const planLinks = "planning.mainline_play_plan_links";

/* The links of the app's real tables, as a device has them. */
let db: PGlite;
let shape: IdChangeShape;

beforeAll(async () => {
  db = await createTestDevice();
  shape = await readIdChangeShape(db);
});

afterAll(async () => {
  await db.close();
});

const keyOf = (table: string, row: UserRow) =>
  rowKeyOf(row, shape.tables.find((item) => item.name === table)!.keyColumns);

const added = (
  table: string,
  row: UserRow,
  changedAt = "2026-11-01T10:00:00.000000+00:00",
): ChangeRecord => ({
  baseChangedAt: changedAt,
  changedAt,
  column: "",
  deleted: false,
  key: keyOf(table, row),
  table,
});

const deleted = (table: string, row: UserRow): ChangeRecord => ({
  ...added(table, row, "2026-11-02T10:00:00.000000+00:00"),
  deleted: true,
});

const tick = (milestoneId: number) => ({
  milestone_id: milestoneId,
  play_id: playId,
});

const moment = (id: string, milestoneId: number | null) => ({
  id,
  milestone_id: milestoneId,
  play_id: playId,
  title: `Moment ${id.slice(-1)}`,
});

/* Records in a fixed order: their order means nothing. */
const sortRecords = (snapshot: SyncSnapshot): SyncSnapshot => ({
  ...snapshot,
  changes: [...snapshot.changes].sort((left, right) =>
    `${left.table} ${left.key} ${left.column}`.localeCompare(
      `${right.table} ${right.key} ${right.column}`,
    ),
  ),
});

const apply = (
  snapshot: SyncSnapshot,
  changes: IdChange[],
  targets: IdChangeTargets = new Map(),
) => sortRecords(applyIdChanges(snapshot, changes, { shape, targets }));

const merge = (table: string, id: string, becomes: string | null) => ({
  becomes,
  id,
  table,
});

describe("applyIdChanges", () => {
  it("moves a ticked milestone and its moment to the new ID, with their change times", () => {
    const snapshot: SyncSnapshot = {
      changes: [
        added(progress, tick(10)),
        { ...added(progress, tick(10)), column: "notes" },
        added(events, moment(momentA, 10)),
      ],
      tables: {
        [events]: [moment(momentA, 10)],
        [progress]: [{ ...tick(10), notes: "Beat Brock." }],
      },
    };

    expect(apply(snapshot, [merge(milestones, "10", "11")])).toEqual({
      changes: [
        added(events, moment(momentA, 10)),
        added(progress, tick(11)),
        { ...added(progress, tick(11)), column: "notes" },
      ],
      tables: {
        [events]: [moment(momentA, 11)],
        [progress]: [{ ...tick(11), notes: "Beat Brock." }],
      },
    });
  });

  it("keeps the row already on the new ID when both were ticked", () => {
    const snapshot: SyncSnapshot = {
      changes: [added(progress, tick(10)), added(progress, tick(11))],
      tables: {
        [events]: [moment(momentA, 10), moment(momentB, 11)],
        [progress]: [tick(10), tick(11)],
      },
    };

    expect(apply(snapshot, [merge(milestones, "10", "11")])).toEqual({
      changes: [added(progress, tick(11))],
      tables: {
        /* Both moments stay; the merged one keeps its title, not its link. */
        [events]: [moment(momentA, null), moment(momentB, 11)],
        [progress]: [tick(11)],
      },
    });
  });

  it("lets a removed milestone's progress and decision go, and keeps its moment", () => {
    const snapshot: SyncSnapshot = {
      changes: [added(progress, tick(10)), added(events, moment(momentA, 10))],
      tables: {
        [decisions]: [{ ...tick(10), decision_option_id: 3 }],
        [events]: [moment(momentA, 10)],
        [progress]: [tick(10), tick(12)],
      },
    };

    expect(apply(snapshot, [merge(milestones, "10", null)])).toEqual({
      changes: [added(events, moment(momentA, 10))],
      tables: {
        [decisions]: [],
        [events]: [moment(momentA, null)],
        [progress]: [tick(12)],
      },
    });
  });

  it("follows a chain of changes in order", () => {
    const snapshot: SyncSnapshot = {
      changes: [],
      tables: { [progress]: [tick(10)] },
    };

    expect(
      apply(snapshot, [
        merge(milestones, "10", "11"),
        merge(milestones, "11", "12"),
      ]).tables,
    ).toEqual({ [progress]: [tick(12)] });
  });

  it("moves a deleted row's record along, and lets it go with a removed ID", () => {
    const snapshot: SyncSnapshot = {
      changes: [deleted(progress, tick(10)), deleted(progress, tick(20))],
      tables: { [progress]: [] },
    };

    expect(
      apply(snapshot, [
        merge(milestones, "10", "11"),
        merge(milestones, "20", null),
      ]).changes,
    ).toEqual([deleted(progress, tick(11))]);
  });

  it("drops a deleted row's record where a row already is", () => {
    const snapshot: SyncSnapshot = {
      changes: [deleted(progress, tick(10)), added(progress, tick(11))],
      tables: { [progress]: [tick(11)] },
    };

    expect(apply(snapshot, [merge(milestones, "10", "11")])).toEqual({
      changes: [added(progress, tick(11))],
      tables: snapshot.tables,
    });
  });

  it("renames a move, and drops the slot when the Pokémon already knows the new one", () => {
    const slots = [
      { move_id: 5, play_pokemon_id: pokemonId, slot: 1 },
      { move_id: 6, play_pokemon_id: pokemonId, slot: 2 },
    ];
    const snapshot: SyncSnapshot = {
      changes: [],
      tables: { [pokemonMoves]: slots },
    };

    expect(
      apply(snapshot, [merge("reference.moves", "5", "7")]).tables,
    ).toEqual({ [pokemonMoves]: [{ ...slots[0], move_id: 7 }, slots[1]] });
    expect(
      apply(snapshot, [merge("reference.moves", "5", "6")]).tables,
    ).toEqual({ [pokemonMoves]: [slots[1]] });
  });

  it("clears a removed held item and keeps the Pokémon", () => {
    const pokemon = {
      form_id: 25,
      held_item_id: 100,
      id: pokemonId,
      play_id: playId,
      species_id: 25,
    };

    expect(
      apply({ changes: [], tables: { [playPokemon]: [pokemon] } }, [
        merge("reference.items", "100", null),
      ]).tables,
    ).toEqual({ [playPokemon]: [{ ...pokemon, held_item_id: null }] });
  });

  it("refuses to remove what a row can't lose", () => {
    const pokemon = { form_id: 25, id: pokemonId, species_id: 25 };

    expect(() =>
      apply({ changes: [], tables: { [playPokemon]: [pokemon] } }, [
        merge("reference.pokemon_species", "25", null),
      ]),
    ).toThrow(IdChangeError);
  });

  it("takes a form's new species along with it", () => {
    const favourite = { form_id: 25, species_id: 25, user_id: userId };
    const snapshot: SyncSnapshot = {
      changes: [added(favourites, favourite)],
      tables: { [favourites]: [favourite] },
    };
    const targets: IdChangeTargets = new Map([
      ["reference.pokemon_forms\u000030", { id: 30, species_id: 26 }],
    ]);
    const moved = { form_id: 30, species_id: 26, user_id: userId };

    expect(
      apply(snapshot, [merge("reference.pokemon_forms", "25", "30")], targets),
    ).toEqual({
      changes: [added(favourites, moved)],
      tables: { [favourites]: [moved] },
    });
  });

  it("moves what points at a Play along with the Play's new game", () => {
    const play = {
      game_id: 1,
      id: playId,
      user_id: userId,
      version_group_id: 1,
    };
    const link = {
      game_id: 1,
      id: "60000000-0000-4000-8000-000000000001",
      play_id: playId,
      team_plan_id: "70000000-0000-4000-8000-000000000001",
      user_id: userId,
      version_group_id: 1,
    };
    const targets: IdChangeTargets = new Map([
      ["reference.games\u00002", { id: 2, version_group_id: 1 }],
    ]);

    expect(
      apply(
        { changes: [], tables: { [planLinks]: [link], [plays]: [play] } },
        [merge("reference.games", "1", "2")],
        targets,
      ).tables,
    ).toEqual({
      [planLinks]: [{ ...link, game_id: 2 }],
      [plays]: [{ ...play, game_id: 2 }],
    });
  });

  it("drops a game from your library when the game it merged into is there", () => {
    const library = "gameplay.user_game_library_entries";
    const entry = (gameId: number) => ({
      game_id: gameId,
      library_status_id: 1,
      user_id: userId,
    });
    const snapshot: SyncSnapshot = {
      changes: [added(library, entry(1)), added(library, entry(2))],
      tables: { [library]: [entry(1), entry(2)] },
    };

    expect(apply(snapshot, [merge("reference.games", "1", "2")])).toEqual({
      changes: [added(library, entry(2))],
      tables: { [library]: [entry(2)] },
    });
  });

  it("refuses an ID with the wrong number of parts", () => {
    expect(() =>
      apply({ changes: [], tables: {} }, [
        merge("reference.game_content_scopes", "31", "32"),
      ]),
    ).toThrow("have 2 parts");
  });

  it("changes nothing without ID changes", () => {
    const snapshot: SyncSnapshot = {
      changes: [],
      tables: { [progress]: [tick(10)] },
    };

    expect(applyIdChanges(snapshot, [], { shape, targets: new Map() })).toBe(
      snapshot,
    );
  });
});

describe("droppableTables", () => {
  it("names only tables of yours that point at game data", () => {
    for (const table of droppableTables) {
      expect(shape.gameLinks.some((link) => link.child === table)).toBe(true);
    }
  });
});

describe("findPendingIdChanges", () => {
  const first = merge(milestones, "10", "11");
  const second = merge(milestones, "20", null);

  it("returns the entries the device hasn't applied", () => {
    expect(findPendingIdChanges([], [first, second])).toEqual([first, second]);
    expect(findPendingIdChanges([first], [first, second])).toEqual([second]);
    expect(findPendingIdChanges([first, second], [first, second])).toEqual([]);
  });

  it("has nothing for an older list, which stops short of the device's", () => {
    expect(findPendingIdChanges([first, second], [first])).toEqual([]);
  });

  it("refuses a list that changed an entry the device followed", () => {
    expect(() =>
      findPendingIdChanges([first], [{ ...first, becomes: "12" }]),
    ).toThrow(IdChangeError);
    expect(() =>
      findPendingIdChanges([first, second], [{ ...first, id: "9" }]),
    ).toThrow(IdChangeError);
  });
});
