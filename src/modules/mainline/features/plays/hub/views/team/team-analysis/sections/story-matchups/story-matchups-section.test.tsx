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
  members: [
    {
      bestHit: null,
      member,
      role: null,
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
        moveName: "Water Gun",
        multiplier: 4,
        target: {
          formSlug: "onix",
          heldItem: null,
          imageUrl: null,
          key: "onix",
          legendary: null,
          level: 14,
          mechanic: null,
          name: "Onix",
          teraType: null,
          types: [rock],
        },
      },
      member,
      role: "strong",
      weakTo: [],
    },
  ],
  party: {
    note: null,
    pokemon: [
      {
        formSlug: "onix",
        heldItem: null,
        imageUrl: null,
        key: "onix",
        legendary: null,
        level: 14,
        mechanic: null,
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

    expect(html).toContain("Strong");
    expect(html).toContain("You have an answer to Brock&#x27;s Pokémon");
    expect(html).toContain("Lv. 14");
    expect(html).toContain("Advantage");
    expect(html).toContain("Water Gun, 4× on Onix");
    expect(html).toContain("You&#x27;re 6 levels above them");
    expect(html).not.toContain("aren&#x27;t in Voydex yet");
  });

  it("marks their ace's mechanic and names what it holds", () => {
    const html = render([
      battle({
        party: {
          note: null,
          pokemon: [
            {
              formSlug: "glimmora",
              heldItem: { name: "Focus Sash", slug: "focus-sash" },
              imageUrl: null,
              key: "glimmora",
              legendary: null,
              level: 62,
              mechanic: { kind: "tera", label: "Tera Rock" },
              name: "Glimmora",
              teraType: rock,
              types: [rock],
            },
          ],
        },
      }),
    ]);

    expect(html).toContain("Tera Rock");
    expect(html).toContain("--t:var(--type-rock)");
    expect(html).toContain("Holds </span>Focus Sash");
  });

  it("leaves the mark off a battle form whose name already says it", () => {
    const html = render([
      battle({
        party: {
          note: null,
          pokemon: [
            {
              formSlug: "gigantamax-charizard",
              heldItem: null,
              imageUrl: null,
              key: "charizard",
              legendary: null,
              level: 65,
              mechanic: { kind: "gigantamax", label: "Gigantamax" },
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
            formSlug: "raikou",
            heldItem: null,
            imageUrl: null,
            key: "raikou",
            legendary: "Legendary",
            level: 40,
            mechanic: null,
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
