import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { codexFiles } from "@/modules/codex/codex-files";
import { loadGamesPageRows } from "@/modules/codex/features/games/browse/server/games-page-loaders";
import { loadGameDetailRows } from "@/modules/codex/features/games/detail/server/game-detail-loaders";
import { readGamePokedexPages } from "@/modules/codex/features/games/pokedex/server/game-pokedex-query";
import { readPokedexPageData } from "@/modules/codex/features/pokemon/browse/server/pokedex-page-query";
import { readPokemonDetailMenu } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-menu-query";
import { readPokemonDetailRows } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-page-query";
import { loadVersionGroupRouteRows } from "@/modules/codex/shared/server/version-group-route-query";

/* Writes one pre-built file; the build script owns where and how. */
export type WriteCodexFile = (path: string, data: unknown) => Promise<void>;

const requirePath = (path: string | null, what: string) => {
  if (path === null) {
    throw new Error(`${what} has a slug that can't name a file.`);
  }

  return path;
};

const readSpeciesSlugs = async (supabase: ServerSupabaseClient) => {
  const { data, error } = await supabase
    .schema("reference")
    .from("pokemon_species")
    .select("slug")
    .order("national_number", { ascending: true });

  if (error) {
    throw new Error("Unable to load the Pokémon species.");
  }

  return data.map((row) => row.slug);
};

/*
 * Every Codex page's file, read through the same readers the pages used
 * to call on the server, from a database holding every game data file. It
 * runs only in the build (`npm run codex:build`); the pages read the files.
 */
export const buildCodexFiles = async (
  supabase: ServerSupabaseClient,
  write: WriteCodexFile,
) => {
  const routeRows = await loadVersionGroupRouteRows(supabase);
  const baseVersionGroups = routeRows.versionGroups.filter(
    (versionGroup) => versionGroup.parent_version_group_id === null,
  );

  await write(
    requirePath(codexFiles.versionGroups(), "The game list"),
    routeRows,
  );
  await write(
    requirePath(codexFiles.games(), "Games browse"),
    await loadGamesPageRows(supabase),
  );
  await write(
    requirePath(codexFiles.pokemon(), "Pokémon browse"),
    await readPokedexPageData(supabase),
  );

  for (const versionGroup of baseVersionGroups) {
    const name = `Version group ${versionGroup.slug}`;

    await write(
      requirePath(codexFiles.game(versionGroup.slug), name),
      await loadGameDetailRows(supabase, versionGroup, routeRows.versionGroups),
    );
    await write(
      requirePath(codexFiles.pokemonMenu(versionGroup.slug), name),
      await readPokemonDetailMenu(supabase, versionGroup, routeRows),
    );

    for (const { data, pokedex } of await readGamePokedexPages(
      supabase,
      versionGroup,
      routeRows,
    )) {
      await write(
        requirePath(
          codexFiles.gamePokedex(versionGroup.slug, pokedex.slug),
          `${name}'s Pokédex ${pokedex.slug}`,
        ),
        data,
      );
    }
  }

  for (const slug of await readSpeciesSlugs(supabase)) {
    const rows = await readPokemonDetailRows(supabase, slug);

    if (!rows) {
      throw new Error(`The Pokémon ${slug} has no entry.`);
    }

    await write(requirePath(codexFiles.pokemonEntry(slug), slug), rows);
  }
};
