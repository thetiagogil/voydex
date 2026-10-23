"use client";

import Link from "next/link";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { PlayCardProgress } from "@/modules/mainline/features/plays/browse/components/play-card-progress";
import { PlayCardTeam } from "@/modules/mainline/features/plays/browse/components/play-card-team";
import { PlayToken } from "@/modules/mainline/features/plays/browse/components/play-token";
import { PlayCardHeading } from "@/modules/mainline/features/plays/browse/components/play-card-heading";
import { formatPlayUpdatedDate } from "@/modules/mainline/features/plays/browse/play-browse-display";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { formatPlayMinutes } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { StatusBadge } from "@/shared/components/status-badge";
import { getPlayStatusTone } from "@/modules/mainline/shared/utils/play-status-tone";
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
    typeof play.playtime_minutes === "number" ? (
      <span className="tabular-nums">
        {formatPlayMinutes(play.playtime_minutes)}
      </span>
    ) : null,
    updatedLabel ? (
      <span className="whitespace-nowrap">updated {updatedLabel}</span>
    ) : null,
  ].filter(Boolean);

  /* The list is one list now, so the status rides on the card. */
  const status = play.status_name ? (
    <StatusBadge
      size="xs"
      tone={getPlayStatusTone(play.status_slug)}
      className="mr-2 align-middle"
    >
      {play.status_name}
    </StatusBadge>
  ) : null;

  if (!parts.length && !status) {
    return null;
  }

  return (
    <>
      {status}
      {parts.map((part, index) => (
        <span key={index}>
          {index ? " · " : null}
          {part}
        </span>
      ))}
    </>
  );
};

/*
 * One Play in the list. The card is quiet; the Play's cover tile is the loud
 * part and its team stays lively.
 */
export const PlayCard = ({ play }: PlayCardProps) => {
  const gameName = play.game_name ?? "Unknown game";
  const playName = play.play_name ?? "Untitled Play";
  const content = (
    <Card
      variant={play.play_id ? "interactive" : "default"}
      className="grid grid-cols-[80px_minmax(0,1fr)] items-center gap-x-3.5 gap-y-3 p-3 sm:grid-cols-[100px_minmax(0,1fr)_170px] sm:gap-6 sm:py-3.5 sm:pr-5.5 sm:pl-3.5 xl:grid-cols-[100px_minmax(0,1.2fr)_minmax(0,1.1fr)_190px_24px]"
    >
      <PlayToken coverImageUrl={play.coverImageUrl} gameName={gameName} />

      <PlayCardHeading play={play} title={playName}>
        <PlayCardMeta play={play} />
      </PlayCardHeading>

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
    <li>
      {play.play_id ? (
        <Link
          href={appRoutes.mainlinePlay(play.play_id)}
          className="group/card-link block rounded-2xl outline-none"
        >
          {content}
        </Link>
      ) : (
        content
      )}
    </li>
  );
};
