import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { buildGamePokedexData } from "@/modules/codex/features/games/pokedex/data/game-pokedex-mappers";
import {
  selectGamePokedexAbilityIds,
  selectGamePokedexFormIds,
  selectGamePokedexSpeciesIds,
} from "@/modules/codex/features/games/pokedex/data/game-pokedex-selectors";
import {
  loadGamePokedexAbilities,
  loadGamePokedexAttributes,
  loadGamePokedexBaseRows,
  loadGamePokedexEntries,
  loadGamePokedexForms,
  loadGamePokedexSpecies,
  loadPokedexSpeciesRows,
  loadVersionGroupFamilyPokedexes,
} from "@/modules/codex/features/games/pokedex/server/game-pokedex-loaders";
import { getPokedexPokemonCounts } from "@/modules/codex/features/games/shared/data/version-group-pokedexes";
import type { VersionGroupRouteRows } from "@/modules/reference/features/games/domain/version-groups";
import type {
  GamePokedexData,
  Pokedex,
  VersionGroup,
} from "@/modules/reference/types";

/* One Pokédex of a base version group's family, with its entries. */
const readGamePokedexData = async (
  supabase: ServerSupabaseClient,
  {
    pokedex,
    pokedexes,
    versionGroup,
    versionGroups,
  }: {
    pokedex: Pokedex;
    /* The group's Pokédexes and its expansions'. */
    pokedexes: Pokedex[];
    versionGroup: VersionGroup;
    versionGroups: VersionGroup[];
  },
): Promise<GamePokedexData> => {
  const [baseRows, entries, otherPokedexRows] = await Promise.all([
    loadGamePokedexBaseRows(supabase, versionGroup),
    loadGamePokedexEntries(supabase, pokedex.id),
    loadPokedexSpeciesRows(
      supabase,
      pokedexes
        .filter((other) => other.id !== pokedex.id)
        .map((other) => other.id),
    ),
  ]);
  const speciesIds = selectGamePokedexSpeciesIds(entries);
  const [species, forms] = await Promise.all([
    loadGamePokedexSpecies(supabase, speciesIds),
    loadGamePokedexForms(supabase, speciesIds),
  ]);
  const formIds = selectGamePokedexFormIds({ entries, forms });
  const attributes = await loadGamePokedexAttributes(supabase, formIds);
  const abilities = await loadGamePokedexAbilities(
    supabase,
    selectGamePokedexAbilityIds(attributes),
  );

  return buildGamePokedexData({
    abilities,
    attributes,
    entries,
    forms,
    games: baseRows.games,
    generations: baseRows.generations,
    pokedex,
    pokedexes,
    pokemonCountByPokedexId: getPokedexPokemonCounts([
      ...entries,
      ...otherPokedexRows,
    ]),
    species,
    types: baseRows.types,
    versionGroupById: new Map(versionGroups.map((group) => [group.id, group])),
    versionGroup,
  });
};

/*
 * Every Pokédex page of a base version group: its own Pokédexes and its
 * expansions' (the Isle of Armor Pokédex is read under Sword and Shield).
 */
export const readGamePokedexPages = async (
  supabase: ServerSupabaseClient,
  versionGroup: VersionGroup,
  { versionGroups }: VersionGroupRouteRows,
): Promise<{ data: GamePokedexData; pokedex: Pokedex }[]> => {
  const pokedexes = await loadVersionGroupFamilyPokedexes(
    supabase,
    versionGroup,
    versionGroups,
  );

  return Promise.all(
    pokedexes.map(async (pokedex) => ({
      data: await readGamePokedexData(supabase, {
        pokedex,
        pokedexes,
        versionGroup,
        versionGroups,
      }),
      pokedex,
    })),
  );
};
