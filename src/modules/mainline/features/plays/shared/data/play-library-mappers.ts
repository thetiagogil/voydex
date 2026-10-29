import {
  orderPlayMilestones,
  pickNextMilestoneRow,
} from "@/modules/mainline/features/plays/shared/data/play-milestones";
import type {
  MainlinePlayOverview,
  MainlinePlaySummary,
  MainlinePlayTeamMember,
  PlayBrowseItem,
  PlayBrowseProgress,
  PlayBrowseProgressItem,
  PlayBrowseStoryPosition,
} from "@/modules/mainline/features/plays/shared/types";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import type { Game } from "@/modules/reference/types";
import type { ReferenceRow, ViewRow } from "@/shared/types/database-helpers";

export type PlayBrowseRegion = Pick<ReferenceRow<"regions">, "id" | "name">;

export type PlayBrowseMilestone = Pick<
  ViewRow<"mainline_play_milestone_detail">,
  | "category_id"
  | "is_completed"
  | "is_required_for_completion"
  | "milestone_id"
  | "milestone_name"
  | "milestone_type_slug"
  | "play_id"
  | "prerequisites"
  | "sort_order"
>;

export type PlayBrowseMilestoneCategory = Pick<
  ViewRow<"mainline_play_milestone_category_summary">,
  "category_id" | "category_sort_order" | "content_scope_sort_order" | "play_id"
>;

/* Every Play's milestones and their categories, for the story position. */
export type PlayBrowseStoryRows = {
  categories: PlayBrowseMilestoneCategory[];
  milestones: PlayBrowseMilestone[];
};

type PlayBrowseEnrichmentAvailability = {
  progress: boolean;
  story: boolean;
  team: boolean;
};

type BuildMainlinePlayBrowseItemsParams = {
  availability: PlayBrowseEnrichmentAvailability;
  games: Game[];
  overviews: MainlinePlayOverview[];
  plays: MainlinePlaySummary[];
  regions: PlayBrowseRegion[];
  storyRows: PlayBrowseStoryRows;
  teamMembers: MainlinePlayTeamMember[];
  /* Each team member's primary type slug by form id; empty when unknown. */
  teamTypeSlugByFormId?: Record<number, string>;
};

const clampPercent = (value: number) => {
  return Math.min(Math.max(Math.round(value), 0), 100);
};

/*
 * One bar per part of the Play that has something to count, the way Overview
 * reads them: the recorded percentage when there is one, else done of total.
 */
const buildProgressItem = (
  label: PlayBrowseProgressItem["label"],
  explicitPercent: number | null,
  completedCount: number | null,
  totalCount: number | null,
): PlayBrowseProgressItem | null => {
  if (!totalCount || totalCount <= 0) {
    return null;
  }

  return {
    label,
    percent: clampPercent(
      typeof explicitPercent === "number"
        ? explicitPercent
        : ((completedCount ?? 0) / totalCount) * 100,
    ),
  };
};

const buildProgress = (
  overview: MainlinePlayOverview | undefined,
  isAvailable: boolean,
): PlayBrowseProgress => {
  if (!isAvailable) {
    return { state: "unavailable" };
  }

  if (!overview) {
    return { items: [], state: "available" };
  }

  /* Story or Collectibles turned off for this Play: a quiet "Off" row instead of a bar. */
  const offItem = (
    label: PlayBrowseProgressItem["label"],
  ): PlayBrowseProgressItem => ({
    label,
    percent: null,
  });

  return {
    items: [
      overview.story_tracking_enabled === false
        ? offItem("Story")
        : buildProgressItem(
            "Story",
            overview.milestone_completion_percent,
            overview.completed_required_milestone_count,
            overview.required_milestone_count,
          ),
      buildProgressItem(
        "Pokédex",
        overview.pokedex_completion_percent,
        overview.caught_required_pokedex_species_count,
        overview.required_pokedex_species_count,
      ),
      overview.collectibles_tracking_enabled === false
        ? offItem("Collectibles")
        : buildProgressItem(
            "Collectibles",
            overview.collectible_completion_percent,
            overview.collected_required_collectible_entry_count,
            overview.required_collectible_entry_count,
          ),
    ].filter((item): item is PlayBrowseProgressItem => Boolean(item)),
    state: "available",
  };
};

const groupByPlayId = <TRow extends { play_id: string | null }>(
  rows: readonly TRow[],
) => {
  const rowsByPlayId = new Map<string, TRow[]>();

  for (const row of rows) {
    if (!row.play_id) continue;

    const playRows = rowsByPlayId.get(row.play_id) ?? [];
    playRows.push(row);
    rowsByPlayId.set(row.play_id, playRows);
  }

  return rowsByPlayId;
};

/* The next objective by Story's rule, or done once every milestone is. */
const buildStoryPosition = (
  milestones: PlayBrowseMilestone[] | undefined,
  categories: PlayBrowseMilestoneCategory[] | undefined,
): PlayBrowseStoryPosition | null => {
  if (!milestones?.length) {
    return null;
  }

  const next = pickNextMilestoneRow(
    orderPlayMilestones({ categories: categories ?? [], milestones }),
  );

  if (!next) {
    return { kind: "complete" };
  }

  return next.milestone_name
    ? { kind: "next", name: next.milestone_name }
    : null;
};

export const buildMainlinePlayBrowseItems = ({
  availability,
  games,
  overviews,
  plays,
  regions,
  storyRows,
  teamMembers,
  teamTypeSlugByFormId = {},
}: BuildMainlinePlayBrowseItemsParams): PlayBrowseItem[] => {
  const milestonesByPlayId = groupByPlayId(storyRows.milestones);
  const categoriesByPlayId = groupByPlayId(storyRows.categories);
  const gameById = new Map(games.map((game) => [game.id, game]));
  const regionNameById = new Map(
    regions.map((region) => [region.id, region.name]),
  );
  const overviewByPlayId = new Map(
    overviews
      .filter((overview) => overview.play_id)
      .map((overview) => [overview.play_id, overview]),
  );
  const teamByPlayId = groupByPlayId(teamMembers);

  return plays.map((play) => {
    const playId = play.play_id;
    const game = play.game_id ? gameById.get(play.game_id) : undefined;
    const playTeam = playId ? (teamByPlayId.get(playId) ?? []) : [];

    return {
      ...play,
      activeTeam: {
        members: playTeam
          .toSorted(
            (firstMember, secondMember) =>
              (firstMember.slot ?? Number.MAX_SAFE_INTEGER) -
              (secondMember.slot ?? Number.MAX_SAFE_INTEGER),
          )
          .slice(0, 6),
        state: availability.team ? "available" : "unavailable",
        typeSlugByFormId: teamTypeSlugByFormId,
      },
      coverImageUrl: game ? getGameCoverImageUrl(game) : null,
      progress: buildProgress(
        playId ? overviewByPlayId.get(playId) : undefined,
        availability.progress,
      ),
      regionName: game ? (regionNameById.get(game.region_id) ?? null) : null,
      storyPosition:
        availability.story && playId
          ? buildStoryPosition(
              milestonesByPlayId.get(playId),
              categoriesByPlayId.get(playId),
            )
          : null,
    };
  });
};
