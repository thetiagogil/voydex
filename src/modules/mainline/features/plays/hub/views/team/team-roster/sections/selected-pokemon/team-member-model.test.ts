import { describe, expect, it } from "vitest";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type { MemberBattleForm } from "@/modules/reference/features/pokemon/data/battle-mechanics";

import {
  canEditTeamMember,
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
const xy = resolveGameMechanics({
  gameId: 24,
  generationId: 6,
  versionGroupId: 13,
});
const letsGo = resolveGameMechanics({
  gameId: 29,
  generationId: 7,
  versionGroupId: 17,
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

  it("says when a Pokémon has left the roster", () => {
    expect(
      getTeamMemberMeta(
        { ...buddy, roster_state_slug: "retired", slot: null },
        modernGame,
      ),
    ).toBe("Rillaboom · Lv. 48 · Male · Retired");
    expect(
      getTeamMemberMeta(
        { ...buddy, roster_state_slug: "replaced", slot: null },
        modernGame,
      ),
    ).toBe("Rillaboom · Lv. 48 · Male · Replaced");
  });

  it("leaves gender out of games without it", () => {
    expect(getTeamMemberMeta(buddy, firstGenerationGame)).toBe(
      "Rillaboom · Lv. 48 · Slot 1",
    );
  });
});

describe("canEditTeamMember", () => {
  it("edits only Pokémon still on the team or in reserve", () => {
    expect(canEditTeamMember(buddy)).toBe(true);
    expect(canEditTeamMember({ ...buddy, roster_state_slug: "reserve" })).toBe(
      true,
    );
    expect(canEditTeamMember({ ...buddy, roster_state_slug: "retired" })).toBe(
      false,
    );
    expect(canEditTeamMember({ ...buddy, roster_state_slug: "replaced" })).toBe(
      false,
    );
  });
});

describe("getTeamMemberFacts", () => {
  it("lists the facts the game supports", () => {
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
    ).toEqual([
      { detail: null, empty: true, label: "Nature", value: "Not recorded" },
      { detail: null, empty: true, label: "Ability", value: "Not recorded" },
      { detail: null, empty: true, label: "Held item", value: "None" },
      { detail: null, label: "Met", value: "Lv. 5 · Poké Ball" },
    ]);
  });

  describe("in a battle form", () => {
    const megaForm = {
      abilityName: "Tough Claws",
      formId: 601,
      label: "Mega X",
      maxMoves: null,
      mechanic: "mega-evolution",
      name: "Mega Charizard X",
      primaryType: null,
      secondaryType: null,
      slug: "mega-charizard-x",
      statChanges: [
        { change: 46, key: "attack" },
        { change: 21, key: "specialAttack" },
      ],
      warning: null,
    } satisfies MemberBattleForm;

    it("shows the form's ability and what it changes", () => {
      expect(
        getTeamMemberFacts(buddy, xy, megaForm).map(({ label, value }) => [
          label,
          value,
        ]),
      ).toEqual([
        ["Nature", "Adamant"],
        ["Ability", "Tough Claws"],
        ["Held item", "Miracle Seed"],
        ["Stat changes", "Atk +46 · Sp. Atk +21"],
        ["Met", "Slumbering Weald"],
      ]);
    });

    it("shows no ability in a game without abilities (Let's Go)", () => {
      expect(
        getTeamMemberFacts(buddy, letsGo, megaForm).map(({ label }) => label),
      ).not.toContain("Ability");
    });
  });

  it("adds the Tera Type in Scarlet / Violet, recorded or not", () => {
    const scarlet = resolveGameMechanics({
      gameId: 36,
      generationId: 9,
      versionGroupId: 23,
    });

    expect(
      getTeamMemberFacts({ ...buddy, tera_type_name: "Ghost" }, scarlet).find(
        (fact) => fact.label === "Tera Type",
      )?.value,
    ).toBe("Ghost");
    expect(
      getTeamMemberFacts(buddy, scarlet).find(
        (fact) => fact.label === "Tera Type",
      ),
    ).toMatchObject({ empty: true, value: "Not recorded" });
    expect(
      getTeamMemberFacts(buddy, modernGame).map(({ label }) => label),
    ).not.toContain("Tera Type");
  });

  it("keeps every supported fact in place when nothing is recorded", () => {
    expect(
      getTeamMemberFacts(
        {
          ...buddy,
          ability_name: null,
          ball_item_name: null,
          held_item_name: null,
          met_level: null,
          met_location_label: null,
          nature_name: null,
        },
        modernGame,
      ).map(({ label, value }) => [label, value]),
    ).toEqual([
      ["Nature", "Not recorded"],
      ["Ability", "Not recorded"],
      ["Held item", "None"],
      ["Met", "Not recorded"],
    ]);
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
