import { describe, expect, it } from "vitest";

import {
  buildOverviewLatestCatches,
  getLatestCatchForms,
  LATEST_CATCH_COUNT,
  pickLatestCatchRows,
  type OverviewCatchForm,
  type OverviewCatchRow,
} from "./latest-catches-mapper";

const row = (
  speciesId: number,
  caughtAt: string | null,
  displayFormId: number | null = null,
): OverviewCatchRow => ({
  caught_at: caughtAt,
  display_form_id: displayFormId,
  species_id: speciesId,
  species_name: `Species ${speciesId}`,
});

const form = (
  id: number,
  speciesId: number,
  name: string,
  isDefault = true,
): OverviewCatchForm => ({
  form_order: isDefault ? 1 : 2,
  id,
  is_default: isDefault,
  name,
  slug: name.toLowerCase().replaceAll(" ", "-"),
  species_id: speciesId,
});

describe("pickLatestCatchRows", () => {
  it("puts the newest catch first and keeps each species once", () => {
    const picked = pickLatestCatchRows([
      row(1, "2026-01-01T10:00:00Z"),
      row(2, "2026-01-03T10:00:00Z"),
      /* The same species in a second Pokédex. */
      row(2, "2026-01-03T10:00:00Z"),
      row(3, "2026-01-02T10:00:00Z"),
    ]);

    expect(picked.map((item) => item.species_id)).toEqual([2, 3, 1]);
  });

  it("leaves out an entry with no catch time and stops at six", () => {
    const picked = pickLatestCatchRows([
      row(99, null),
      ...Array.from({ length: 9 }, (_, index) =>
        row(index + 1, `2026-01-0${index + 1}T10:00:00Z`),
      ),
    ]);

    expect(picked).toHaveLength(LATEST_CATCH_COUNT);
    expect(picked.map((item) => item.species_id)).not.toContain(99);
    expect(picked[0]?.species_id).toBe(9);
  });
});

describe("getLatestCatchForms", () => {
  const forms = [
    form(1440, 144, "Articuno"),
    form(1441, 144, "Galarian Articuno", false),
  ];

  it("draws a catch as its default form when its Pokédex names none", () => {
    expect(
      getLatestCatchForms([row(144, "2026-01-01T10:00:00Z")], forms).get(144)
        ?.name,
    ).toBe("Articuno");
  });

  it("draws a catch as the form its Pokédex shows", () => {
    expect(
      getLatestCatchForms([row(144, "2026-01-01T10:00:00Z", 1441)], forms).get(
        144,
      )?.name,
    ).toBe("Galarian Articuno");
  });
});

describe("buildOverviewLatestCatches", () => {
  const rows = [row(35, "2026-01-01T10:00:00Z")];
  const forms = getLatestCatchForms(rows, [form(350, 35, "Clefairy")]);

  it("gives each catch its art and the tint of its newest type", () => {
    const catches = buildOverviewLatestCatches(rows, forms, {
      attributes: [
        {
          form_id: 350,
          generation_start_id: 1,
          primary_type_id: 1,
          secondary_type_id: null,
        },
        {
          form_id: 350,
          generation_start_id: 6,
          primary_type_id: 18,
          secondary_type_id: null,
        },
      ],
      forms: [],
      types: [
        { id: 1, name: "Normal", slug: "normal" },
        { id: 18, name: "Fairy", slug: "fairy" },
      ],
    });

    expect(catches).toEqual([
      {
        imageUrl: expect.stringContaining("clefairy.webp"),
        name: "Species 35",
        speciesId: 35,
        typeSlug: "fairy",
      },
    ]);
  });

  it("still lists a catch when its form or types were not read", () => {
    expect(buildOverviewLatestCatches(rows, new Map(), null)).toEqual([
      { imageUrl: null, name: "Species 35", speciesId: 35, typeSlug: null },
    ]);
  });
});
