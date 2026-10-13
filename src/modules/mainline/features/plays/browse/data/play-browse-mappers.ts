import type {
  PlayBrowseItem,
  PlayBrowseProgress,
  PlayBrowseProgressItem,
} from "@/modules/mainline/features/plays/browse/types";
import type {
  MainlinePlayOverview,
  MainlinePlaySummary,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/shared/types";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import type { Game } from "@/modules/reference/types";
import type { ReferenceRow } from "@/shared/types/database-helpers";

export type PlayBrowseRegion = Pick<ReferenceRow<"regions">, "id" | "name">;

type PlayBrowseEnrichmentAvailability = {
  progress: boolean;
  team: boolean;
};

type BuildMainlinePlayBrowseItemsParams = {
  availability: PlayBrowseEnrichmentAvailability;
  games: Game[];
  overviews: MainlinePlayOverview[];
  plays: MainlinePlaySummary[];
  regions: PlayBrowseRegion[];
  teamMembers: MainlinePlayTeamMember[];
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

  return {
    items: [
      buildProgressItem(
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
      buildProgressItem(
        "Collectibles",
        overview.collectible_completion_percent,
        overview.collected_required_collectible_entry_count,
        overview.required_collectible_entry_count,
      ),
    ].filter((item): item is PlayBrowseProgressItem => Boolean(item)),
    state: "available",
  };
};

export const buildMainlinePlayBrowseItems = ({
  availability,
  games,
  overviews,
  plays,
  regions,
  teamMembers,
}: BuildMainlinePlayBrowseItemsParams): PlayBrowseItem[] => {
  const gameById = new Map(games.map((game) => [game.id, game]));
  const regionNameById = new Map(
    regions.map((region) => [region.id, region.name]),
  );
  const overviewByPlayId = new Map(
    overviews
      .filter((overview) => overview.play_id)
      .map((overview) => [overview.play_id, overview]),
  );
  const teamByPlayId = new Map<string, MainlinePlayTeamMember[]>();

  for (const member of teamMembers) {
    if (!member.play_id) continue;

    const playTeam = teamByPlayId.get(member.play_id) ?? [];
    playTeam.push(member);
    teamByPlayId.set(member.play_id, playTeam);
  }

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
      },
      coverImageUrl: game ? getGameCoverImageUrl(game) : null,
      progress: buildProgress(
        playId ? overviewByPlayId.get(playId) : undefined,
        availability.progress,
      ),
      regionName: game ? (regionNameById.get(game.region_id) ?? null) : null,
    };
  });
};
