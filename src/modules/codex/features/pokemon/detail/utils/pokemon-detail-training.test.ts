import { describe, expect, it } from "vitest";

import type {
  GrowthRate,
  PokemonTrainingAttributes,
} from "@/modules/reference/types";

import {
  formatEvYield,
  selectPokemonDetailTrainingRow,
  toPokemonDetailTraining,
} from "./pokemon-detail-training";

/* Red / Blue (1), Gold / Silver (3), Sword / Shield (18) and its Crown Tundra (20), Brilliant Diamond (21). */
const versionGroups = [
  { generation_id: 1, id: 1, parent_version_group_id: null, sort_order: 1 },
  { generation_id: 1, id: 2, parent_version_group_id: null, sort_order: 2 },
  { generation_id: 2, id: 3, parent_version_group_id: null, sort_order: 1 },
  { generation_id: 8, id: 18, parent_version_group_id: null, sort_order: 1 },
  { generation_id: 8, id: 20, parent_version_group_id: 18, sort_order: 3 },
  { generation_id: 8, id: 21, parent_version_group_id: null, sort_order: 4 },
];

const row = (
  fields: Partial<PokemonTrainingAttributes>,
): PokemonTrainingAttributes => ({
  base_experience: 82,
  base_friendship: 70,
  catch_rate: 190,
  created_at: "",
  ev_attack: 0,
  ev_defense: 0,
  ev_hp: 0,
  ev_special_attack: 0,
  ev_special_defense: 0,
  ev_speed: 2,
  form_id: 2500,
  growth_rate_id: 3,
  species_id: 25,
  version_group_start_id: 5,
  ...fields,
});

/* Pikachu: Red / Blue, then Yellow's catch rate, then Gold / Silver's, then Sword / Shield's friendship. */
const rows = [
  row({
    base_friendship: null,
    ev_hp: null,
    ev_speed: null,
    version_group_start_id: 1,
  }),
  row({
    base_friendship: null,
    catch_rate: 163,
    ev_hp: null,
    ev_speed: null,
    version_group_start_id: 2,
  }),
  row({ ev_hp: null, ev_speed: null, version_group_start_id: 3 }),
  row({ base_friendship: 50, version_group_start_id: 18 }),
  row({ form_id: 2501, version_group_start_id: 18 }),
];

describe("selectPokemonDetailTrainingRow", () => {
  const select = (versionGroupId: number, formId = 2500) =>
    selectPokemonDetailTrainingRow({
      formId,
      rows,
      versionGroupId,
      versionGroups,
    });

  it("reads the latest row at or before the game in release order", () => {
    expect(select(1)?.catch_rate).toBe(190);
    expect(select(2)?.catch_rate).toBe(163);
    /* Gold / Silver restores the catch rate and brings friendship. */
    expect(select(3)).toMatchObject({ base_friendship: 70, catch_rate: 190 });
    expect(select(18)?.base_friendship).toBe(50);
  });

  it("reads an expansion as its base game, and a later game in the same generation carries the row", () => {
    expect(select(20)?.base_friendship).toBe(50);
    expect(select(21)?.base_friendship).toBe(50);
  });

  it("is null for a form or game with no row yet", () => {
    expect(select(1, 2501)).toBeNull();
    expect(select(99)).toBeNull();
  });
});

describe("toPokemonDetailTraining", () => {
  const growthRates = [
    { id: 3, level_100_experience: 1000000, name: "Medium Fast" },
  ] as GrowthRate[];

  it("names the growth rate and lists the EV yield as stats", () => {
    const training = toPokemonDetailTraining(
      row({ ev_attack: 1, ev_speed: 1 }),
      growthRates,
    );

    expect(training).toMatchObject({
      baseExperience: 82,
      baseFriendship: 70,
      catchRate: 190,
      growthRate: { levelOneHundredExperience: 1000000, name: "Medium Fast" },
    });
    expect(formatEvYield(training.evYield ?? [])).toBe("1 Attack, 1 Speed");
  });

  it("has no EV yield where the game counts none", () => {
    expect(
      toPokemonDetailTraining(row({ ev_hp: null, ev_speed: null }), growthRates)
        .evYield,
    ).toBeNull();
  });
});
