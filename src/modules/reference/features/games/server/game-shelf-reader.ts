import {
  buildGameShelfGames,
  buildGameStarters,
  type GameStarterRows,
} from "@/modules/reference/features/games/data/game-shelf-mappers";
import type {
  GameShelfGame,
  GameStarters,
} from "@/modules/reference/features/games/types";
import type { Game } from "@/modules/reference/shared/database-types";
import { loadChunkedReferenceRows } from "@/modules/reference/shared/server/reference-row-loaders";
import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

const STARTER_METHOD_SLUG = "starter";

/*
 * The game picker's reads (Start a Play, New Play, the Team Planner). Public
 * reference data, so they work signed out. A failed read throws; it never
 * reads as "no games" or "no starters".
 */

/* Every game for the picker's cover shelf, in release order. */
export const readGameShelfGames = async (): Promise<GameShelfGame[]> => {
  const supabase = await createServerSupabaseClient();
  const reference = supabase.schema("reference");
  const [
    gamesResult,
    generationsResult,
    regionsResult,
    versionGroupsResult,
    gamePlatformsResult,
    platformsResult,
  ] = await Promise.all([
    reference.from("games").select("*").order("sort_order"),
    reference.from("generations").select("*").order("sort_order"),
    reference.from("regions").select("*").order("sort_order"),
    reference.from("version_groups").select("*").order("sort_order"),
    reference.from("game_platforms").select("*").order("sort_order"),
    reference.from("platforms").select("*").order("sort_order"),
  ]);

  if (
    gamesResult.error ||
    generationsResult.error ||
    regionsResult.error ||
    versionGroupsResult.error ||
    gamePlatformsResult.error ||
    platformsResult.error
  ) {
    throw new Error("Unable to load the game shelf.");
  }

  return buildGameShelfGames({
    gamePlatforms: gamePlatformsResult.data,
    games: gamesResult.data,
    generations: generationsResult.data,
    platforms: platformsResult.data,
    regions: regionsResult.data,
    versionGroups: versionGroupsResult.data,
  });
};

/* The rows behind the first partner choice of the given games. */
const loadGameStarterRows = async (
  supabase: ServerSupabaseClient,
  games: Game[],
): Promise<GameStarterRows> => {
  const reference = supabase.schema("reference");
  const versionGroupIds = uniqueNumberIds(
    games.map((game) => game.version_group_id),
  );
  const [methodResult, generationsResult, typesResult, pokedexesResult] =
    await Promise.all([
      reference
        .from("availability_methods")
        .select("id")
        .eq("slug", STARTER_METHOD_SLUG)
        .single(),
      reference.from("generations").select("*").order("sort_order"),
      reference.from("types").select("*").order("sort_order"),
      reference
        .from("pokedex")
        .select("id, sort_order, version_group_id")
        .in("version_group_id", versionGroupIds),
    ]);

  if (
    methodResult.error ||
    generationsResult.error ||
    typesResult.error ||
    pokedexesResult.error
  ) {
    throw new Error("Unable to load first partners.");
  }

  const availabilityResult = await reference
    .from("pokemon_availability")
    .select("form_id, game_id, species_id, version_group_id")
    .eq("availability_method_id", methodResult.data.id)
    .in("version_group_id", versionGroupIds);

  if (availabilityResult.error) {
    throw new Error("Unable to load first partners.");
  }

  const starterAvailability = availabilityResult.data;
  const speciesIds = uniqueNumberIds(
    starterAvailability.map((row) => row.species_id),
  );
  const formIds = uniqueNumberIds(
    starterAvailability.map((row) => row.form_id),
  );
  const pokedexIds = pokedexesResult.data.map((pokedex) => pokedex.id);

  if (!speciesIds.length) {
    return {
      attributes: [],
      forms: [],
      generations: generationsResult.data,
      pokedexEntries: [],
      pokedexes: pokedexesResult.data,
      species: [],
      starterAvailability,
      types: typesResult.data,
    };
  }

  const [speciesResult, formsResult, attributesResult, pokedexEntries] =
    await Promise.all([
      reference.from("pokemon_species").select("*").in("id", speciesIds),
      reference.from("pokemon_forms").select("*").in("id", formIds),
      reference.from("pokemon_attributes").select("*").in("form_id", formIds),
      loadChunkedReferenceRows<GameStarterRows["pokedexEntries"][number]>(
        pokedexIds,
        (ids, from, to) =>
          reference
            .from("pokedex_entries")
            .select("pokedex_id, pokedex_number, species_id")
            .in("pokedex_id", ids)
            .in("species_id", speciesIds)
            .order("pokedex_id")
            .order("pokedex_number")
            .range(from, to),
        "Unable to load first partners.",
      ),
    ]);

  if (speciesResult.error || formsResult.error || attributesResult.error) {
    throw new Error("Unable to load first partners.");
  }

  return {
    attributes: attributesResult.data,
    forms: formsResult.data,
    generations: generationsResult.data,
    pokedexEntries,
    pokedexes: pokedexesResult.data,
    species: speciesResult.data,
    starterAvailability,
    types: typesResult.data,
  };
};

/*
 * One game's first partner choice, by game slug: the trio, or the one partner
 * chosen for you (Yellow, the Let's Go games). Null for an unknown game; an
 * empty choice when Voydex has no starter for it.
 */
export const readGameStarters = async (
  gameSlug: string,
): Promise<GameStarters | null> => {
  const supabase = await createServerSupabaseClient();
  const gameResult = await supabase
    .schema("reference")
    .from("games")
    .select("*")
    .eq("slug", gameSlug)
    .maybeSingle();

  if (gameResult.error) {
    throw new Error("Unable to load first partners.");
  }

  if (!gameResult.data) {
    return null;
  }

  const rows = await loadGameStarterRows(supabase, [gameResult.data]);

  return buildGameStarters(gameResult.data, rows);
};

/*
 * Every game's first partner choice, by game slug, for a picker that shows
 * the partners as soon as a game is picked (Start a Play, New Play).
 */
export const readGameStartersByGameSlug = async (): Promise<
  Record<string, GameStarters>
> => {
  const supabase = await createServerSupabaseClient();
  const gamesResult = await supabase
    .schema("reference")
    .from("games")
    .select("*")
    .order("sort_order");

  if (gamesResult.error) {
    throw new Error("Unable to load first partners.");
  }

  const rows = await loadGameStarterRows(supabase, gamesResult.data);

  return Object.fromEntries(
    gamesResult.data.map((game) => [game.slug, buildGameStarters(game, rows)]),
  );
};
