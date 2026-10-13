import type {
  PlayBrowseItem,
  PlayBrowseStoryPosition,
} from "@/modules/mainline/features/plays/browse/types";
import { formatPlayMinutes } from "@/modules/mainline/features/plays/shared/utils/play-formatters";

export const formatPlayCount = (count: number) => {
  return `${count} ${count === 1 ? "Play" : "Plays"}`;
};

/*
 * Month first, with the year only when it isn't this year: "Sep 18". The day
 * and the year are read in the given time zone, the viewer's in the browser.
 */
export const formatPlayUpdatedDate = (
  value: string | null,
  timeZone: string,
  now = new Date(),
) => {
  if (!value) {
    return null;
  }

  const date = new Date(value);

  if (Number.isNaN(date.getTime())) {
    return null;
  }

  const yearFormat = new Intl.DateTimeFormat("en", {
    timeZone,
    year: "numeric",
  });
  const isThisYear = yearFormat.format(date) === yearFormat.format(now);

  return new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "short",
    timeZone,
    year: isThisYear ? undefined : "numeric",
  }).format(date);
};

/* "5 Plays · 130h 16m recorded", or "None yet" for an empty library. */
export const getPlayLibraryDescription = (
  plays: Pick<PlayBrowseItem, "playtime_minutes">[],
) => {
  if (!plays.length) {
    return "None yet";
  }

  const recordedMinutes = plays.flatMap((play) =>
    typeof play.playtime_minutes === "number" ? [play.playtime_minutes] : [],
  );
  const totalMinutes = recordedMinutes.reduce(
    (total, minutes) => total + minutes,
    0,
  );

  return totalMinutes > 0
    ? `${formatPlayCount(plays.length)} · ${formatPlayMinutes(totalMinutes)} recorded`
    : formatPlayCount(plays.length);
};

export const getPlayCardEyebrow = (
  play: Pick<PlayBrowseItem, "game_name" | "regionName">,
) => {
  return [play.game_name ?? "Unknown game", play.regionName]
    .filter(Boolean)
    .join(" · ");
};

/* "Next: Zephyr Badge", or "Story complete" once the story is done. */
export const getPlayStoryPositionLabel = (position: PlayBrowseStoryPosition) =>
  position.kind === "complete" ? "Story complete" : `Next: ${position.name}`;

/*
 * "Open HeartGold · Nuzlocke · Next: Zephyr Badge · Collectibles off": the game
 * keeps same-named Plays apart. The label replaces the card's content for
 * assistive tech, so it also carries the story line and any part the Play
 * doesn't track.
 */
export const getPlayCardLinkLabel = (
  play: Pick<
    PlayBrowseItem,
    "game_name" | "play_name" | "progress" | "storyPosition"
  >,
) => {
  const gameName = (play.game_name ?? "Unknown game").replace(/^Pokémon /, "");
  const untrackedParts =
    play.progress.state === "available"
      ? play.progress.items.flatMap((item) =>
          item.percent === null ? [`${item.label} off`] : [],
        )
      : [];

  return [
    `Open ${gameName}`,
    play.play_name ?? "Untitled Play",
    play.storyPosition ? getPlayStoryPositionLabel(play.storyPosition) : null,
    ...untrackedParts,
  ]
    .filter(Boolean)
    .join(" · ");
};
