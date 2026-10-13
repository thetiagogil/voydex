"use client";

import Link from "next/link";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { PlayCardProgress } from "@/modules/mainline/features/plays/browse/components/play-card-progress";
import { PlayCardTeam } from "@/modules/mainline/features/plays/browse/components/play-card-team";
import { PlayToken } from "@/modules/mainline/features/plays/browse/components/play-token";
import {
  formatPlayUpdatedDate,
  getPlayCardEyebrow,
  getPlayCardLinkLabel,
  getPlayStoryPositionLabel,
} from "@/modules/mainline/features/plays/browse/play-browse-display";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { formatPlayMinutes } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/utils/use-viewer-clock";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Card } from "@/shared/components/ui/card";

type PlayCardProps = {
  play: PlayBrowseItem;
};

/*
 * The server renders the day in UTC; right after hydration it switches to the
 * viewer's time zone.
 */
const PlayCardMeta = ({ play }: PlayCardProps) => {
  const { timeZone } = useViewerClock();
  const updatedLabel = formatPlayUpdatedDate(play.updated_at, timeZone);
  const parts: ReactNode[] = [
    play.trainer_name ? `Trainer ${play.trainer_name}` : null,
    typeof play.playtime_minutes === "number" ? (
      <span className="tabular-nums">
        {formatPlayMinutes(play.playtime_minutes)}
      </span>
    ) : null,
    updatedLabel ? (
      <span className="whitespace-nowrap">updated {updatedLabel}</span>
    ) : null,
  ].filter(Boolean);

  if (!parts.length) {
    return null;
  }

  return (
    <p className="text-ink-2 text-13 sm:text-14 mt-1 font-semibold">
      {parts.map((part, index) => (
        <span key={index}>
          {index ? " · " : null}
          {part}
        </span>
      ))}
    </p>
  );
};

/* v3 `.pos`: where the Play is in its story, under its name. */
const PlayCardStoryPosition = ({ play }: PlayCardProps) => {
  const position = play.storyPosition;

  if (!position) {
    return null;
  }

  return (
    <p className="text-ink mt-2 flex min-w-0 items-center gap-1.5 text-[13.5px] font-extrabold">
      <AppIcon
        icon={
          position.kind === "complete"
            ? appIcons.milestones.champion
            : appIcons.milestones.story
        }
        size="sm"
        className="text-game-deep shrink-0"
      />
      <span className="truncate">{getPlayStoryPositionLabel(position)}</span>
    </p>
  );
};

/*
 * One Play in the list. The card is quiet; the Play's cover tile is the loud
 * part, its team stays lively and its progress bars take the game's colour.
 * The card wears `game-scope` so those accents follow the Play's game.
 */
export const PlayCard = ({ play }: PlayCardProps) => {
  const gameName = play.game_name ?? "Unknown game";
  const playName = play.play_name ?? "Untitled Play";
  const content = (
    <Card
      variant={play.play_id ? "interactive" : "default"}
      className="grid grid-cols-[96px_minmax(0,1fr)] items-center gap-x-3.5 gap-y-3 p-3 sm:grid-cols-[130px_minmax(0,1fr)_170px] sm:gap-6 sm:py-3.5 sm:pr-5.5 sm:pl-3.5 xl:grid-cols-[150px_minmax(0,1.3fr)_minmax(0,1fr)_190px_24px]"
    >
      <PlayToken coverImageUrl={play.coverImageUrl} gameName={gameName} />

      <div className="min-w-0">
        <p className="text-game-deep text-13 font-bold">
          {getPlayCardEyebrow(play)}
        </p>
        <h3 className="mt-0.5 line-clamp-2 text-[18px] leading-tight tracking-[-0.01em] wrap-break-word sm:text-[22px]">
          {playName}
        </h3>
        <PlayCardMeta play={play} />
        <PlayCardStoryPosition play={play} />
      </div>

      <PlayCardTeam team={play.activeTeam} className="hidden xl:grid" />

      <PlayCardProgress
        progress={play.progress}
        className="col-span-2 sm:col-span-1"
      />

      {play.play_id ? (
        <AppIcon
          icon={appIcons.actions.continue}
          size="lg"
          className="text-ink-3 group-hover/card-link:text-ink hidden transition-colors xl:block"
        />
      ) : null}
    </Card>
  );

  return (
    <li className="game-scope" style={getGameColourStyle(play.game_slug)}>
      {play.play_id ? (
        <Link
          href={appRoutes.mainlinePlay(play.play_id)}
          aria-label={getPlayCardLinkLabel(play)}
          className="group/card-link block rounded-2xl"
        >
          {content}
        </Link>
      ) : (
        content
      )}
    </li>
  );
};
