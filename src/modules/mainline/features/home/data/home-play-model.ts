import type {
  PlayBrowseItem,
  PlayBrowseStoryPosition,
} from "@/modules/mainline/features/plays/shared/types";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { getPlayTeamSlots } from "@/modules/mainline/features/plays/shared/utils/play-team-slots";
import type { GameCoverShape } from "@/modules/reference/features/games/domain/game-cover-shapes";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";

/*
 * Home's shelf holds the latest Plays: five on desktop, four on tablets and
 * one on phones (the rest are hidden by breakpoint, so nothing jumps).
 */
export const HOME_SHELF_PLAY_COUNT = 5;

type HomeTeamMember = {
  id: string;
  imageUrl: string | null;
  name: string;
  /* The primary type, for a sticker's tint; read for the shelf's leads only. */
  typeSlug?: string | null;
};

/* A Play as Home shows it: on the shelf, on the meadow and in the status line. */
export type HomePlay = {
  completedOn: string | null;
  coverImageUrl: string | null;
  /* The box's shape, so the shelf holds each cover's place before it loads. */
  coverShape: GameCoverShape | null;
  gameName: string;
  gameShortName: string;
  gameSlug: string | null;
  id: string;
  /* "Sword · Late Journey". */
  label: string;
  lead: HomeTeamMember | null;
  name: string;
  playtimeMinutes: number | null;
  startedOn: string | null;
  statusName: string | null;
  statusSlug: string | null;
  storyPercent: number | null;
  storyPosition: PlayBrowseStoryPosition | null;
  /* Six slots in order; null is an open slot. */
  team: (HomeTeamMember | null)[];
  trainerName: string | null;
};

export const toHomePlay = (play: PlayBrowseItem): HomePlay | null => {
  if (!play.play_id) {
    return null;
  }

  const gameName = play.game_name ?? "Unknown game";
  const team = getPlayTeamSlots(play.activeTeam.members).map(({ member }) =>
    member?.play_pokemon_id
      ? {
          id: member.play_pokemon_id,
          imageUrl: getPlayTeamMemberImageUrl(member),
          name: getPlayTeamMemberName(member),
        }
      : null,
  );
  const storyItem =
    play.progress.state === "available"
      ? play.progress.items.find((item) => item.label === "Story")
      : undefined;

  return {
    completedOn: play.completed_on,
    coverImageUrl: play.coverImageUrl,
    coverShape: null,
    gameName,
    gameShortName: getGameShortName(gameName),
    gameSlug: play.game_slug,
    id: play.play_id,
    label: `${getGameShortName(gameName)} · ${play.play_name ?? "Untitled Play"}`,
    lead: team.find((member) => member !== null) ?? null,
    name: play.play_name ?? "Untitled Play",
    playtimeMinutes: play.playtime_minutes,
    startedOn: play.started_on,
    statusName: play.status_name,
    statusSlug: play.status_slug,
    storyPercent: storyItem?.percent ?? null,
    storyPosition: play.storyPosition,
    team,
    trainerName: play.trainer_name,
  };
};

/*
 * The one line under the meadow: how the Play stands (status and the next
 * objective, or when it was completed), how far through the story and the
 * hours recorded. Parts the Play doesn't track are left out.
 */
export const getHomePlayStatusLine = (play: HomePlay) => {
  if (play.statusSlug === "completed") {
    return [
      play.completedOn
        ? `Completed ${formatPlayDate(play.completedOn)}`
        : "Completed",
      typeof play.playtimeMinutes === "number"
        ? `${Math.round(play.playtimeMinutes / 60)}h`
        : null,
    ]
      .filter(Boolean)
      .join(" · ");
  }

  const position = play.storyPosition
    ? play.storyPosition.kind === "complete"
      ? "Hall of Fame reached"
      : `Next: ${play.storyPosition.name}`
    : null;

  return [
    play.statusName,
    position,
    play.storyPercent === null ? null : `${play.storyPercent}% of the story`,
    typeof play.playtimeMinutes === "number"
      ? `${Math.round(play.playtimeMinutes / 60)}h`
      : null,
  ]
    .filter(Boolean)
    .join(" · ");
};
