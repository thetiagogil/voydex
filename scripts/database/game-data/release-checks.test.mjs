import { PGlite } from "@electric-sql/pglite";
import { describe, expect, it } from "vitest";

import {
  findIdChangeProblems,
  findIdProblems,
  findSchemaProblems,
  readDroppableTables,
  readReleaseIds,
  readUserLinks,
} from "./release-checks.mjs";

const lastRelease = {
  deviceUpdate: "0001-first.sql",
  ids: {
    "reference.moves": { 1: "pound", 2: "karate-chop" },
    "reference.game_content_scopes": { "31:18": "" },
  },
  releasedAt: "2027-01-01T00:00:00.000Z",
  schemaHash: "a".repeat(64),
};

describe("findIdProblems", () => {
  const ids = {
    "reference.moves": { 1: "pound", 2: "karate-chop", 3: "double-slap" },
    "reference.game_content_scopes": { "31:18": "" },
  };

  it("passes before the first release is recorded", () => {
    expect(
      findIdProblems({ idChanges: [], ids: {}, lastRelease: null }),
    ).toEqual([]);
  });

  it("passes when every ID stays and new ones arrive", () => {
    expect(findIdProblems({ idChanges: [], ids, lastRelease })).toEqual([]);
  });

  it("fails when an ID disappears", () => {
    expect(
      findIdProblems({
        idChanges: [],
        ids: { ...ids, "reference.game_content_scopes": {} },
        lastRelease,
      }),
    ).toEqual(["reference.game_content_scopes 31:18 (no slug) is gone."]);
  });

  it("fails when an ID is reused for something else", () => {
    expect(
      findIdProblems({
        idChanges: [],
        ids: {
          ...ids,
          "reference.moves": { 1: "pound", 2: "mega-punch" },
        },
        lastRelease,
      }),
    ).toEqual(["reference.moves 2 was karate-chop and is now mega-punch."]);
  });

  it("passes a removed or reused ID listed in the ID changes", () => {
    expect(
      findIdProblems({
        idChanges: [
          {
            becomes: "1",
            id: "2",
            reason: "Merged into Pound.",
            table: "reference.moves",
          },
        ],
        ids: { ...ids, "reference.moves": { 1: "pound" } },
        lastRelease,
      }),
    ).toEqual([]);
  });
});

describe("findIdChangeProblems", () => {
  const link = (child, parent, keyColumns = ["id"], extra = {}) => ({
    carries: [],
    child,
    keyColumns,
    nullable: false,
    parent,
    unique: false,
    ...extra,
  });
  const links = [
    link("gameplay.mainline_play_pokemon_moves", "reference.moves", ["id"], {
      unique: true,
    }),
    link("gameplay.mainline_play_pokemon", "reference.pokemon_species"),
    link(
      "gameplay.mainline_play_optional_content_scopes",
      "reference.game_content_scopes",
      ["game_id", "version_group_id"],
    ),
    link("gameplay.user_game_library_entries", "reference.games", ["id"], {
      unique: true,
    }),
    link("gameplay.user_favourite_pokemon", "reference.pokemon_forms", ["id"], {
      carries: ["reference.pokemon_species"],
    }),
  ];
  const ids = {
    "reference.game_content_scopes": { "31:18": "", "32:18": "" },
    "reference.moves": { 1: "pound", 3: "double-slap" },
    "reference.games": { 1: "red", 2: "blue" },
    "reference.pokemon_forms": { 25: "pikachu" },
    "reference.pokemon_species": { 25: "pikachu", 26: "raichu" },
  };
  const droppable = new Set(["gameplay.mainline_play_pokemon_moves"]);
  const change = (table, id, becomes) => ({
    becomes,
    id,
    reason: "Merged.",
    table,
  });
  const check = (idChanges, release = null) =>
    findIdChangeProblems({
      droppable,
      idChanges,
      ids,
      lastRelease: release,
      links,
    });

  it("passes an empty list, a merge, a removal rows can lose and a chain", () => {
    expect(check([])).toEqual([]);
    expect(
      check([
        change("reference.moves", "2", "1"),
        change("reference.moves", "4", null),
        change("reference.game_content_scopes", "30:18", "31:18"),
        change("reference.moves", "5", "6"),
        change("reference.moves", "6", "3"),
      ]),
    ).toEqual([]);
  });

  it("fails an entry that changes or drops one already shipped", () => {
    const shipped = {
      ...lastRelease,
      idChanges: [change("reference.moves", "2", "1")],
    };

    expect(check([change("reference.moves", "2", "1")], shipped)).toEqual([]);
    expect(check([change("reference.moves", "2", "3")], shipped)).toEqual([
      expect.stringContaining("already shipped"),
    ]);
    expect(check([], shipped)).toEqual([
      expect.stringContaining("already shipped"),
    ]);
  });

  it("fails an ID to become that isn't there", () => {
    expect(check([change("reference.moves", "2", "9")])).toEqual([
      "ID change 1 (reference.moves 2) becomes 9, which isn't there.",
    ]);
  });

  it("fails a removal rows can't lose", () => {
    expect(check([change("reference.pokemon_species", "26", null)])).toContain(
      "ID change 1 (reference.pokemon_species 26) is removed, but rows of gameplay.mainline_play_pokemon can't lose it; give it an ID to become.",
    );
  });

  it("fails an ID of the wrong shape, a table user data doesn't point at, and an entry to itself", () => {
    expect(
      check([
        change("reference.game_content_scopes", "30", "31:18"),
        change("reference.colours", "1", "2"),
        change("reference.moves", "1", "1"),
      ]),
    ).toEqual([
      expect.stringContaining('"30" doesn\'t fit'),
      expect.stringContaining("holds no game data IDs"),
      "ID change 3 (reference.moves 1) becomes itself.",
    ]);
  });

  it("fails a merge where a row already on the new ID would be in the way and can't go", () => {
    expect(check([change("reference.games", "3", "2")])).toEqual([
      expect.stringContaining(
        "a row of gameplay.user_game_library_entries already on 2 would be in the way",
      ),
    ]);
    /* The same clash in a table whose rows can go is fine. */
    expect(check([change("reference.moves", "2", "1")])).toEqual([]);
  });

  it("fails an entry for IDs rows carry through another table's link", () => {
    expect(check([change("reference.pokemon_species", "24", "25")])).toEqual([
      expect.stringContaining(
        "rows of gameplay.user_favourite_pokemon carry reference.pokemon_species IDs",
      ),
    ]);
  });

  it("fails a new entry for an ID that kept its meaning", () => {
    expect(
      check([change("reference.moves", "1", "3")], {
        ...lastRelease,
        ids: { "reference.moves": { 1: "pound" } },
      }),
    ).toEqual([expect.stringContaining("still means pound")]);
  });
});

describe("readDroppableTables", () => {
  it("names only tables of yours", () => {
    for (const table of readDroppableTables()) {
      expect(table).toMatch(/^(gameplay|planning)\.[a-z_]+$/);
    }
  });
});

describe("findSchemaProblems", () => {
  it("passes before the first release is recorded", () => {
    expect(
      findSchemaProblems({
        deviceUpdates: [],
        lastRelease: null,
        schemaHash: "b".repeat(64),
      }),
    ).toEqual([]);
  });

  it("passes an unchanged schema", () => {
    expect(
      findSchemaProblems({
        deviceUpdates: ["0001-first.sql"],
        lastRelease,
        schemaHash: lastRelease.schemaHash,
      }),
    ).toEqual([]);
  });

  it("fails a changed schema with no new device update", () => {
    expect(
      findSchemaProblems({
        deviceUpdates: ["0001-first.sql"],
        lastRelease,
        schemaHash: "b".repeat(64),
      }),
    ).toEqual([expect.stringContaining("no new device update")]);
  });

  it("passes a changed schema with a new device update", () => {
    expect(
      findSchemaProblems({
        deviceUpdates: ["0001-first.sql", "0002-add-notes.sql"],
        lastRelease,
        schemaHash: "b".repeat(64),
      }),
    ).toEqual([]);
  });

  it("fails when a shipped device update is removed", () => {
    expect(
      findSchemaProblems({
        deviceUpdates: ["0002-add-notes.sql"],
        lastRelease,
        schemaHash: "b".repeat(64),
      }),
    ).toEqual([expect.stringContaining("0001-first.sql shipped")]);
  });
});

describe("readReleaseIds", () => {
  it("reads the seeded IDs user data points at, with their slugs", async () => {
    const db = await PGlite.create();

    await db.exec(`
      CREATE SCHEMA reference;
      CREATE SCHEMA gameplay;
      CREATE TABLE reference.moves (id integer PRIMARY KEY, slug text NOT NULL);
      CREATE TABLE reference.scopes (game_id integer, version_group_id integer,
        PRIMARY KEY (game_id, version_group_id));
      CREATE TABLE reference.colours (id integer PRIMARY KEY, slug text NOT NULL);
      CREATE TABLE gameplay.picks (
        id integer PRIMARY KEY,
        move_id integer REFERENCES reference.moves (id),
        game_id integer,
        version_group_id integer,
        FOREIGN KEY (game_id, version_group_id) REFERENCES reference.scopes);
      INSERT INTO reference.moves VALUES (2, 'karate-chop'), (1, 'pound');
      INSERT INTO reference.scopes VALUES (31, 18);
      INSERT INTO reference.colours VALUES (1, 'red');
    `);

    /* Colours are game data no user row points at, so they may change. */
    await expect(readReleaseIds(db)).resolves.toEqual({
      "reference.moves": { 1: "pound", 2: "karate-chop" },
      "reference.scopes": { "31:18": "" },
    });
    await db.close();
  });
});

describe("readUserLinks", () => {
  it("reads each link from user data to a keyed table, and whether it may be empty", async () => {
    const db = await PGlite.create();

    await db.exec(`
      CREATE SCHEMA reference;
      CREATE SCHEMA gameplay;
      CREATE TABLE reference.moves (id integer PRIMARY KEY);
      CREATE TABLE reference.scopes (game_id integer, version_group_id integer,
        PRIMARY KEY (game_id, version_group_id));
      CREATE TABLE reference.regions (id integer PRIMARY KEY);
      CREATE TABLE reference.forms (id integer PRIMARY KEY,
        region_id integer REFERENCES reference.regions, UNIQUE (region_id, id));
      CREATE TABLE gameplay.picks (
        id integer PRIMARY KEY,
        move_id integer REFERENCES reference.moves (id) UNIQUE,
        game_id integer NOT NULL,
        version_group_id integer NOT NULL,
        region_id integer NOT NULL,
        form_id integer NOT NULL,
        FOREIGN KEY (game_id, version_group_id) REFERENCES reference.scopes,
        /* Holds the row's own key: never a clash. */
        UNIQUE (id, game_id),
        FOREIGN KEY (region_id, form_id) REFERENCES reference.forms (region_id, id));
    `);

    await expect(readUserLinks(db)).resolves.toEqual([
      {
        carries: ["reference.regions"],
        child: "gameplay.picks",
        keyColumns: ["id"],
        nullable: false,
        parent: "reference.forms",
        unique: false,
      },
      {
        carries: [],
        child: "gameplay.picks",
        keyColumns: ["id"],
        nullable: true,
        parent: "reference.moves",
        unique: true,
      },
      {
        carries: [],
        child: "gameplay.picks",
        keyColumns: ["game_id", "version_group_id"],
        nullable: false,
        parent: "reference.scopes",
        unique: false,
      },
    ]);
    await db.close();
  });
});
