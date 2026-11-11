import { buildCollectionGames } from "@/modules/mainline/features/collection/data/collection-games-model";
import { buildFavouritePokemon } from "@/modules/mainline/features/collection/data/favourite-pokemon-model";
import { readFavouritePokemonRows } from "@/modules/mainline/features/collection/client/favourite-pokemon-reader";
import { buildTrainerPokemonEntries } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { getSignedInTrainerId } from "@/modules/mainline/shared/client/signed-in-trainer";
import { readTrainerPokemonRows } from "@/modules/mainline/shared/client/trainer-pokemon-reader";
import type { CollectionPageData } from "@/modules/mainline/features/collection/types";
import type { GameCatalogue } from "@/modules/reference/features/games/types";
import { readSpeciesGenerations } from "@/modules/reference/features/pokemon/server/species-generations-reader";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";

/* `catalogue` is game data, from the pre-built game catalogue. */
export const getCollectionPageData = async (
  catalogue: GameCatalogue,
): Promise<CollectionPageData> => {
  const supabase = await getLocalQueryClient();
  const userId = await getSignedInTrainerId(supabase);
  const [rows, favouriteRows, generations] = await Promise.all([
    readTrainerPokemonRows(supabase, userId),
    readFavouritePokemonRows(supabase, userId),
    readSpeciesGenerations(supabase),
  ]);
  const entries = buildTrainerPokemonEntries(rows);
  const playIds = new Set(entries.flatMap((entry) => entry.playIds));
  const gameSlugs = new Set(
    rows.plays.flatMap((play) =>
      play.play_id && playIds.has(play.play_id) && play.game_slug
        ? [play.game_slug]
        : [],
    ),
  );
  const latestPlay = rows.plays.find(
    (play) => play.play_id && !play.archived_at,
  );

  return {
    entries,
    favourites: buildFavouritePokemon(favouriteRows, rows.types, entries),
    games: buildCollectionGames(catalogue.games, rows.plays),
    generations,
    gameCount: gameSlugs.size,
    latestPlayId: latestPlay?.play_id ?? null,
    pokemonPlayCount: playIds.size,
    totalPlayCount: rows.plays.length,
    types: rows.types.map((type) => ({ name: type.name, slug: type.slug })),
  };
};
