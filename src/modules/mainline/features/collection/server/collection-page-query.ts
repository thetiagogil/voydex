import { buildCollectionGames } from "@/modules/mainline/features/collection/data/collection-games-model";
import { buildTrainerPokemonEntries } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { readTrainerPokemonRows } from "@/modules/mainline/shared/server/trainer-pokemon-reader";
import type { CollectionPageData } from "@/modules/mainline/features/collection/types";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export const getCollectionPageData = async (): Promise<CollectionPageData> => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);
  const [rows, catalogue] = await Promise.all([
    readTrainerPokemonRows(supabase, userId),
    readGameCatalogue(),
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
    games: buildCollectionGames(catalogue.games, rows.plays),
    gameCount: gameSlugs.size,
    latestPlayId: latestPlay?.play_id ?? null,
    pokemonPlayCount: playIds.size,
    totalPlayCount: rows.plays.length,
    types: rows.types.map((type) => ({ name: type.name, slug: type.slug })),
  };
};
