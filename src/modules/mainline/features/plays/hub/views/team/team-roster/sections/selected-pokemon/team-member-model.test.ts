import { describe, expect, it } from "vitest";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";

import {
  getTeamMemberFacts,
  getTeamMemberMeta,
  getTeamMoves,
  getTeamNatureEffectSummary,
} from "./team-member-model";

const modernGame = resolveGameMechanics({
  gameId: 1,
  generationId: 8,
  versionGroupId: 1,
});
const firstGenerationGame = resolveGameMechanics({
  gameId: 1,
  generationId: 1,
  versionGroupId: 1,
});

const buddy = {
  abilityEffectSummary: "Powers up Grass-type moves when HP is low.",
  ability_name: "Overgrow",
  ball_item_name: "Poké Ball",
  form_name: "Rillaboom",
  gender: "male",
  held_item_name: "Miracle Seed",
  is_default_form: true,
  level: 48,
  met_level: 5,
  met_location_label: "Slumbering Weald",
  natureDecreasedStat: "special_attack",
  natureIncreasedStat: "attack",
  nature_name: "Adamant",
  nickname: "Buddy",
  roster_state_slug: "active",
  slot: 1,
  species_name: "Rillaboom",
} as MainlinePlayTeamMember;

describe("getTeamNatureEffectSummary", () => {
  it("formats raised and lowered stats without relying on color", () => {
    expect(
      getTeamNatureEffectSummary({
        natureDecreasedStat: "special_defense",
        natureIncreasedStat: "speed",
        nature_name: "Naive",
      } as MainlinePlayTeamMember),
    ).toBe("+Speed · −Sp. Def");
  });

  it("describes neutral natures and omits an unrecorded nature", () => {
    expect(
      getTeamNatureEffectSummary({
        natureDecreasedStat: null,
        natureIncreasedStat: null,
        nature_name: "Serious",
      } as MainlinePlayTeamMember),
    ).toBe("No stat changes");
    expect(
      getTeamNatureEffectSummary({
        nature_name: null,
      } as MainlinePlayTeamMember),
    ).toBeNull();
  });
});

describe("getTeamMemberMeta", () => {
  it("reads species, level, gender and position", () => {
    expect(getTeamMemberMeta(buddy, modernGame)).toBe(
      "Rillaboom · Lv. 48 · Male · Slot 1",
    );
    expect(
      getTeamMemberMeta(
        {
          ...buddy,
          gender: "unknown",
          nickname: null,
          roster_state_slug: "reserve",
          slot: 8,
        },
        modernGame,
      ),
    ).toBe("Lv. 48 · Reserve");
  });

  it("leaves gender out of games without it", () => {
    expect(getTeamMemberMeta(buddy, firstGenerationGame)).toBe(
      "Rillaboom · Lv. 48 · Slot 1",
    );
  });
});

describe("getTeamMemberFacts", () => {
  it("lists only recorded facts the game supports", () => {
    expect(getTeamMemberFacts(buddy, modernGame)).toEqual([
      { detail: "+Attack · −Sp. Atk", label: "Nature", value: "Adamant" },
      {
        detail: "Powers up Grass-type moves when HP is low.",
        label: "Ability",
        value: "Overgrow",
      },
      { detail: null, label: "Held item", value: "Miracle Seed" },
      {
        detail: "Lv. 5 · Poké Ball",
        label: "Met",
        value: "Slumbering Weald",
      },
    ]);
    expect(getTeamMemberFacts(buddy, firstGenerationGame)).toEqual([
      {
        detail: "Lv. 5 · Poké Ball",
        label: "Met",
        value: "Slumbering Weald",
      },
    ]);
  });

  it("keeps the met level and ball when the location is missing", () => {
    expect(
      getTeamMemberFacts(
        {
          ...buddy,
          ability_name: null,
          held_item_name: null,
          met_location_label: null,
          nature_name: null,
        },
        modernGame,
      ),
    ).toEqual([{ detail: null, label: "Met", value: "Lv. 5 · Poké Ball" }]);
  });
});

describe("getTeamMoves", () => {
  it("lists only recorded moves, in the order the Pokémon knows them", () => {
    const electricType = {
      id: 13,
      name: "Electric",
      slug: "electric",
    } as MainlinePlayTeamMove["type"];

    expect(
      getTeamMoves([
        {
          attributes: { damage_class: "status" },
          name: "Thunder Wave",
          slot: 3,
          type: electricType,
        } as MainlinePlayTeamMove,
        {
          attributes: { damage_class: "special" },
          name: "Thunderbolt",
          slot: 1,
          type: electricType,
        } as MainlinePlayTeamMove,
      ]),
    ).toEqual([
      {
        isStatus: false,
        name: "Thunderbolt",
        position: 1,
        type: electricType,
      },
      {
        isStatus: true,
        name: "Thunder Wave",
        position: 3,
        type: electricType,
      },
    ]);
  });
});
