import {
  HOME_MOMENT_COUNT,
  toHomeMoments,
} from "@/modules/mainline/features/home/data/home-moments-model";
import {
  getHomeShelfSource,
  HOME_SHELF_PLAY_COUNT,
  isWaitingForPartner,
  toHomePlay,
} from "@/modules/mainline/features/home/data/home-play-model";
import type {
  HomeBand,
  HomeMomentsData,
  HomePageData,
  HomePartnerChoice,
} from "@/modules/mainline/features/home/types";
import { getSignedInTrainerId } from "@/modules/mainline/shared/client/signed-in-trainer";
import { readMainlinePlayMomentContext } from "@/modules/mainline/features/plays/shared/client/play-moment-context-reader";
import { readMainlinePlayTimelinePreview } from "@/modules/mainline/features/plays/shared/client/play-timeline-reader";
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
 * tint of the lead's sticker and of a meadow Pokémon's stand-in.
 */
const readTeamTypes = async (
  supabase: ServerSupabaseClient,
  plays: PlayBrowseItem[],
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

  const [attributesResult, typesResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_attributes")
      .select("form_id, generation_start_id, primary_type_id")
      .in("form_id", uniqueNumberIds(leads.map((lead) => lead.formId)))
      .order("generation_start_id", { ascending: false }),
    supabase.schema("reference").from("types").select("id, slug"),
  ]);

  /* A missing tint falls back to the neutral one; it never hides a Play. */
  if (attributesResult.error || typesResult.error) {
    return new Map();
  }

  const slugByTypeId = new Map(
    typesResult.data.map((type) => [type.id, type.slug]),
  );

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

/*
 * The current Play's latest five moments, oldest first, as Home draws them,
 * and whether anything was recorded before them. Hidden types are left out
 * in the read, and one more is read to tell.
 */
const readHomeMoments = async (
  supabase: ServerSupabaseClient,
  play: PlayBrowseItem,
): Promise<HomeMomentsData> => {
  const playId = play.play_id ?? "";
  const { events, hasEarlier } = toHomeMoments(
    await readMainlinePlayTimelinePreview(
      supabase,
      playId,
      HOME_MOMENT_COUNT + 1,
    ),
  );
  const context = await readMainlinePlayMomentContext(supabase, {
    events,
    generationId: play.generation_id,
    playId,
  });

  return { context, events, hasEarlier };
};

/*
 * Mainline Home: with no Plays, the picker that starts one; otherwise the
 * shelf of your latest Plays, each with its team for the meadow and its
 * latest moments. `?play=` picks the current one.
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
  const latest = getHomeShelfSource(browseItems).slice(
    0,
    HOME_SHELF_PLAY_COUNT,
  );
  /*
   * The shelf holds the Plays still underway, opened (or changed) last first. Any other asked for by
   * `?play=` (an older or finished one) leads it, so a link to any Play
   * still opens on that Play.
   */
  const shelfItems =
    requested && !latest.includes(requested)
      ? [requested, ...latest.slice(0, HOME_SHELF_PLAY_COUNT - 1)]
      : latest;
  const current = requested ?? shelfItems[0];
  /*
   * Every Play on the shelf comes with its band and moments, so picking one
   * switches at once, without asking the server.
   */
  const [teamTypes, bandReads] = await Promise.all([
    readTeamTypes(supabase, shelfItems),
    Promise.all(
      shelfItems.map((item) =>
        Promise.all([
          readHomeMoments(supabase, item),
          readPartnerChoice(supabase, item),
        ]),
      ),
    ),
  ]);
  const coverShapeByGameSlug = new Map(
    catalogue?.games.map((game) => [game.slug, game.coverShape]),
  );
  const bands = shelfItems.flatMap((item, index): HomeBand[] => {
    const play = toHomePlay(item);
    const [moments, partnerChoice] = bandReads[index];

    if (!play) return [];

    return [
      {
        moments,
        partnerChoice,
        play: {
          ...play,
          coverShape: play.gameSlug
            ? (coverShapeByGameSlug.get(play.gameSlug) ?? null)
            : null,
          lead: play.lead
            ? { ...play.lead, typeSlug: teamTypes.get(play.lead.id) ?? null }
            : null,
          team: play.team.map((member) =>
            member
              ? { ...member, typeSlug: teamTypes.get(member.id) ?? null }
              : null,
          ),
        },
      },
    ];
  });

  return {
    bands,
    currentPlayId: current.play_id ?? bands[0].play.id,
    displayName: names.displayName,
    isFirstPlay: browseItems.length === 1 && isBrandNewPlay(current),
    kind: "plays",
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
