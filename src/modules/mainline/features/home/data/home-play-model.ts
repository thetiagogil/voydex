import { appRoutes } from "@/config/routes";
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

export type HomeTeamMember = {
  id: string;
  imageUrl: string | null;
  name: string;
  /* The primary type, for a sticker's or a stand-in's tint. */
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

/*
 * Whether Home asks which partner you chose: only while the Play tracks Story
 * (the partner is its first milestone) and has nothing recorded at all, no
 * milestone and no Pokémon. A Play you track only for its team never shows
 * the partner pick over that team.
 */
export const isWaitingForPartner = (
  play: Pick<
    PlayBrowseItem,
    | "active_team_count"
    | "completed_milestone_count"
    | "reserve_team_count"
    | "storyTracked"
  >,
) =>
  play.storyTracked &&
  (play.completed_milestone_count ?? 0) === 0 &&
  (play.active_team_count ?? 0) + (play.reserve_team_count ?? 0) === 0;

/*
 * Where the band's main button goes: the Play, or the team Pokémon picked on
 * the meadow, in its Roster ("Continue with {name}"; "Open" for a completed
 * Play).
 */
export const getHomeContinue = (
  play: Pick<HomePlay, "id" | "statusSlug">,
  picked: Pick<HomeTeamMember, "id" | "name"> | null,
) => {
  const verb = play.statusSlug === "completed" ? "Open" : "Continue with";

  return picked
    ? {
        href: appRoutes.mainlinePlayTeamPokemon(play.id, picked.id),
        label: `${verb} ${picked.name}`,
      }
    : {
        href: appRoutes.mainlinePlay(play.id),
        label: play.statusSlug === "completed" ? "Open" : "Continue",
      };
};

/* Statuses that close a journey: Home's shelf leaves them off. */
const finishedPlayStatuses = new Set(["abandoned", "completed"]);

/*
 * The later of when a Play was last opened and last changed: the shelf's
 * order. A Play never opened goes by its latest change.
 */
const getLastSeenAt = (play: {
  last_opened_at: string | null;
  updated_at: string | null;
}) => {
  const openedAt = play.last_opened_at ? Date.parse(play.last_opened_at) : 0;
  const updatedAt = play.updated_at ? Date.parse(play.updated_at) : 0;

  return Math.max(openedAt, updatedAt);
};

/*
 * The Plays Home's shelf picks from, the one you opened (or changed) last
 * first: those still underway (playing, paused, not started). When every
 * Play is finished or dropped, all of them, so Home never stands empty.
 */
export const getHomeShelfSource = <
  Play extends {
    last_opened_at: string | null;
    status_slug: string | null;
    updated_at: string | null;
  },
>(
  plays: Play[],
): Play[] => {
  const underway = plays.filter(
    (play) => !finishedPlayStatuses.has(play.status_slug ?? ""),
  );

  return (underway.length ? underway : plays).toSorted(
    (a, b) => getLastSeenAt(b) - getLastSeenAt(a),
  );
};
