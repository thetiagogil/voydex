import { describe, expect, it } from "vitest";

import type { PokemonDetailRows } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-page-mappers";
import {
  getDefaultPokemonDetailVersionGroupSlug,
  resolvePokemonDetailEntryRoute,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-route";
import type {
  Game,
  Generation,
  PokemonForm,
  ResolvedPokemonAvailability,
  VersionGroup,
} from "@/modules/reference/types";

const generation = (id: number, slug: string) =>
  ({ id, slug, sort_order: id }) as Generation;

const versionGroup = (
  id: number,
  slug: string,
  generationId: number,
  parentId: number | null = null,
) =>
  ({
    generation_id: generationId,
    id,
    parent_version_group_id: parentId,
    slug,
    sort_order: id,
  }) as VersionGroup;

const game = (id: number, slug: string, versionGroupId: number) =>
  ({ id, slug, sort_order: id, version_group_id: versionGroupId }) as Game;

const form = (
  id: number,
  slug: string,
  introducedGenerationId: number,
  isDefault = false,
) =>
  ({
    id,
    introduced_generation_id: introducedGenerationId,
    is_default: isDefault,
    slug,
  }) as PokemonForm;

const foundIn = (target: VersionGroup, formId = 3860) =>
  ({
    form_id: formId,
    source_version_group_id: target.id,
    target_version_group_id: target.id,
  }) as ResolvedPokemonAvailability;

const rb = versionGroup(1, "rb", 1);
const rs = versionGroup(5, "rs", 3);
const frlg = versionGroup(6, "frlg", 3);
const dp = versionGroup(8, "dp", 4);
const dpExpansion = versionGroup(30, "dp-expansion", 4, dp.id);

/*
 * A Deoxys-like species: introduced in Generation III but first found in
 * FireRed / LeafGreen, and its Attack Forme first found in Diamond / Pearl.
 * Its Speed Forme is a form with no rows of its own, from Generation IV.
 */
const rows = {
  baseRows: {
    games: [game(1, "red", rb.id), game(7, "ruby", rs.id)],
    generations: [
      generation(1, "generation-i"),
      generation(3, "generation-iii"),
      generation(4, "generation-iv"),
    ],
    species: { id: 386, introduced_generation_id: 3, slug: "deoxys" },
    versionGroups: [rb, rs, frlg, dp, dpExpansion],
  },
  speciesRows: {
    availabilityRows: [foundIn(frlg), foundIn(dp), foundIn(dp, 3861)],
    forms: [
      form(3860, "deoxys", 3, true),
      form(3861, "deoxys-attack", 3),
      form(3862, "deoxys-speed", 4),
    ],
  },
} as unknown as PokemonDetailRows;

describe("resolvePokemonDetailEntryRoute", () => {
  it("finds an entry in a base group from the species' generation on", () => {
    expect(resolvePokemonDetailEntryRoute(rows, "rs")).toEqual({
      status: "found",
      versionGroup: rs,
    });
  });

  it("moves a game's or an expansion's address to its base group", () => {
    expect(resolvePokemonDetailEntryRoute(rows, "ruby")).toEqual({
      href: "/codex/pokemon/deoxys?game=rs",
      status: "redirect",
    });
    expect(resolvePokemonDetailEntryRoute(rows, "dp-expansion")).toEqual({
      href: "/codex/pokemon/deoxys?game=dp",
      status: "redirect",
    });
  });

  /* Where its generation's pill opens: the first group it can be found in. */
  it("moves a group from before the species to where it can first be found", () => {
    expect(resolvePokemonDetailEntryRoute(rows, "rb")).toEqual({
      href: "/codex/pokemon/deoxys?game=frlg",
      status: "redirect",
    });
    expect(resolvePokemonDetailEntryRoute(rows, "red")).toEqual({
      href: "/codex/pokemon/deoxys?game=rb",
      status: "redirect",
    });
  });

  it("finds nothing for an unknown group", () => {
    expect(resolvePokemonDetailEntryRoute(rows, "nope")).toEqual({
      status: "not-found",
    });
  });
});

describe("getDefaultPokemonDetailVersionGroupSlug", () => {
  it("opens where the species can first be found in its generation", () => {
    expect(getDefaultPokemonDetailVersionGroupSlug(rows)).toBe("frlg");
  });

  it("keeps the group an old `?game=` or `?versionGroup=` named", () => {
    expect(
      getDefaultPokemonDetailVersionGroupSlug(rows, { game: "ruby" }),
    ).toBe("rs");
    expect(
      getDefaultPokemonDetailVersionGroupSlug(rows, { versionGroup: "dp" }),
    ).toBe("dp");
  });

  it("ignores an old group from before the species", () => {
    expect(
      getDefaultPokemonDetailVersionGroupSlug(rows, { versionGroup: "rb" }),
    ).toBe("frlg");
  });

  it("opens an old `?generation=` by its id or slug", () => {
    expect(
      getDefaultPokemonDetailVersionGroupSlug(rows, { generation: "4" }),
    ).toBe("dp");
    expect(
      getDefaultPokemonDetailVersionGroupSlug(rows, {
        generation: "generation-iv",
      }),
    ).toBe("dp");
    expect(
      getDefaultPokemonDetailVersionGroupSlug(rows, {
        generation: "generation-i",
      }),
    ).toBe("frlg");
  });

  it("opens a later form where that form can first be found", () => {
    expect(
      getDefaultPokemonDetailVersionGroupSlug(rows, { form: "deoxys-attack" }),
    ).toBe("dp");
    /* A form with no rows of its own: its generation's first group. */
    expect(
      getDefaultPokemonDetailVersionGroupSlug(rows, { form: "deoxys-speed" }),
    ).toBe("dp");
    /* The species' own form, or an unknown one, opens as the species does. */
    expect(
      getDefaultPokemonDetailVersionGroupSlug(rows, { form: "deoxys" }),
    ).toBe("frlg");
    expect(
      getDefaultPokemonDetailVersionGroupSlug(rows, { form: "nope" }),
    ).toBe("frlg");
  });
});
