import { describe, expect, it } from "vitest";

import { getPokemonDetailAbilitySlots } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-model";
import type {
  Ability,
  PokemonAttributes,
  VersionGroup,
} from "@/modules/reference/types";

const snowWarning = { id: 117, name: "Snow Warning" } as Ability;
const attributes = {
  hidden_ability_id: null,
  primary_ability_id: 117,
  secondary_ability_id: null,
} as PokemonAttributes;

const slotsFor = (hasHiddenAbilities: boolean) =>
  getPokemonDetailAbilitySlots({
    abilities: [snowWarning],
    abilityAttributes: [],
    attributes,
    currentVersionGroup: null,
    hasHiddenAbilities,
    versionGroups: [] as VersionGroup[],
  });

describe("getPokemonDetailAbilitySlots", () => {
  it("keeps all three slots, an empty one saying None", () => {
    expect(
      slotsFor(true).map((slot) => [
        slot.label,
        slot.ability?.name ?? slot.emptyLabel,
      ]),
    ).toEqual([
      ["Primary", "Snow Warning"],
      ["Secondary", "None"],
      ["Hidden", "None"],
    ]);
  });

  it("says hidden abilities arrive in Generation V before then", () => {
    expect(slotsFor(false)[2]?.emptyLabel).toBe(
      "Hidden abilities arrive in Generation V",
    );
  });

  it("is empty when the Pokémon has no ability at all", () => {
    expect(
      getPokemonDetailAbilitySlots({
        abilities: [],
        abilityAttributes: [],
        attributes: { ...attributes, primary_ability_id: null },
        currentVersionGroup: null,
        hasHiddenAbilities: true,
        versionGroups: [],
      }),
    ).toEqual([]);
  });
});
