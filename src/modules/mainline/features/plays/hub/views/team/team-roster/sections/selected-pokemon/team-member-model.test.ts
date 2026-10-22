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
  getTeamMemberGender,
  getTeamMemberMeta,
  getTeamMoves,
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

describe("getTeamMemberMeta", () => {
  it("reads species and level, with no slot number", () => {
    expect(getTeamMemberMeta(buddy)).toBe("Rillaboom · Lv. 48");
    expect(
      getTeamMemberMeta({
        ...buddy,
        nickname: null,
        roster_state_slug: "reserve",
        slot: 8,
      }),
    ).toBe("Lv. 48 · Reserve");
  });

  it("says when a Pokémon has left the roster", () => {
    expect(
      getTeamMemberMeta({ ...buddy, roster_state_slug: "retired", slot: null }),
    ).toBe("Rillaboom · Lv. 48 · Retired");
    expect(
      getTeamMemberMeta({
        ...buddy,
        roster_state_slug: "replaced",
        slot: null,
      }),
    ).toBe("Rillaboom · Lv. 48 · Replaced");
  });
});

describe("getTeamMemberGender", () => {
  it("gives the recorded gender where the game has genders", () => {
    expect(getTeamMemberGender(buddy, modernGame)).toBe("male");
    expect(
      getTeamMemberGender({ ...buddy, gender: "unknown" }, modernGame),
    ).toBe(null);
    expect(getTeamMemberGender(buddy, firstGenerationGame)).toBeNull();
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
  it("lists the facts the game supports, in the edit sheet's order", () => {
    expect(getTeamMemberFacts(buddy, modernGame)).toEqual([
      {
        detail: null,
        label: "Nature",
        nature: { decreased: "special_attack", increased: "attack" },
        value: "Adamant",
      },
      {
        detail: "Powers up Grass-type moves when HP is low.",
        label: "Ability",
        value: "Overgrow",
      },
      { detail: null, item: "held", label: "Held item", value: "Miracle Seed" },
      { detail: null, item: "ball", label: "Poké Ball", value: "Poké Ball" },
      {
        detail: null,
        label: "Met location",
        section: "met",
        value: "Slumbering Weald",
      },
      { detail: null, label: "Met level", section: "met", value: "Lv. 5" },
    ]);
    expect(
      getTeamMemberFacts(buddy, firstGenerationGame).map(({ label }) => label),
    ).toEqual(["Poké Ball", "Met location", "Met level"]);
  });

  it("says whether it can Gigantamax where the game has Dynamax", () => {
    const sword = resolveGameMechanics({
      gameId: 31,
      generationId: 8,
      versionGroupId: 18,
    });

    expect(
      getTeamMemberFacts({ ...buddy, has_gigantamax_factor: true }, sword).find(
        (fact) => fact.label === "Can Gigantamax",
      ),
    ).toEqual({ detail: null, label: "Can Gigantamax", value: "Yes" });
    expect(
      getTeamMemberFacts(buddy, sword, null, { canGigantamax: true }).find(
        (fact) => fact.label === "Can Gigantamax",
      ),
    ).toEqual({ detail: null, label: "Can Gigantamax", value: "No" });
    expect(
      getTeamMemberFacts(buddy, sword).map(({ label }) => label),
    ).not.toContain("Can Gigantamax");
    expect(
      getTeamMemberFacts(buddy, xy, null, { canGigantamax: true }).map(
        ({ label }) => label,
      ),
    ).not.toContain("Can Gigantamax");
  });

  it("keeps the met level when the location is missing", () => {
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
      ).map(({ label, value }) => [label, value]),
    ).toEqual([
      ["Nature", "Not recorded"],
      ["Ability", "Not recorded"],
      ["Held item", "None"],
      ["Poké Ball", "Poké Ball"],
      ["Met location", "Not recorded"],
      ["Met level", "Lv. 5"],
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
        ["Poké Ball", "Poké Ball"],
        ["Stat changes", "Atk +46 · Sp. Atk +21"],
        ["Met location", "Slumbering Weald"],
        ["Met level", "Lv. 5"],
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
    /* An Ogerpon mask fixes it, recorded or not. */
    expect(
      getTeamMemberFacts(
        { ...buddy, fixed_tera_type_name: "Water", tera_type_name: null },
        scarlet,
      ).find((fact) => fact.label === "Tera Type")?.value,
    ).toBe("Water");
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
      ["Poké Ball", "Not recorded"],
      ["Met location", "Not recorded"],
      ["Met level", "Not recorded"],
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
        category: "special",
        name: "Thunderbolt",
        position: 1,
        type: electricType,
      },
      {
        category: "status",
        name: "Thunder Wave",
        position: 3,
        type: electricType,
      },
    ]);
  });
});
