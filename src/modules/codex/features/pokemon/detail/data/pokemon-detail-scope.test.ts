import { describe, expect, it } from "vitest";

import { getPokemonDetailWhereToFindRows } from "@/modules/codex/features/pokemon/detail/components/availability/pokemon-detail-availability-display";
import { resolvePokemonDetailScope } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope";
import {
  buildPokemonDetailVersionGroupScopes,
  getDefaultVersionGroup,
  getFirstFoundBaseVersionGroup,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope-defaults";
import { gameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type {
  Game,
  Generation,
  PokemonAvailabilitySummary,
  PokemonDetailData,
  PokemonGenerationDetail,
  VersionGroup,
} from "@/modules/reference/types";

const versionGroup = (
  id: number,
  slug: string,
  name: string,
  generationId: number,
  parentId: number | null = null,
) =>
  ({
    generation_id: generationId,
    id,
    name,
    parent_version_group_id: parentId,
    slug,
    sort_order: id,
  }) as VersionGroup;

const game = (id: number, slug: string, versionGroupId: number) =>
  ({
    id,
    name: `Pokémon ${slug}`,
    slug,
    version_group_id: versionGroupId,
  }) as Game;

const swsh = versionGroup(18, "swsh", "Sword / Shield", 8);
const isleOfArmor = versionGroup(19, "swsh-ioa", "The Isle of Armor", 8, 18);
const bdsp = versionGroup(21, "bdsp", "Brilliant Diamond / Shining Pearl", 8);
const sword = game(31, "sword", 18);
const shield = game(32, "shield", 18);

const availability = (
  id: number,
  target: VersionGroup,
  options: { game?: Game; method?: string } = {},
) =>
  ({
    availability: {
      availability_method_id: id,
      form_id: null,
      game_id: options.game?.id ?? null,
      id,
      notes: null,
      source_version_group_id: target.id,
      species_id: 1,
      target_version_group_id: target.id,
    },
    game: options.game ?? null,
    method: { description: null, name: options.method ?? "Wild" },
    sourceVersionGroup: target,
    targetVersionGroup: target,
  }) as unknown as PokemonAvailabilitySummary;

const generationEight = {
  availability: [
    availability(1, swsh, { game: sword, method: "Wild" }),
    availability(2, isleOfArmor, { method: "Max Raid" }),
  ],
  forms: [],
  games: [sword, shield, game(33, "brilliant-diamond", 21)],
  generation: { id: 8, name: "Generation VIII", sort_order: 8 } as Generation,
  learnsets: [],
  pokedexEntries: [],
  versionGroups: [swsh, isleOfArmor, bdsp],
} as unknown as PokemonGenerationDetail;

const data = {
  generationDetails: [generationEight],
  species: { id: 1, name: "Arcanine", slug: "arcanine" },
} as unknown as PokemonDetailData;

describe("resolvePokemonDetailScope", () => {
  it("reads the entry in a base version group with its expansions", () => {
    const scope = resolvePokemonDetailScope(data, { versionGroup: "swsh" });

    expect(scope?.versionGroup.versionGroup.slug).toBe("swsh");
    expect(scope?.versionGroup.games.map((entry) => entry.slug)).toEqual([
      "sword",
      "shield",
    ]);
    expect(scope?.versionGroup.expansions.map((entry) => entry.slug)).toEqual([
      "swsh-ioa",
    ]);
    expect(scope?.availability).toHaveLength(2);
    expect(scope?.mechanics.support[gameMechanics.abilities]).toBe("supported");
  });

  it("offers only base groups in the version group switch", () => {
    const scope = resolvePokemonDetailScope(data, { versionGroup: "swsh" });

    expect(
      scope?.versionGroups.map((entry) => entry.versionGroup.slug),
    ).toEqual(["swsh", "bdsp"]);
  });

  it("returns null for a group the Pokémon's generations don't hold", () => {
    expect(resolvePokemonDetailScope(data, { versionGroup: "rs" })).toBeNull();
    expect(
      resolvePokemonDetailScope(data, { versionGroup: "swsh-ioa" }),
    ).toBeNull();
  });
});

describe("getFirstFoundBaseVersionGroup", () => {
  const sunMoon = versionGroup(17, "sm", "Sun / Moon", 7);
  const ultraSunMoon = versionGroup(18, "usum", "Ultra Sun / Ultra Moon", 7);
  const letsGo = versionGroup(19, "lgpe", "Let's Go", 7);
  const swordShield = versionGroup(20, "swsh", "Sword / Shield", 8);
  const isle = versionGroup(21, "swsh-ioa", "The Isle of Armor", 8, 20);
  const legendsArceus = versionGroup(23, "pla", "Legends: Arceus", 8);
  const versionGroups = [
    sunMoon,
    ultraSunMoon,
    letsGo,
    swordShield,
    isle,
    legendsArceus,
  ];
  const row = (target: VersionGroup) => ({
    source_version_group_id: target.id,
    target_version_group_id: target.id,
  });

  it("opens Legends: Arceus for Wyrdeer, not the generation's first group", () => {
    expect(
      getFirstFoundBaseVersionGroup({
        availability: [row(legendsArceus)],
        generationId: 8,
        versionGroups,
      })?.slug,
    ).toBe("pla");
  });

  it("opens Let's Go for Meltan, not Sun and Moon", () => {
    expect(
      getFirstFoundBaseVersionGroup({
        availability: [row(letsGo)],
        generationId: 7,
        versionGroups,
      })?.slug,
    ).toBe("lgpe");
  });

  it("counts an expansion for its base group", () => {
    expect(
      getFirstFoundBaseVersionGroup({
        availability: [row(isle), row(legendsArceus)],
        generationId: 8,
        versionGroups,
      })?.slug,
    ).toBe("swsh");
  });

  it("ignores rows that target another generation", () => {
    expect(
      getFirstFoundBaseVersionGroup({
        availability: [row(letsGo)],
        generationId: 8,
        versionGroups,
      })?.slug,
    ).toBe("swsh");
  });

  it("falls back to the generation's first group when nothing is recorded", () => {
    expect(
      getFirstFoundBaseVersionGroup({
        availability: [],
        generationId: 7,
        versionGroups,
      })?.slug,
    ).toBe("sm");
  });

  it("agrees with the generation pill on a full entry", () => {
    const bdspOnly = {
      ...generationEight,
      availability: [availability(3, bdsp)],
    } as PokemonGenerationDetail;

    expect(
      getFirstFoundBaseVersionGroup({
        availability: bdspOnly.availability.map((row) => row.availability),
        generationId: 8,
        versionGroups: bdspOnly.versionGroups,
      })?.slug,
    ).toBe(
      getDefaultVersionGroup(
        bdspOnly,
        buildPokemonDetailVersionGroupScopes(bdspOnly),
      )?.versionGroup.slug,
    );
  });
});

describe("getPokemonDetailWhereToFindRows", () => {
  it("lists one row per game, then each expansion that adds the Pokémon", () => {
    const scope = resolvePokemonDetailScope(data, { versionGroup: "swsh" });

    if (!scope) {
      throw new Error("Expected a scope.");
    }

    const rows = getPokemonDetailWhereToFindRows({
      availability: scope.availability,
      versionGroup: scope.versionGroup,
    });

    expect(rows.map((row) => row.label)).toEqual([
      "Pokémon sword",
      "Pokémon shield",
      "The Isle of Armor",
    ]);
    expect(rows[0]?.ways.map((way) => way.label)).toEqual(["Wild"]);
    expect(rows[0]?.href).toBe("/codex/games/swsh?version=sword");
    /* A Sword-only way leaves Shield without one: a version exclusive. */
    expect(rows[1]?.ways).toEqual([]);
    expect(rows[1]?.missingLabel).toBe("Not in this version");
    expect(rows[2]?.ways.map((way) => way.label)).toEqual(["Max Raid"]);
  });

  it("lists a group's games as not there once the generation records it elsewhere", () => {
    const scope = resolvePokemonDetailScope(data, { versionGroup: "bdsp" });

    if (!scope) {
      throw new Error("Expected a scope.");
    }

    const rows = getPokemonDetailWhereToFindRows({
      availability: scope.availability,
      listWhenAbsent: true,
      versionGroup: scope.versionGroup,
    });

    expect(rows.map((row) => [row.label, row.missingLabel])).toEqual([
      ["Pokémon brilliant-diamond", "Not in this game"],
    ]);
  });

  it("is empty when nothing is recorded", () => {
    const scope = resolvePokemonDetailScope(data, { versionGroup: "bdsp" });

    expect(
      scope
        ? getPokemonDetailWhereToFindRows({
            availability: scope.availability,
            versionGroup: scope.versionGroup,
          })
        : null,
    ).toEqual([]);
  });
});

describe("the entry's generation-wide reading", () => {
  const form = (id: number, slug: string, isDefault: boolean) =>
    ({
      form: { id, is_default: isDefault, name: slug, slug },
    }) as unknown as PokemonGenerationDetail["forms"][number];
  const withForm = (row: PokemonAvailabilitySummary, formId: number) =>
    ({
      ...row,
      availability: { ...row.availability, form_id: formId },
    }) as PokemonAvailabilitySummary;
  const regional = form(2, "hisuian-arcanine", false);
  const generation = {
    ...generationEight,
    availability: [
      availability(1, swsh, { game: sword, method: "Wild" }),
      withForm(availability(3, bdsp, { method: "Raid" }), 2),
    ],
    forms: [form(1, "arcanine", true), regional],
  } as unknown as PokemonGenerationDetail;
  const generationData = {
    ...data,
    generationDetails: [generation],
  } as unknown as PokemonDetailData;

  it("reads Where to find in every base group of the generation", () => {
    const scope = resolvePokemonDetailScope(generationData, {
      versionGroup: "swsh",
    });

    expect(
      scope?.generationAvailability.map(({ availability, versionGroup }) => [
        versionGroup.versionGroup.slug,
        availability.length,
      ]),
    ).toEqual([
      ["swsh", 1],
      /* The other group's rows are the regional form's, not this one's. */
      ["bdsp", 0],
    ]);
  });

  it("offers each group's learnset, not where the form isn't found", () => {
    const scope = resolvePokemonDetailScope(generationData, {
      versionGroup: "swsh",
    });

    expect(
      scope?.generationLearnsets.map(({ isFound, versionGroup }) => [
        versionGroup.versionGroup.slug,
        isFound,
      ]),
    ).toEqual([
      ["swsh", true],
      ["bdsp", false],
    ]);
  });

  it("opens a form found only in another group in that group", () => {
    const scope = resolvePokemonDetailScope(generationData, {
      versionGroup: "swsh",
    });

    expect(
      scope?.generationForms.map(({ form, versionGroupSlug }) => [
        form.form.slug,
        versionGroupSlug,
      ]),
    ).toEqual([
      ["arcanine", "swsh"],
      ["hisuian-arcanine", "bdsp"],
    ]);
  });
});
