import { describe, expect, it } from "vitest";

import { createAuditContext } from "./context.mjs";
import {
  addDuplicateErrors,
  assertContiguousSortOrder,
  compareRowsByColumns,
  parseInserts,
  sourceVerifiedRowsetFingerprint,
  splitTupleValues,
  splitTuples,
} from "./core.mjs";

const seedPath = "database/seeds/02_reference/fixture.sql";

describe("seed audit SQL parsing", () => {
  it("parses commas, escaped apostrophes, nulls, booleans, and integers", () => {
    const context = createAuditContext();

    expect(
      splitTupleValues(
        context,
        "1, 'Farfetch''d, Kanto', NULL, TRUE, false, -7",
      ),
    ).toEqual([1, "Farfetch'd, Kanto", null, true, false, -7]);
    expect(context.errors).toEqual([]);
  });

  it("splits multiple tuples without treating quoted commas as separators", () => {
    const context = createAuditContext();

    expect(splitTuples(context, "(1, 'A'), (2, 'B, C')")).toEqual([
      [1, "A"],
      [2, "B, C"],
    ]);
    expect(context.errors).toEqual([]);
  });

  it("maps insert columns to parsed row values", () => {
    const context = createAuditContext();
    const rows = parseInserts(
      context,
      "INSERT INTO reference.types (id, slug, name) VALUES (1, 'normal', 'Normal'), (2, 'fire', 'Fire');",
      seedPath,
    );

    expect(rows).toEqual([
      {
        filePath: seedPath,
        table: "reference.types",
        row: { id: 1, slug: "normal", name: "Normal" },
      },
      {
        filePath: seedPath,
        table: "reference.types",
        row: { id: 2, slug: "fire", name: "Fire" },
      },
    ]);
    expect(context.errors).toEqual([]);
  });

  it("records malformed and unsupported input as diagnostics", () => {
    const context = createAuditContext();

    splitTupleValues(context, "1, ARRAY[1, 2]");
    splitTuples(context, "(1, 'unterminated)");

    expect(context.errors).toEqual([
      "Unsupported SQL value token: ARRAY[1",
      "Unsupported SQL value token: 2]",
      "Unbalanced tuple or string while parsing seed VALUES block.",
    ]);
  });
});

describe("seed audit reusable rules", () => {
  it("produces a stable rowset fingerprint independent of source order", () => {
    const rows = [
      { row: { id: 2, slug: "fire" } },
      { row: { id: 1, slug: "normal" } },
    ];
    const reversed = rows.toReversed();
    const compareRows = compareRowsByColumns(["id"]);

    expect(
      sourceVerifiedRowsetFingerprint(rows, ["id", "slug"], compareRows),
    ).toBe(
      sourceVerifiedRowsetFingerprint(reversed, ["id", "slug"], compareRows),
    );
  });

  it("reports duplicate values and non-contiguous sort order", () => {
    const context = createAuditContext();
    const rows = [
      { filePath: seedPath, row: { id: 1, sort_order: 1 } },
      { filePath: seedPath, row: { id: 1, sort_order: 3 } },
    ];

    addDuplicateErrors(context, "reference.fixture", rows, "id");
    assertContiguousSortOrder(context, "reference.fixture", rows);

    expect(context.errors).toHaveLength(2);
    expect(context.errors[0]).toContain("duplicate id 1");
    expect(context.errors[1]).toContain("sort_order must be contiguous from 1");
  });
});
