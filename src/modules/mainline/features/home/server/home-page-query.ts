import {
  toHomePlay,
  type HomePlay,
} from "@/modules/mainline/features/home/data/home-play-model";
import type {
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
import { readStartIntent } from "@/modules/mainline/features/plays/shared/server/start-intent";
import { readTrainerDisplayName } from "@/modules/mainline/features/plays/shared/server/trainer-profile-reader";
import { findPartnerDecision } from "@/modules/mainline/features/plays/shared/utils/partner-milestone";
import {
  readGameCatalogue,
  readGameStarters,
} from "@/modules/reference/features/games/server/game-shelf-reader";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

/* Each lead's primary type at its Play's generation, for its sticker's tint. */
const readLeadTypes = async (
  supabase: ServerSupabaseClient,
  plays: PlayBrowseItem[],
): Promise<Map<string, string>> => {
  const leads = plays.flatMap((play) => {
    const lead = play.activeTeam.members.find((member) => member.form_id);

    return lead?.play_pokemon_id && lead.form_id
      ? [
          {
            formId: lead.form_id,
            generationId: play.generation_id,
            id: lead.play_pokemon_id,
          },
        ]
      : [];
  });

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

/* The partner a brand-new Play is still waiting for, to tap on Home's meadow. */
const readPartnerChoice = async (
  supabase: ServerSupabaseClient,
  play: PlayBrowseItem,
): Promise<HomePartnerChoice | null> => {
  if (
    !play.play_id ||
    !play.game_slug ||
    !play.version_group_id ||
    (play.completed_milestone_count ?? 0) > 0
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
    readGameStarters(play.game_slug),
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
        milestoneId: options[0].milestoneId,
        options: options.map(({ decisionOptionId, starter }) => ({
          decisionOptionId,
          starter,
        })),
        playId: play.play_id,
      }
    : null;
};

const HOME_MOMENT_COUNT = 5;

/*
 * The current Play's latest five moments, oldest first, as Home draws them,
 * and whether anything was recorded before them (one more is read to tell).
 */
const readHomeMoments = async (
  supabase: ServerSupabaseClient,
  play: PlayBrowseItem,
): Promise<HomeMomentsData> => {
  const playId = play.play_id ?? "";
  const read = await readMainlinePlayTimelinePreview(
    supabase,
    playId,
    HOME_MOMENT_COUNT + 1,
  );
  const events = read.slice(0, HOME_MOMENT_COUNT);
  const context = await readMainlinePlayMomentContext(supabase, {
    events,
    generationId: play.generation_id,
    playId,
  });

  /* Status changes stay out, as on the Play's own recent moments. */
  return {
    context,
    events: events
      .filter((event) => event.event_type_slug !== "status_change")
      .toReversed(),
    hasEarlier: read.length > HOME_MOMENT_COUNT,
  };
};

/* The Play picked before signing up, offered once the trainer has Plays. */
const readIntentOffer = async (
  supabase: ServerSupabaseClient,
): Promise<HomeIntentOffer | null> => {
  const intent = await readStartIntent(supabase);

  if (!intent) {
    return null;
  }

  const [starters, gameResult] = await Promise.all([
    readGameStarters(intent.gameSlug).catch(() => null),
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
 * picked before signing up); otherwise the shelf of Plays, the current one's
 * team on the meadow and its latest moments. `?play=` picks the current one.
 */
export const getHomePageData = async (
  requestedPlayId: string | null,
): Promise<HomePageData> => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);
  const [displayName, browseItems] = await Promise.all([
    readTrainerDisplayName(supabase, userId),
    readMainlinePlayLibrary(supabase, userId),
  ]);

  if (!browseItems.length) {
    const [picker, intent] = await Promise.all([
      readNewPlayPickerData(supabase, userId),
      readStartIntent(supabase),
    ]);

    return {
      displayName,
      intent,
      kind: "empty",
      picker,
    };
  }

  /* TODO(v3-data): the shelf reads "last opened first"; there is no last-opened column on gameplay.mainline_plays, so it uses the latest update. */
  const current =
    browseItems.find((play) => play.play_id === requestedPlayId) ??
    browseItems[0];
  const [leadTypes, moments, partnerChoice, intentOffer, catalogue] =
    await Promise.all([
      readLeadTypes(supabase, browseItems),
      readHomeMoments(supabase, current),
      readPartnerChoice(supabase, current),
      readIntentOffer(supabase),
      // The cached game list, for each cover's box shape on the shelf.
      readGameCatalogue().catch(() => null),
    ]);
  const coverShapeByGameSlug = new Map(
    catalogue?.games.map((game) => [game.slug, game.coverShape]),
  );
  const plays = browseItems.flatMap((item): HomePlay[] => {
    const play = toHomePlay(item);

    if (!play) return [];

    return [
      {
        ...play,
        coverShape: play.gameSlug
          ? (coverShapeByGameSlug.get(play.gameSlug) ?? null)
          : null,
        lead: play.lead
          ? { ...play.lead, typeSlug: leadTypes.get(play.lead.id) ?? null }
          : null,
      },
    ];
  });

  return {
    currentPlayId: current.play_id ?? plays[0].id,
    displayName,
    intentOffer,
    isFirstPlay: browseItems.length === 1 && isBrandNewPlay(current),
    kind: "plays",
    moments,
    partnerChoice,
    plays,
  };
};
