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
  id: 1,
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
  opponents: [
    {
      id: 1,
      name: "Brock",
      primaryType: rock,
      role: "gym-leader",
      secondaryType: null,
    },
  ],
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
  const model: StoryMatchupsModel = {
    battleCount: battles.length,
    chapters: [{ battles, key: "main", name: "Main Story", wonCount: 0 }],
    defaultBattleId: battles[0]?.id ?? null,
    wonCount: 0,
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
          imageUrl: null,
          key: "onix",
          level: 14,
          name: "Onix",
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
        imageUrl: null,
        key: "onix",
        level: 14,
        name: "Onix",
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
});
