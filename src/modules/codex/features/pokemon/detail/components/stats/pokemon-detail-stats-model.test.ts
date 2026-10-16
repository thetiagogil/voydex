import { describe, expect, it } from "vitest";

import {
  getPokemonDetailStatPolygon,
  getPokemonDetailStats,
} from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-model";
import type { Generation, PokemonAttributes } from "@/modules/reference/types";

const attributes = {
  base_attack: 110,
  base_defense: 80,
  base_hp: 90,
  base_special_attack: 100,
  base_special_defense: 80,
  base_speed: 95,
} as PokemonAttributes;

const generation = (sortOrder: number) =>
  ({ sort_order: sortOrder }) as Generation;

const shapeOf = (sortOrder: number) =>
  getPokemonDetailStatPolygon({
    centre: { x: 0, y: 0 },
    radius: 100,
    stats: getPokemonDetailStats(attributes, generation(sortOrder)),
  });

describe("getPokemonDetailStatPolygon", () => {
  it("goes round as the games do, HP straight up", () => {
    const shape = shapeOf(8);

    expect(shape.map(({ stat }) => stat.label)).toEqual([
      "HP",
      "Attack",
      "Defense",
      "Speed",
      "Sp. Def",
      "Sp. Atk",
    ]);
    expect(shape[0]?.point.x).toBeCloseTo(0);
    expect(shape[0]?.point.y).toBeCloseTo(-56.25);
  });

  it("draws Generation I's single Special as a five-cornered shape", () => {
    expect(shapeOf(1).map(({ stat }) => stat.label)).toEqual([
      "HP",
      "Attack",
      "Defense",
      "Speed",
      "Special",
    ]);
  });

  it("stops a stat past the scale at the outer ring", () => {
    const [hp] = getPokemonDetailStatPolygon({
      centre: { x: 0, y: 0 },
      radius: 100,
      stats: getPokemonDetailStats(
        { ...attributes, base_hp: 255 },
        generation(8),
      ),
    });

    expect(hp?.point.y).toBeCloseTo(-100);
  });
});
