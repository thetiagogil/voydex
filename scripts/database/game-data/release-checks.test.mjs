import { PGlite } from "@electric-sql/pglite";
import { describe, expect, it } from "vitest";

import {
  findIdChangeProblems,
  findIdProblems,
  findSchemaProblems,
  readReleaseIds,
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
  it("passes an empty ID changes list", () => {
    expect(findIdChangeProblems([])).toEqual([]);
  });

  it("fails while devices can't apply an ID change", () => {
    expect(
      findIdChangeProblems([
        {
          becomes: "13",
          id: "12",
          reason: "Merged.",
          table: "reference.moves",
        },
      ]),
    ).toEqual([expect.stringContaining("can't apply ID changes")]);
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
