import { describe, expect, it } from "vitest";

import {
  findMissingImages,
  knownImageGaps,
  listExpectedImages,
} from "./check-asset-images.mjs";

const rows = [
  {
    table: "reference.pokemon_forms",
    row: { slug: "floette-eternal-flower" },
  },
  { table: "reference.games", row: { slug: "legends-za" } },
  { table: "tracking.mainline_opponents", row: { sprite_slug: "lysandre" } },
  { table: "tracking.mainline_opponents", row: { sprite_slug: null } },
  {
    table: "tracking.mainline_badges",
    row: { sprite_slug: "boulder-badge", kind: "badge" },
  },
  {
    table: "tracking.mainline_badges",
    row: { sprite_slug: "normalium-z", kind: "z-crystal" },
  },
];

describe("asset image check", () => {
  it("asks for every picture of a form, each cover, portrait and gym badge", () => {
    expect(listExpectedImages(rows)).toEqual([
      "badges/boulder-badge.webp",
      "games/covers/legends-za.webp",
      "pokemon/art/normal/floette-eternal-flower.webp",
      "pokemon/art/shiny/floette-eternal-flower.webp",
      "pokemon/home-shiny/md/floette-eternal-flower.webp",
      "pokemon/home-shiny/sm/floette-eternal-flower.webp",
      "pokemon/home/md/floette-eternal-flower.webp",
      "pokemon/home/sm/floette-eternal-flower.webp",
      "trainers/lysandre.webp",
    ]);
  });

  it("reports a form with no pictures", () => {
    const present = new Set(["games/covers/legends-za.webp"]);
    const expected = listExpectedImages(rows.slice(0, 2));

    expect(
      findMissingImages(expected, (image) => present.has(image)).missing,
    ).toEqual(expected.filter((image) => image.startsWith("pokemon/")));
  });

  it("lets known gaps pass and says when one is filled", () => {
    const gap = "pokemon/home-shiny/md/pikachu-cosplay.webp";
    expect(knownImageGaps.has(gap)).toBe(true);

    expect(findMissingImages([gap], () => false)).toEqual({
      missing: [],
      filledGaps: [],
    });
    expect(findMissingImages([gap], () => true)).toEqual({
      missing: [],
      filledGaps: [gap],
    });
  });
});
