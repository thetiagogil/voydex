import type { PokemonDetailRows } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-page-mappers";
import {
  getFirstFoundBaseVersionGroup,
  matchesSlugOrId,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope-defaults";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import {
  resolveVersionGroupRoute,
  type VersionGroupRouteRows,
} from "@/modules/reference/features/games/domain/version-groups";
import type { VersionGroup } from "@/modules/reference/types";

/*
 * Where a Pokémon's addresses lead, from its pre-built entry rows: the
 * entry holds the species, every game and version group, and every row of
 * where it can be found, which is all an address needs.
 */

/*
 * What picks the group `/codex/pokemon/{species}` opens in when its query
 * names none: an old address's game, group or generation, and the form to
 * open.
 */
export type PokemonDetailLegacyScope = {
  /* A form's slug: the entry opens where that form can first be found. */
  form?: string;
  game?: string;
  generation?: string;
  versionGroup?: string;
};

export type PokemonDetailEntryRoute =
  | { status: "not-found" }
  /* A game's or an expansion's address, or a group from before the species. */
  | { href: string; status: "redirect" }
  | { status: "found"; versionGroup: VersionGroup };

const getRouteRows = (rows: PokemonDetailRows): VersionGroupRouteRows => ({
  games: rows.baseRows.games,
  versionGroups: rows.baseRows.versionGroups,
});

const getGenerationOrder = (rows: PokemonDetailRows, generationId: number) =>
  rows.baseRows.generations.find((generation) => generation.id === generationId)
    ?.sort_order ?? generationId;

/* Whether the species exists by a generation: introduced in it or before. */
const existsInGeneration = (rows: PokemonDetailRows, generationId: number) =>
  getGenerationOrder(rows, generationId) >=
  getGenerationOrder(rows, rows.baseRows.species.introduced_generation_id);

/*
 * Where a generation opens for this species, as its generation pill does:
 * the first base group it can be found in, else the first group.
 */
const getFoundVersionGroupSlug = (
  rows: PokemonDetailRows,
  generationId: number,
) =>
  getFirstFoundBaseVersionGroup({
    availability: rows.speciesRows.availabilityRows,
    generationId,
    versionGroups: rows.baseRows.versionGroups,
  })?.slug ?? null;

/*
 * Where a later form opens (Hisuian Arcanine, Partner Pikachu): the first
 * base group it can be found in, from the generation it arrived. Null when
 * the form is the species' own or unknown.
 */
const getFormFoundVersionGroupSlug = (
  rows: PokemonDetailRows,
  formSlug: string,
) => {
  const form = rows.speciesRows.forms.find((item) => item.slug === formSlug);

  if (!form || form.is_default) {
    return null;
  }

  const { versionGroups } = rows.baseRows;
  const availability = rows.speciesRows.availabilityRows.filter(
    (row) => row.form_id === form.id,
  );
  const generationOfGroup = new Map(
    versionGroups.map((group) => [group.id, group.generation_id]),
  );
  const foundGenerations = new Set(
    availability.flatMap((row) => {
      const generationId =
        row.target_version_group_id === null
          ? undefined
          : generationOfGroup.get(row.target_version_group_id);

      return generationId === undefined ? [] : [generationId];
    }),
  );
  const [firstGeneration] = [...foundGenerations]
    .filter(
      (generationId) =>
        getGenerationOrder(rows, generationId) >=
        getGenerationOrder(rows, form.introduced_generation_id),
    )
    .toSorted(
      (left, right) =>
        getGenerationOrder(rows, left) - getGenerationOrder(rows, right),
    );

  /* A battle form (a Mega) has no rows of its own: its generation's first group. */
  if (firstGeneration === undefined) {
    return getFoundVersionGroupSlug(rows, form.introduced_generation_id);
  }

  return (
    getFirstFoundBaseVersionGroup({
      availability,
      generationId: firstGeneration,
      versionGroups,
    })?.slug ?? null
  );
};

/*
 * Where `/codex/pokemon/{species}` opens without a group: the group a legacy game or
 * `?versionGroup=` names, else the generation a legacy `?generation=` names,
 * when the species exists there; else, for a later `?form=`, where that form
 * can first be found; otherwise the generation it was introduced in. A
 * generation opens its first group the species can be found in (Legends:
 * Arceus for Wyrdeer).
 */
export const getDefaultPokemonDetailVersionGroupSlug = (
  rows: PokemonDetailRows,
  legacyScope: PokemonDetailLegacyScope = {},
): string | null => {
  const routeRows = getRouteRows(rows);
  const requestedRoute = [legacyScope.game, legacyScope.versionGroup]
    .map((slug) => (slug ? resolveVersionGroupRoute(slug, routeRows) : null))
    .find((route) => route !== null);

  if (
    requestedRoute &&
    existsInGeneration(rows, requestedRoute.versionGroup.generation_id)
  ) {
    return requestedRoute.versionGroup.slug;
  }

  const requestedGeneration = rows.baseRows.generations.find((generation) =>
    matchesSlugOrId(generation, legacyScope.generation),
  );
  const formVersionGroupSlug =
    !requestedGeneration && legacyScope.form
      ? getFormFoundVersionGroupSlug(rows, legacyScope.form)
      : null;

  if (formVersionGroupSlug) {
    return formVersionGroupSlug;
  }

  return getFoundVersionGroupSlug(
    rows,
    requestedGeneration && existsInGeneration(rows, requestedGeneration.id)
      ? requestedGeneration.id
      : rows.baseRows.species.introduced_generation_id,
  );
};

/*
 * What an entry's address names: an unknown group is not found, a game's
 * or an expansion's old address goes to its base group, and a group from
 * before the species existed to its introduced generation's first group it
 * can be found in. (A redirect opens the default form.)
 */
export const resolvePokemonDetailEntryRoute = (
  rows: PokemonDetailRows,
  versionGroupSlug: string,
): PokemonDetailEntryRoute => {
  const speciesSlug = rows.baseRows.species.slug;
  const route = resolveVersionGroupRoute(versionGroupSlug, getRouteRows(rows));

  if (!route) {
    return { status: "not-found" };
  }

  if (!route.isCanonical) {
    return {
      href: getPokemonDetailScopeHref(speciesSlug, {
        versionGroup: route.versionGroup.slug,
      }),
      status: "redirect",
    };
  }

  if (!existsInGeneration(rows, route.versionGroup.generation_id)) {
    const introducedVersionGroupSlug = getFoundVersionGroupSlug(
      rows,
      rows.baseRows.species.introduced_generation_id,
    );

    return introducedVersionGroupSlug
      ? {
          href: getPokemonDetailScopeHref(speciesSlug, {
            versionGroup: introducedVersionGroupSlug,
          }),
          status: "redirect",
        }
      : { status: "not-found" };
  }

  return { status: "found", versionGroup: route.versionGroup };
};
