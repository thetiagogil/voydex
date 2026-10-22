import { describe, expect, it } from "vitest";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

import {
  findUnofferedEditorChoice,
  getTeamMemberEditorChanges,
  getTeamMemberEditorValues,
  toUpdateTeamMemberInput,
} from "./team-member-editor-model";

const member = {
  ability_id: 65,
  ball_item_id: null,
  gender: "male",
  held_item_id: null,
  is_shiny: false,
  level: 34,
  met_level: 5,
  met_location_label: "Route 1",
  moves: [
    { id: 45, name: "Growl", slot: 2 },
    { id: 33, name: "Tackle", slot: 1 },
  ],
  nature_id: null,
  nickname: "Buddy",
  personal_notes: null,
} as unknown as MainlinePlayTeamMember;

const allSupported = {
  abilities: true,
  gender: true,
  gigantamax: true,
  heldItems: true,
  natures: true,
  terastal: true,
};

const names: Record<string, string> = {
  "33": "Tackle",
  "45": "Growl",
  "52": "Ember",
  "65": "Overgrow",
};

describe("Pokémon editor model", () => {
  it("reads the member's fields, moves in slot order and four slots", () => {
    expect(getTeamMemberEditorValues(member)).toMatchObject({
      abilityId: "65",
      gender: "male",
      level: "34",
      moveIds: ["33", "45", "", ""],
      natureId: "",
      nickname: "Buddy",
    });
  });

  it("describes only what changed, in words", () => {
    const initial = getTeamMemberEditorValues(member);
    const changes = getTeamMemberEditorChanges(
      initial,
      {
        ...initial,
        moveIds: ["33", "52", "", ""],
        nickname: "",
      },
      (_field, value) => names[value] ?? value,
    );

    expect(changes).toEqual([
      {
        field: "moveIds",
        label: "Moves",
        next: "Tackle, Ember",
        previous: "Tackle, Growl",
      },
      {
        field: "nickname",
        label: "Nickname",
        next: "Not recorded",
        previous: "Buddy",
      },
    ]);
  });

  it("lists a picked slot as a change in words, and leaves it out of the save input", () => {
    const initial = getTeamMemberEditorValues({ ...member, slot: 1 });
    const current = { ...initial, slot: "8" };

    expect(
      getTeamMemberEditorChanges(initial, current, (_field, value) => value),
    ).toEqual([
      {
        field: "slot",
        label: "Slot",
        next: "Reserve R2",
        previous: "Team slot 1",
      },
    ]);
    expect(toUpdateTeamMemberInput(current, allSupported)).not.toHaveProperty(
      "slot",
    );
  });

  it("turns the fields into the save input", () => {
    expect(
      toUpdateTeamMemberInput(
        {
          ...getTeamMemberEditorValues(member),
          level: "",
          moveIds: ["", "52", "", ""],
        },
        allSupported,
      ),
    ).toMatchObject({ abilityId: 65, level: null, moveIds: [52] });
  });

  it("sends Tera Type and the Gigantamax Factor only where the game has them", () => {
    const values = {
      ...getTeamMemberEditorValues(member),
      hasGigantamaxFactor: true,
      teraTypeId: "2",
    };

    expect(toUpdateTeamMemberInput(values, allSupported)).toMatchObject({
      hasGigantamaxFactor: true,
      teraTypeId: 2,
    });
    expect(
      toUpdateTeamMemberInput(values, {
        ...allSupported,
        gigantamax: false,
        terastal: false,
      }),
    ).toMatchObject({ hasGigantamaxFactor: false, teraTypeId: null });
  });

  it("sends a mechanic the game doesn't record empty, so a kept value can't block a save", () => {
    /* Legends: Arceus records natures and gender, not abilities or held items. */
    expect(
      toUpdateTeamMemberInput(
        { ...getTeamMemberEditorValues(member), heldItemId: "12" },
        { ...allSupported, abilities: false, heldItems: false },
      ),
    ).toMatchObject({ abilityId: null, gender: "male", heldItemId: null });
  });
});

describe("findUnofferedEditorChoice", () => {
  /* What the editor offered Charizard in Sword. */
  const options = {
    abilities: [{ id: 66, name: "Blaze" }],
    heldItems: [{ id: 200, name: "Charcoal" }],
    moves: [
      {
        damageClass: "special",
        id: 53,
        name: "Flamethrower",
        typeName: "Fire",
        typeSlug: "fire",
      },
    ],
    natures: [{ decreased: null, id: 3, increased: null, name: "Hardy" }],
    teraTypes: [{ id: 2, name: "Fire" }],
  };
  const current = {
    abilityId: null,
    heldItemId: null,
    moveIds: [33],
    natureId: null,
  };
  const input = {
    abilityId: 66,
    heldItemId: 200,
    moveIds: [33, 53],
    natureId: 3,
    teraTypeId: null,
  };

  it("accepts offered choices and moves it already knows", () => {
    expect(findUnofferedEditorChoice(input, options, current)).toBeNull();
  });

  it("rejects a new move, ability, item or nature the editor didn't offer", () => {
    expect(
      findUnofferedEditorChoice(
        { ...input, moveIds: [33, 94] },
        options,
        current,
      ),
    ).toBe("It can't learn that move in this game.");
    expect(
      findUnofferedEditorChoice({ ...input, abilityId: 1 }, options, current),
    ).toBe("It can't have that ability in this game.");
    expect(
      findUnofferedEditorChoice({ ...input, heldItemId: 9 }, options, current),
    ).toBe("It can't hold that item in this game.");
    expect(
      findUnofferedEditorChoice({ ...input, natureId: 9 }, options, current),
    ).toBe("That nature isn't in this game.");
    expect(
      findUnofferedEditorChoice({ ...input, teraTypeId: 19 }, options, current),
    ).toBe("That Tera Type isn't in this game.");
  });

  it("lets an already recorded ability stay when the options no longer list it", () => {
    expect(
      findUnofferedEditorChoice({ ...input, abilityId: 1 }, options, {
        ...current,
        abilityId: 1,
      }),
    ).toBeNull();
  });
});
