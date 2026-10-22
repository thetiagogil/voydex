import { describe, expect, it } from "vitest";

import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";

import {
  emptyBattleReference,
  resolveMemberBattle,
  type BattleFormReference,
  type BattleMember,
  type BattleReference,
  type BattleStats,
} from "./battle-mechanics";

const fire = { id: 2, name: "Fire", slug: "fire" };
const flying = { id: 10, name: "Flying", slug: "flying" };
const dragon = { id: 15, name: "Dragon", slug: "dragon" };
const electric = { id: 4, name: "Electric", slug: "electric" };

const stats = (attack: number, specialAttack: number): BattleStats => ({
  attack,
  defense: 78,
  hp: 78,
  specialAttack,
  specialDefense: 85,
  speed: 100,
});

const charizardForm = (
  overrides: Partial<BattleFormReference>,
): BattleFormReference => ({
  abilityName: null,
  baseFormIds: [600],
  formId: 601,
  gMaxMove: null,
  mechanic: "mega-evolution",
  name: "Mega Charizard X",
  needsUnlockItem: true,
  primaryType: fire,
  requiredMove: null,
  secondaryType: dragon,
  slug: "mega-charizard-x",
  speciesId: 6,
  stats: stats(130, 130),
  unlockItems: [{ id: 264, name: "Charizardite X" }],
  ...overrides,
});

const reference: BattleReference = {
  baseStatsByFormId: { 600: stats(84, 109) },
  forms: [
    charizardForm({ abilityName: "Tough Claws" }),
    charizardForm({
      abilityName: "Drought",
      formId: 602,
      name: "Mega Charizard Y",
      primaryType: fire,
      secondaryType: flying,
      slug: "mega-charizard-y",
      stats: stats(104, 159),
      unlockItems: [{ id: 265, name: "Charizardite Y" }],
    }),
    charizardForm({
      formId: 603,
      gMaxMove: {
        id: 900,
        name: "G-Max Wildfire",
        slug: "g-max-wildfire",
        type: fire,
      },
      abilityName: "Blaze",
      mechanic: "dynamax",
      name: "Gigantamax Charizard",
      needsUnlockItem: false,
      secondaryType: flying,
      slug: "gigantamax-charizard",
      stats: stats(84, 109),
      unlockItems: [],
    }),
  ],
  maxGuard: { id: 743, name: "Max Guard", slug: "max-guard", type: null },
  maxMovesByTypeId: {
    [flying.id]: {
      id: 766,
      name: "Max Airstream",
      slug: "max-airstream",
      type: flying,
    },
  },
  zSources: [
    {
      baseMoveId: null,
      baseTypeId: fire.id,
      formId: null,
      item: { id: 230, name: "Firium Z" },
      speciesId: null,
      zMove: {
        id: 640,
        name: "Inferno Overdrive",
        slug: "inferno-overdrive",
        type: fire,
      },
    },
    {
      baseMoveId: 85,
      baseTypeId: null,
      formId: null,
      item: { id: 257, name: "Pikashunium Z" },
      speciesId: 25,
      zMove: {
        id: 700,
        name: "10,000,000 Volt Thunderbolt",
        slug: "10-000-000-volt-thunderbolt",
        type: electric,
      },
    },
  ],
};

const charizard = (overrides: Partial<BattleMember> = {}): BattleMember => ({
  formId: 600,
  hasGigantamaxFactor: false,
  heldItem: null,
  moves: [
    {
      id: 53,
      isStatus: false,
      name: "Flamethrower",
      slug: "flamethrower",
      typeId: fire.id,
    },
    {
      id: 403,
      isStatus: false,
      name: "Air Slash",
      slug: "air-slash",
      typeId: flying.id,
    },
    {
      id: 14,
      isStatus: true,
      name: "Swords Dance",
      slug: "swords-dance",
      typeId: 1,
    },
  ],
  speciesId: 6,
  ...overrides,
});

const inGame = (versionGroupId: number, generationId: number) =>
  resolveGameMechanics({ gameId: 1, generationId, versionGroupId });

const xy = inGame(13, 6);
const sunMoon = inGame(15, 7);
const letsGo = inGame(17, 7);
const swordShield = inGame(18, 8);
const scarletViolet = inGame(23, 9);

describe("resolveMemberBattle", () => {
  it("offers both Megas in X / Y, with each form's types, ability and stat changes", () => {
    const battle = resolveMemberBattle({
      member: charizard({ heldItem: { id: 264, name: "Charizardite X" } }),
      mechanics: xy,
      reference,
    });

    expect(battle?.forms.map((form) => form.label)).toEqual([
      "Mega X",
      "Mega Y",
    ]);
    expect(battle?.forms[0]).toMatchObject({
      abilityName: "Tough Claws",
      primaryType: fire,
      secondaryType: dragon,
      statChanges: [
        { change: 46, key: "attack" },
        { change: 21, key: "specialAttack" },
      ],
      warning: null,
    });
  });

  it("warns when it holds the other Mega Stone, or none", () => {
    const holdingY = resolveMemberBattle({
      member: charizard({ heldItem: { id: 265, name: "Charizardite Y" } }),
      mechanics: xy,
      reference,
    });
    const holdingNothing = resolveMemberBattle({
      member: charizard(),
      mechanics: xy,
      reference,
    });

    expect(holdingY?.forms[0]?.warning).toBe(
      "Holds Charizardite Y, but Mega Charizard X needs Charizardite X.",
    );
    expect(holdingY?.forms[1]?.warning).toBeNull();
    expect(holdingNothing?.forms[0]?.warning).toBe(
      "Needs to hold Charizardite X to Mega Evolve.",
    );
  });

  it("leaves out a Mega whose stone this game doesn't have", () => {
    /* Sceptilite arrives in Omega Ruby / Alpha Sapphire, not X / Y. */
    const sceptileReference: BattleReference = {
      ...emptyBattleReference,
      forms: [
        charizardForm({
          baseFormIds: [25400],
          formId: 25401,
          name: "Mega Sceptile",
          slug: "mega-sceptile",
          speciesId: 254,
          unlockItems: [],
        }),
      ],
    };
    const sceptile = (mechanics: typeof xy) =>
      resolveMemberBattle({
        member: { ...charizard(), formId: 25400, speciesId: 254 },
        mechanics,
        reference: sceptileReference,
      });

    expect(sceptile(xy)).toBeNull();
    /* Let's Go checks no stone at all. */
    expect(sceptile(letsGo)?.forms.map((form) => form.label)).toEqual(["Mega"]);
  });

  it("checks no stone in Let's Go, where Mega Stones stay in the bag", () => {
    const battle = resolveMemberBattle({
      member: charizard(),
      mechanics: letsGo,
      reference,
    });

    expect(battle?.forms.map((form) => form.warning)).toEqual([null, null]);
  });

  it("shows Gigantamax only in Sword / Shield, its moves turned into Max Moves", () => {
    const battle = resolveMemberBattle({
      member: charizard({ hasGigantamaxFactor: true }),
      mechanics: swordShield,
      reference,
    });

    expect(battle?.forms).toHaveLength(1);
    expect(battle?.forms[0]).toMatchObject({
      /* Gigantamax keeps the Pokémon's own ability. */
      abilityName: null,
      label: "Gigantamax",
      statChanges: [],
      warning: null,
    });
    expect(
      battle?.forms[0]?.maxMoves?.map(({ fromMoveName, move }) => [
        fromMoveName,
        move.name,
      ]),
    ).toEqual([
      ["Flamethrower", "G-Max Wildfire"],
      ["Air Slash", "Max Airstream"],
      ["Swords Dance", "Max Guard"],
    ]);
  });

  it("warns that a Pokémon without the Gigantamax Factor can't Gigantamax", () => {
    const battle = resolveMemberBattle({
      member: charizard(),
      mechanics: swordShield,
      reference,
    });

    expect(battle?.forms[0]?.warning).toBe(
      "Doesn't have the Gigantamax Factor.",
    );
  });

  it("shows nothing in a game without battle forms or Z-Moves", () => {
    expect(
      resolveMemberBattle({
        member: charizard({ hasGigantamaxFactor: true }),
        mechanics: scarletViolet,
        reference,
      }),
    ).toBeNull();
  });

  it("leaves out a battle form its stored form doesn't reach", () => {
    expect(
      resolveMemberBattle({
        member: charizard({ formId: 699 }),
        mechanics: xy,
        reference,
      }),
    ).toBeNull();
  });

  it("turns damaging moves of a type crystal's type into its Z-Move", () => {
    const battle = resolveMemberBattle({
      member: charizard({ heldItem: { id: 230, name: "Firium Z" } }),
      mechanics: sunMoon,
      reference,
    });

    expect(battle?.zCrystal?.name).toBe("Firium Z");
    expect(
      battle?.zMoves.map(({ fromMoveName, move }) => [fromMoveName, move.name]),
    ).toEqual([["Flamethrower", "Inferno Overdrive"]]);
  });

  it("gives an exclusive Z-Move only to its species knowing its move", () => {
    const pikachu = (speciesId: number) =>
      resolveMemberBattle({
        member: {
          formId: speciesId * 100,
          hasGigantamaxFactor: false,
          heldItem: { id: 257, name: "Pikashunium Z" },
          moves: [
            {
              id: 85,
              isStatus: false,
              name: "Thunderbolt",
              slug: "thunderbolt",
              typeId: electric.id,
            },
          ],
          speciesId,
        },
        mechanics: sunMoon,
        reference,
      });

    expect(pikachu(25)?.zMoves.map(({ move }) => move.name)).toEqual([
      "10,000,000 Volt Thunderbolt",
    ]);
    expect(pikachu(26)?.zMoves).toEqual([]);
  });

  it("keeps the held crystal with no Z-Move when none of its moves match", () => {
    const battle = resolveMemberBattle({
      member: charizard({
        heldItem: { id: 230, name: "Firium Z" },
        moves: [],
      }),
      mechanics: sunMoon,
      reference,
    });

    expect(battle).toMatchObject({
      zCrystal: { name: "Firium Z" },
      zMoves: [],
    });
  });

  it("ignores a Z-Crystal outside Sun / Moon and Ultra Sun / Ultra Moon", () => {
    expect(
      resolveMemberBattle({
        member: charizard({ heldItem: { id: 230, name: "Firium Z" } }),
        mechanics: xy,
        reference,
      })?.zCrystal,
    ).toBeNull();
  });

  describe("Mega Rayquaza", () => {
    const rayquazaReference: BattleReference = {
      ...emptyBattleReference,
      forms: [
        charizardForm({
          baseFormIds: [38400],
          formId: 38401,
          name: "Mega Rayquaza",
          needsUnlockItem: false,
          requiredMove: { name: "Dragon Ascent", slug: "dragon-ascent" },
          slug: "mega-rayquaza",
          speciesId: 384,
          unlockItems: [],
        }),
      ],
      zSources: reference.zSources,
    };
    const rayquaza = (
      moveSlugs: string[],
      heldItem: BattleMember["heldItem"] = null,
    ): BattleMember => ({
      formId: 38400,
      hasGigantamaxFactor: false,
      heldItem,
      moves: moveSlugs.map((slug, index) => ({
        id: index + 1,
        isStatus: false,
        name: slug,
        slug,
        typeId: dragon.id,
      })),
      speciesId: 384,
    });

    it("needs Dragon Ascent rather than a stone", () => {
      const warningFor = (member: BattleMember) =>
        resolveMemberBattle({
          member,
          mechanics: xy,
          reference: rayquazaReference,
        })?.forms[0]?.warning;

      expect(warningFor(rayquaza(["dragon-ascent"]))).toBeNull();
      expect(warningFor(rayquaza(["outrage"]))).toBe(
        "Needs to know Dragon Ascent to Mega Evolve.",
      );
    });

    it("can't Mega Evolve while it holds a Z-Crystal", () => {
      expect(
        resolveMemberBattle({
          member: rayquaza(["dragon-ascent"], { id: 230, name: "Firium Z" }),
          mechanics: sunMoon,
          reference: rayquazaReference,
        })?.forms[0]?.warning,
      ).toBe("Can't Mega Evolve while it holds Firium Z.");
    });
  });
});
