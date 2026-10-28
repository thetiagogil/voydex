import {
  HOME_MOMENT_COUNT,
  toHomeMoments,
} from "@/modules/mainline/features/home/data/home-moments-model";
import {
  HOME_SHELF_PLAY_COUNT,
  isWaitingForPartner,
  toHomePlay,
} from "@/modules/mainline/features/home/data/home-play-model";
import type {
  HomeBand,
  HomeIntentOffer,
  HomeMomentsData,
  HomePageData,
  HomePartnerChoice,
} from "@/modules/mainline/features/home/types";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { readMainlinePlayMomentContext } from "@/modules/mainline/features/plays/shared/server/play-moment-context-reader";
import { readMainlinePlayTimelinePreview } from "@/modules/mainline/features/plays/shared/server/play-timeline-reader";
import { readMainlinePlayLibrary } from "@/modules/mainline/features/plays/shared/server/play-library-reader";
import { readNewPlayPickerData } from "@/modules/mainline/features/plays/shared/server/new-play-picker-query";
import { readSignedInStartIntent } from "@/modules/mainline/features/plays/shared/server/start-intent";
import { readSignedInTrainerNames } from "@/modules/mainline/features/plays/shared/server/trainer-profile-query";
import { findPartnerDecision } from "@/modules/mainline/features/plays/shared/utils/partner-milestone";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";
import { readGameStarters } from "@/modules/reference/features/games/server/game-shelf-reader";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

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

/* The Play picked before signing up, offered once the trainer has Plays. */
const readIntentOffer = async (
  supabase: ServerSupabaseClient,
): Promise<HomeIntentOffer | null> => {
  const intent = await readSignedInStartIntent();

  if (!intent) {
    return null;
  }

  const [starters, gameResult] = await Promise.all([
    readGameStarters(supabase, intent.gameSlug).catch(() => null),
    supabase
      .schema("reference")
      .from("games")
      .select("name")
      .eq("slug", intent.gameSlug)
      .maybeSingle(),
  ]);

  if (!starters || gameResult.error || !gameResult.data) {
    return null;
  }

  const partner = starters.isSolo
    ? (starters.starters[0] ?? null)
    : (starters.starters.find(
        (starter) => starter.speciesSlug === intent.partnerSpeciesSlug,
      ) ?? null);

  return {
    gameName: gameResult.data.name,
    gameShortName: getGameShortName(gameResult.data.name),
    gameSlug: intent.gameSlug,
    partner,
  };
};

/*
 * Mainline Home: with no Plays, the picker that starts one (and the game
 * picked before signing up); otherwise the shelf of your latest Plays, each
 * with its team for the meadow and its latest moments. `?play=` picks the
 * current one.
 * The trainer name and the wish are the request's shared reads, which the
 * Mainline layout's New Play reads too.
 */
export const getHomePageData = async (
  requestedPlayId: string | null,
): Promise<HomePageData> => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);
  const [names, browseItems] = await Promise.all([
    readSignedInTrainerNames(),
    readMainlinePlayLibrary(supabase, userId),
  ]);

  if (!browseItems.length) {
    const [picker, intent] = await Promise.all([
      readNewPlayPickerData(),
      readSignedInStartIntent(),
    ]);

    return {
      displayName: names.displayName,
      intent,
      kind: "empty",
      picker,
    };
  }

  /* TODO(v3-data): the shelf reads "last opened first"; there is no last-opened column on gameplay.mainline_plays, so it uses the latest update. */
  const requested = browseItems.find(
    (play) => play.play_id === requestedPlayId,
  );
  const latest = browseItems.slice(0, HOME_SHELF_PLAY_COUNT);
  /*
   * The shelf holds the latest Plays. An older one asked for by `?play=`
   * leads it, so a link to any Play still opens on that Play.
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
  const [teamTypes, bandReads, intentOffer, catalogue] = await Promise.all([
    readTeamTypes(supabase, shelfItems),
    Promise.all(
      shelfItems.map((item) =>
        Promise.all([
          readHomeMoments(supabase, item),
          readPartnerChoice(supabase, item),
        ]),
      ),
    ),
    readIntentOffer(supabase),
    // The cached game list, for each cover's box shape on the shelf.
    readGameCatalogue().catch(() => null),
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
    intentOffer,
    isFirstPlay: browseItems.length === 1 && isBrandNewPlay(current),
    kind: "plays",
    trainerName: names.trainerName,
  };
};
