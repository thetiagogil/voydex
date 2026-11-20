import {
  getHomeShelfSource,
  isWaitingForPartner,
  toHomePlay,
  type HomePlay,
} from "@/modules/mainline/features/home/data/home-play-model";
import type {
  HomePageData,
  HomePartnerChoice,
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
import { findPartnerDecision } from "@/modules/mainline/features/plays/shared/utils/partner-milestone";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import type { GameCatalogue } from "@/modules/reference/features/games/types";
import { readGameStarters } from "@/modules/reference/features/games/server/game-shelf-reader";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";
import { type ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";
import type { MainlinePageRead } from "@/modules/mainline/shared/client/use-local-page-data";
import { fetchGameCatalogue } from "@/modules/reference/features/games/client/game-catalogue";

/*
 * Each active team member's primary type at its Play's generation, for the
 * tint of its picture on Home's cards.
 */
const readTypeSlugs = async (
  supabase: ServerSupabaseClient,
): Promise<Map<number, string>> => {
  const { data, error } = await supabase
    .schema("reference")
    .from("types")
    .select("id, slug");

  /* A missing tint or badge type falls back to the neutral one. */
  return error ? new Map() : new Map(data.map((type) => [type.id, type.slug]));
};

const readTeamTypes = async (
  supabase: ServerSupabaseClient,
  plays: PlayBrowseItem[],
  slugByTypeId: ReadonlyMap<number, string>,
): Promise<Map<string, string>> => {
  const leads = plays.flatMap((play) =>
    play.activeTeam.members.flatMap((member) =>
      member.play_pokemon_id && member.form_id
        ? [
            {
              formId: member.form_id,
              generationId: play.generation_id,
              id: member.play_pokemon_id,
            },
          ]
        : [],
    ),
  );

  if (!leads.length) {
    return new Map();
  }

  const attributesResult = await supabase
    .schema("reference")
    .from("pokemon_attributes")
    .select("form_id, generation_start_id, primary_type_id")
    .in("form_id", uniqueNumberIds(leads.map((lead) => lead.formId)))
    .order("generation_start_id", { ascending: false });

  /* A missing tint falls back to the neutral one; it never hides a Play. */
  if (attributesResult.error) {
    return new Map();
  }

  return new Map(
    leads.flatMap((lead) => {
      const attribute = attributesResult.data.find(
        (row) =>
          row.form_id === lead.formId &&
          (lead.generationId === null ||
            row.generation_start_id <= lead.generationId),
      );
      const slug = attribute
        ? slugByTypeId.get(attribute.primary_type_id)
        : undefined;

      return slug && isPokemonTypeSlug(slug) ? [[lead.id, slug] as const] : [];
    }),
  );
};

/*
 * A Play that has only just started: nothing recorded but, at most, its
 * partner, who would be the only Pokémon on the team.
 */
const isBrandNewPlay = (play: PlayBrowseItem) =>
  (play.completed_milestone_count ?? 0) <= 1 &&
  (play.active_team_count ?? 0) + (play.reserve_team_count ?? 0) <= 1 &&
  (play.timeline_event_count ?? 0) <= 2;

/* The partner a Play with nothing recorded yet is waiting for, to pick on Home's meadow. */
const readPartnerChoice = async (
  supabase: ServerSupabaseClient,
  play: PlayBrowseItem,
): Promise<HomePartnerChoice | null> => {
  if (
    !play.play_id ||
    !play.game_slug ||
    !play.version_group_id ||
    !isWaitingForPartner(play)
  ) {
    return null;
  }

  const [milestonesResult, starters] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select(
        "category_sort_order, decision_options, milestone_id, sort_order, version_group_id",
      )
      .eq("play_id", play.play_id)
      .eq("version_group_id", play.version_group_id),
    readGameStarters(supabase, play.game_slug),
  ]);

  if (milestonesResult.error) {
    throw new Error("Unable to load your Play's first milestone.");
  }

  const options = (starters?.starters ?? []).flatMap((starter) => {
    const decision = findPartnerDecision({
      baseVersionGroupId: play.version_group_id ?? 0,
      partner: { formId: starter.formId, speciesId: starter.speciesId },
      rows: milestonesResult.data ?? [],
    });

    return decision ? [{ ...decision, starter }] : [];
  });

  return options.length > 1
    ? {
        options: options.map(({ decisionOptionId, starter }) => ({
          decisionOptionId,
          starter,
        })),
        playId: play.play_id,
      }
    : null;
};

/* A Play as Home's cards show it, its team tinted by type. */
const toCardPlay = (
  item: PlayBrowseItem,
  teamTypes: ReadonlyMap<string, string>,
): HomePlay | null => {
  const play = toHomePlay(item);

  return play
    ? {
        ...play,
        team: play.team.map((member) =>
          member
            ? { ...member, typeSlug: teamTypes.get(member.id) ?? null }
            : null,
        ),
      }
    : null;
};

/* How many of the latest moments Home lists. */
const HOME_MOMENT_COUNT = 8;
/* Home's profile shows one row of covers and one of favourites. */
const HOME_COVER_COUNT = 5;
const HOME_FAVOURITE_COUNT = 4;
const HOME_TYPE_COUNT = 6;

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
    types: stats.types
      .filter((type) => type.count > 0)
      .toSorted((first, second) => second.count - first.count)
      .slice(0, HOME_TYPE_COUNT),
  };
};

/*
 * Mainline Home: with no Plays, the picker that starts one; otherwise the
 * shelf of your latest Plays, each with its team for the band. `?play=`
 * picks the current one.
 */
export const getHomePageData = async (
  requestedPlayId: string | null,
  {
    catalogue,
  }: {
    /* Game data, from the pre-built game catalogue. */
    catalogue: GameCatalogue | null;
  },
): Promise<HomePageData> => {
  const supabase = await getLocalQueryClient();
  const userId = await getSignedInTrainerId(supabase);
  const [names, browseItems] = await Promise.all([
    readTrainerNames(supabase, userId),
    readMainlinePlayLibrary(supabase, userId),
  ]);

  if (!browseItems.length) {
    if (!catalogue) {
      throw new Error("Unable to load the games.");
    }

    return {
      displayName: names.displayName,
      kind: "empty",
      picker: { ...catalogue, trainerName: names.trainerName },
    };
  }

  const requested = browseItems.find(
    (play) => play.play_id === requestedPlayId,
  );
  /*
   * The Play you're on: the one `?play=` asks for (an older or finished one
   * too), else the one opened (or changed) last among those underway.
   */
  const current = requested ?? getHomeShelfSource(browseItems)[0];
  const slugByTypeId = await readTypeSlugs(supabase);

  if (browseItems.length === 1 && isBrandNewPlay(current)) {
    const [teamTypes, partnerChoice] = await Promise.all([
      readTeamTypes(supabase, [current], slugByTypeId),
      readPartnerChoice(supabase, current),
    ]);
    const play = toCardPlay(current, teamTypes);

    if (play) {
      return {
        band: { partnerChoice, play },
        displayName: names.displayName,
        kind: "first",
      };
    }
  }

  return {
    displayName: names.displayName,
    journey: current,
    kind: "plays",
    profile: await readHomeProfile(supabase, userId, browseItems),
  };
};

/*
 * Home's read (`?play=` picks the current Play), with the games from the
 * pre-built catalogue. Without them Home still shows your Plays, and the
 * next visit asks for them again.
 */
export const homePageRead = (
  requestedPlayId: string | null,
): MainlinePageRead<{ data: HomePageData; hasGames: boolean }> => ({
  key: `home:${requestedPlayId ?? ""}`,
  keep: (result) => result?.hasGames ?? false,
  read: async () => {
    const catalogue = await fetchGameCatalogue().catch(() => null);
    const data = await getHomePageData(requestedPlayId, { catalogue });

    return data && { data, hasGames: catalogue !== null };
  },
});
