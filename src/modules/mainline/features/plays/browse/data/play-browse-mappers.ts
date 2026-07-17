import type {
  MainlinePlayBrowseItem,
  MainlinePlayBrowseProgress,
  MainlinePlayOverview,
  MainlinePlaySummary,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/shared/types";
import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import type { Game } from "@/modules/reference/types";

type PlayBrowseEnrichmentAvailability = {
  progress: boolean;
  team: boolean;
};

type BuildMainlinePlayBrowseItemsParams = {
  availability: PlayBrowseEnrichmentAvailability;
  games: Game[];
  overviews: MainlinePlayOverview[];
  plays: MainlinePlaySummary[];
  teamMembers: MainlinePlayTeamMember[];
};

const clampProgressPercent = (value: number) => {
  return Math.min(Math.max(Math.round(value), 0), 100);
};

const buildProgress = (
  overview: MainlinePlayOverview | undefined,
  isAvailable: boolean,
): MainlinePlayBrowseProgress => {
  if (!isAvailable) {
    return { state: "unavailable" };
  }

  if (
    !overview?.total_completion_unit_count ||
    overview.total_completion_unit_count <= 0 ||
    typeof overview.overall_completion_percent !== "number"
  ) {
    return { state: "not_recorded" };
  }

  return {
    percent: clampProgressPercent(overview.overall_completion_percent),
    state: "known",
  };
};

export const buildMainlinePlayBrowseItems = ({
  availability,
  games,
  overviews,
  plays,
  teamMembers,
}: BuildMainlinePlayBrowseItemsParams): MainlinePlayBrowseItem[] => {
  const gameById = new Map(games.map((game) => [game.id, game]));
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
    };
  });
};
