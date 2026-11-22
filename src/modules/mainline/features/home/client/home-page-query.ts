import { getHomeShelfSource } from "@/modules/mainline/features/home/data/home-play-model";
import type {
  HomePageData,
  HomeProfile,
} from "@/modules/mainline/features/home/types";
import {
  readMainlineMomentInstants,
  readMainlineTimelineAcrossPlays,
} from "@/modules/mainline/features/plays/shared/client/play-timeline-reader";
import { readFavouritePokemonRows } from "@/modules/mainline/shared/client/favourite-pokemon-reader";
import { readTrainerPokemonRows } from "@/modules/mainline/shared/client/trainer-pokemon-reader";
import { buildFavouritePokemon } from "@/modules/mainline/shared/data/favourite-pokemon-model";
import { buildStatsModel } from "@/modules/mainline/shared/data/stats-model";
import { buildTrainerPokemonEntries } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { getSignedInTrainerId } from "@/modules/mainline/shared/client/signed-in-trainer";
import { readMainlinePlayLibrary } from "@/modules/mainline/features/plays/shared/client/play-library-reader";
import { readTrainerNames } from "@/modules/mainline/features/plays/shared/client/trainer-profile-reader";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";
import { type ServerSupabaseClient } from "@/platform/supabase/server-client";
import type { MainlinePageRead } from "@/modules/mainline/shared/client/use-local-page-data";

/* How many of the latest moments Home lists. */
const HOME_MOMENT_COUNT = 6;
/* Home's profile shows one row of covers and one of favourites. */
const HOME_COVER_COUNT = 5;
const HOME_FAVOURITE_COUNT = 4;

/*
 * Home's trainer profile: what Statistics and the Collection read, cut
 * short, and the latest moments across every Play.
 */
const readHomeProfile = async (
  supabase: ServerSupabaseClient,
  userId: string,
  plays: PlayBrowseItem[],
): Promise<HomeProfile> => {
  const playIds = plays.flatMap((play) => (play.play_id ? [play.play_id] : []));
  const playById = new Map(plays.map((play) => [play.play_id, play]));
  const [trainerRows, favouriteRows, events, momentInstants] =
    await Promise.all([
      readTrainerPokemonRows(supabase, userId),
      readFavouritePokemonRows(supabase, userId),
      readMainlineTimelineAcrossPlays(supabase, playIds, HOME_MOMENT_COUNT),
      readMainlineMomentInstants(supabase, playIds),
    ]);
  const entries = buildTrainerPokemonEntries(trainerRows);
  const stats = buildStatsModel(trainerRows, entries);
  return {
    covers: stats.playCovers.slice(0, HOME_COVER_COUNT),
    favourites: buildFavouritePokemon(
      favouriteRows,
      trainerRows.types,
      entries,
    ).slice(0, HOME_FAVOURITE_COUNT),
    figures: {
      minutes: stats.minutes,
      ownedCount: stats.speciesCount,
      playCount: stats.playCount,
      regionCount: stats.regions.length,
      visitedRegionCount: stats.regions.filter(
        (region) => region.playLabels.length,
      ).length,
    },
    momentInstants,
    moments: events.map((event) => {
      const play = playById.get(event.play_id);

      return {
        coverImageUrl: play?.coverImageUrl ?? null,
        event,
        gameName: play?.game_name ?? "Unknown game",
        gameSlug: play?.game_slug ?? null,
        playName: play?.play_name ?? "Untitled Play",
      };
    }),
    title: stats.title.title,
  };
};

/*
 * Mainline Home: your trainer profile and the Play you're on, the one
 * `?play=` asks for (an older or finished one too), else the one opened
 * (or changed) last among those underway. With no Plays the profile is the
 * same, empty, and there is no Play to go back into.
 */
export const getHomePageData = async (
  requestedPlayId: string | null,
): Promise<HomePageData> => {
  const supabase = await getLocalQueryClient();
  const userId = await getSignedInTrainerId(supabase);
  const [names, browseItems] = await Promise.all([
    readTrainerNames(supabase, userId),
    readMainlinePlayLibrary(supabase, userId),
  ]);
  const requested = browseItems.find(
    (play) => play.play_id === requestedPlayId,
  );

  return {
    displayName: names.displayName,
    journey: requested ?? getHomeShelfSource(browseItems)[0] ?? null,
    profile: await readHomeProfile(supabase, userId, browseItems),
  };
};

/* Home's read (`?play=` picks the current Play). */
export const homePageRead = (
  requestedPlayId: string | null,
): MainlinePageRead<{ data: HomePageData }> => ({
  key: `home:${requestedPlayId ?? ""}`,
  read: async () => ({ data: await getHomePageData(requestedPlayId) }),
});
