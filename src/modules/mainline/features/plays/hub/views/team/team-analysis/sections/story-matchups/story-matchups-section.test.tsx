import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { Type } from "@/modules/reference/types";

import type {
  StoryMatchupBattle,
  StoryMatchupsModel,
} from "../../data/story-matchups-model";
import { StoryMatchupsSection } from "./story-matchups-section";

const water = { id: 3, name: "Water", slug: "water" } as Type;
const rock = { id: 13, name: "Rock", slug: "rock" } as Type;

const member = {
  level: 20,
  moves: [],
  nickname: null,
  play_pokemon_id: "p1",
  primaryType: water,
  secondaryType: null,
  species_name: "Squirtle",
} as unknown as MainlinePlayTeamMember;

const battle = (
  overrides: Partial<StoryMatchupBattle> = {},
): StoryMatchupBattle => ({
  badgeType: null,
  chapter: "Main Story",
  completedAt: null,
  id: "1/1",
  isOptional: false,
  kind: "Gym Leader",
  playerSide: "own-team",
  members: [
    {
      bestHit: null,
      lands: [],
      member,
      role: null,
      takes: [],
      weakTo: [],
    },
  ],
  milestoneName: "Boulder Badge",
  name: "Brock",
  opponentKind: "trainer",
  party: null,
  partyLevels: null,
  reading: null,
  specialtyTypes: [rock],
  state: "next",
  teamThen: [],
  where: null,
  ...overrides,
});

const render = (battles: StoryMatchupBattle[]) => {
  const optional = battles.filter(
    (item) => item.opponentKind === "legendary" && item.isOptional,
  );
  const counted = battles.filter((item) => !optional.includes(item));
  const model: StoryMatchupsModel = {
    battleCount: counted.length,
    chapters: [
      {
        battleCount: counted.length,
        battles,
        key: "main",
        name: "Main Story",
        optionalCount: optional.length,
        optionalDoneCount: optional.filter((item) => item.state === "won")
          .length,
        wonCount: counted.filter((item) => item.state === "won").length,
      },
    ],
    defaultBattleId: battles[0]?.id ?? null,
    wonCount: counted.filter((item) => item.state === "won").length,
  };

  return renderToStaticMarkup(<StoryMatchupsSection model={model} />);
};

const withTeam = battle({
  members: [
    {
      bestHit: {
        byType: false,
        moveName: "Water Gun",
        multiplier: 4,
        target: {
          baseStats: null,
          formSlug: "onix",
          heldItem: null,
          imageUrl: null,
          key: "onix",
          legendary: null,
          level: 14,
          mechanic: null,
          moves: [],
          name: "Onix",
          teraType: null,
          types: [rock],
        },
      },
      lands: [],
      member,
      role: "strong",
      takes: [],
      weakTo: [],
    },
  ],
  party: {
    note: null,
    pokemon: [
      {
        baseStats: null,
        formSlug: "onix",
        heldItem: null,
        imageUrl: null,
        key: "onix",
        legendary: null,
        level: 14,
        mechanic: null,
        moves: [],
        name: "Onix",
        teraType: null,
        types: [rock],
      },
    ],
  },
  partyLevels: "Lv. 14",
  reading: {
    levels: {
      gap: 6,
      state: "strong",
      team: { max: 20, min: 20 },
      their: { max: 14, min: 14 },
    },
    state: "strong",
    summary:
      "You have an answer to Brock's Pokémon, and you're 6 levels above them.",
    missing: [],
    uncoveredTypes: [],
  },
});

describe("StoryMatchupsSection", () => {
  it("keeps the type column for an opponent with no specialty, so the verdict stays in its column", () => {
    const html = render([
      battle({ kind: "Champion", name: "Blue", specialtyTypes: [] }),
    ]);

    expect(html).toContain("hidden justify-self-end sm:flex");
  });

  it("reads a battle ahead against their team: verdict, cards, best hit and levels", () => {
    const html = render([withTeam]);

    /* Hover labels are tooltips, never the browser's title. */
    expect(html).not.toMatch(/ title="[^"]/);

    expect(html).toContain("Strong");
    expect(html).toContain("You have an answer to Brock&#x27;s Pokémon");
    expect(html).toContain("Lv. 14");
    expect(html).toContain("Advantage");
    expect(html).toContain("Water Gun, 4× on Onix");
    expect(html).toContain("You&#x27;re 6 levels above them");
    expect(html).not.toContain("aren&#x27;t in Voydex yet");
  });

  it("names your Pokémon's type as its best hit while its moves aren't recorded", () => {
    const [reading] = withTeam.members;
    const html = render([
      {
        ...withTeam,
        members: [
          {
            ...reading,
            bestHit: reading.bestHit && {
              ...reading.bestHit,
              byType: true,
              moveName: "Water",
            },
          },
        ],
      },
    ]);

    expect(html).toContain("Water type, 4× on Onix");
  });

  it("shows the one of theirs that hits yours hardest under Weak to", () => {
    const [reading] = withTeam.members;
    const html = render([
      {
        ...withTeam,
        members: [
          {
            ...reading,
            takes: [
              {
                byType: false,
                multiplier: 2,
                pokemon: reading.bestHit!.target,
                via: ["Rock Throw"],
              },
            ],
            weakTo: [rock],
          },
        ],
      },
    ]);

    expect(html).toContain("Onix: Rock Throw, 2×");
  });

  it("reads nothing where you don't battle with your team", () => {
    const html = render([
      { ...withTeam, playerSide: "lent-pokemon", reading: null },
    ]);

    expect(html).toContain(
      "You battle with a Pokémon lent for this fight, not your team, so there&#x27;s no reading.",
    );
    expect(html).not.toContain("Your team");
    expect(html).not.toContain("Advantage");
  });

  it("turns their cards to their moves with Show moves and says what it reads them by", () => {
    const onix = withTeam.party!.pokemon[0];
    const known = {
      ...onix,
      moves: [
        {
          accuracy: 90,
          damageClass: "physical" as const,
          damaging: true,
          name: "Rock Throw",
          power: 50,
          slug: "rock-throw",
          type: rock,
        },
        {
          accuracy: 85,
          damageClass: null,
          damaging: false,
          name: "Screech",
          power: null,
          slug: "screech",
          type: null,
        },
      ],
    };
    const typesOnly = render([withTeam]);
    const allKnown = render([
      { ...withTeam, party: { note: null, pokemon: [known] } },
    ]);
    const someKnown = render([
      {
        ...withTeam,
        party: {
          note: null,
          pokemon: [known, { ...onix, key: "onix-2", name: "Geodude" }],
        },
      },
    ]);

    expect(typesOnly).toContain(
      "Their moves aren&#x27;t in Voydex, so this reads their types",
    );
    expect(typesOnly).not.toContain("Show moves");
    /* The back of each card is there but turned away until Show moves. */
    expect(allKnown).toContain('aria-pressed="false"');
    expect(allKnown).toContain("Show moves");
    expect(allKnown).toContain("Rock Throw");
    expect(allKnown).toContain("This reads their moves against your team.");
    expect(someKnown).toContain("Its moves aren&#x27;t in Voydex.");
    expect(someKnown).toContain(
      "Voydex has the moves of 1 of their 2 Pokémon and reads the others by their types.",
    );
  });

  it("marks their ace's mechanic and names what it holds", () => {
    const html = render([
      battle({
        party: {
          note: null,
          pokemon: [
            {
              baseStats: null,
              formSlug: "glimmora",
              heldItem: { name: "Focus Sash", slug: "focus-sash" },
              imageUrl: null,
              key: "glimmora",
              legendary: null,
              level: 62,
              mechanic: { kind: "tera", label: "Tera Rock" },
              moves: [],
              name: "Glimmora",
              teraType: rock,
              types: [rock],
            },
          ],
        },
      }),
    ]);

    expect(html).toContain('aria-label="Tera Rock"');
    expect(html).toContain('aria-label="Holds Focus Sash"');
    expect(html).toContain(
      "Glimmora holds Focus Sash and Terastallizes into Rock.",
    );
  });

  it("leaves the mark off a battle form whose name already says it", () => {
    const html = render([
      battle({
        party: {
          note: null,
          pokemon: [
            {
              baseStats: null,
              formSlug: "gigantamax-charizard",
              heldItem: null,
              imageUrl: null,
              key: "charizard",
              legendary: null,
              level: 65,
              mechanic: { kind: "gigantamax", label: "Gigantamax" },
              moves: [],
              name: "Gigantamax Charizard",
              teraType: null,
              types: [rock],
            },
          ],
        },
      }),
    ]);

    expect(html.match(/Gigantamax/g)).toHaveLength(1);
  });

  it("keeps an honest placeholder where Voydex has no team", () => {
    const html = render([battle()]);

    expect(html).toContain("Their Pokémon aren&#x27;t in Voydex yet");
    expect(html).toContain("Their levels aren&#x27;t in Voydex yet");
    expect(html).toContain("No reading yet");
  });

  it("says when the team follows a choice the Play hasn't recorded", () => {
    const html = render([
      battle({
        party: {
          note: "Their team depends on a choice this Play hasn't recorded, so this reads the one for Bulbasaur.",
          pokemon: withTeam.party?.pokemon ?? [],
        },
      }),
    ]);

    expect(html).toContain("so this reads the one for Bulbasaur");
  });
  describe("for a legendary encounter", () => {
    const raikou = battle({
      isOptional: true,
      kind: "Legendary",
      milestoneName: "Roaming Raikou",
      name: "Raikou",
      opponentKind: "legendary",
      party: {
        note: null,
        pokemon: [
          {
            baseStats: null,
            formSlug: "raikou",
            heldItem: null,
            imageUrl: null,
            key: "raikou",
            legendary: "Legendary",
            level: 40,
            mechanic: null,
            moves: [],
            name: "Raikou",
            teraType: null,
            types: [water],
          },
        ],
      },
      partyLevels: "Lv. 40",
      reading: {
        levels: {
          gap: -20,
          state: "challenging",
          team: { max: 20, min: 20 },
          their: { max: 40, min: 40 },
        },
        state: "challenging",
        summary:
          "Your team's moves aren't recorded, and it's 20 levels above your team.",
        missing: [],
        uncoveredTypes: [rock],
      },
      specialtyTypes: [water],
    });

    it("reads as a legendary and one Pokémon, never a trainer's team", () => {
      const html = render([raikou]);

      expect(html).toContain("Legendary");
      expect(html).toContain("Optional");
      expect(html).toContain("The Pokémon");
      expect(html).toContain("It&#x27;s weak to");
      expect(html).toContain("It&#x27;s 20 levels above your team");
      expect(html).toContain("Its moves aren&#x27;t in Voydex");
      expect(html).not.toContain("Boss");
      expect(html).not.toContain("Their team");
      expect(html).not.toContain("Their moves");
      expect(html).not.toContain("Some of them");
    });

    it("is done, not won, once recorded", () => {
      const html = render([
        { ...raikou, completedAt: "2026-10-12T10:00:00Z", state: "won" },
      ]);

      expect(html).toContain("Done");
      expect(html).toContain("Voydex keeps who you met");
      expect(html).not.toContain("Won");
    });

    it("tallies optional legendaries as done, apart from battles won", () => {
      expect(render([raikou])).toContain("0 of 1 done");
      expect(render([withTeam, raikou])).toContain(
        "0 of 1 won · 0 of 1 optional done",
      );
    });
  });
});
