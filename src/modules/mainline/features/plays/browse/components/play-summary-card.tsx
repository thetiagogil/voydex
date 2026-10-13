"use client";

import Image from "next/image";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { PlaySummaryTeamPreview } from "@/modules/mainline/features/plays/browse/components/play-summary-team-preview";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { getPlayStatusBadgeTone } from "@/modules/mainline/features/plays/shared/utils/play-status-display";
import type {
  MainlinePlayBrowseItem,
  MainlinePlayBrowseProgress,
} from "@/modules/mainline/features/plays/shared/types";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { getGameInitials } from "@/modules/reference/features/games/utils/game-display";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { StatusBadge } from "@/shared/components/status-badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { rowInteractionVariants } from "@/shared/components/ui/row-interaction";
import { cn } from "@/shared/utils/cn";

type PlaySummaryCardProps = {
  play: MainlinePlayBrowseItem;
  priority?: boolean;
};

const PlayCover = ({
  coverImageUrl,
  gameName,
  priority,
}: {
  coverImageUrl: string | null;
  gameName: string;
  priority: boolean;
}) => {
  return (
    <div className="border-line bg-surface-2 shadow-cover col-start-1 row-start-1 size-28 shrink-0 rounded-lg border p-0.5 md:size-24 lg:size-28">
      {coverImageUrl ? (
        <div className="relative size-full overflow-hidden rounded-md">
          <Image
            src={coverImageUrl}
            alt={`${gameName} cover art`}
            fill
            priority={priority}
            sizes="(min-width: 1024px) 7rem, (min-width: 768px) 6rem, 7rem"
            className="object-contain"
          />
        </div>
      ) : (
        <div className="bg-game-soft text-game flex size-full items-center justify-center rounded-md px-2 text-center text-xl font-black">
          {getGameInitials(gameName)}
        </div>
      )}
    </div>
  );
};

const PlayProgressSummary = ({
  progress,
}: {
  progress: MainlinePlayBrowseProgress;
}) => {
  if (progress.state === "known") {
    return (
      <div className="flex flex-col gap-0.5 md:items-start">
        <p className="text-primary font-display text-2xl font-semibold tracking-tight tabular-nums lg:text-3xl">
          {progress.percent}%
        </p>
        <p className="text-muted-foreground text-xs">Completion</p>
      </div>
    );
  }

  return (
    <div className="flex flex-col md:items-start">
      <p className="text-primary font-display text-lg font-semibold">
        {progress.state === "unavailable"
          ? "Progress unavailable"
          : "Progress not recorded"}
      </p>
    </div>
  );
};

const PlayCardBody = ({ play, priority = false }: PlaySummaryCardProps) => {
  const gameName = play.game_name ?? "Unknown game";
  const playName = play.play_name ?? "Untitled play";

  return (
    <Card
      size="sm"
      variant="bare"
      className={cn(
        "grid grid-cols-[auto_minmax(0,1fr)] gap-x-4 gap-y-4 py-4 data-[size=sm]:has-data-[slot=card-footer]:pb-4 md:grid-cols-[auto_minmax(8rem,0.8fr)_minmax(13.5rem,1.15fr)_minmax(7.5rem,auto)] md:grid-rows-1 md:items-center md:gap-x-3 md:gap-y-0 lg:grid-cols-[auto_minmax(9rem,0.7fr)_minmax(16rem,1.25fr)_minmax(7.5rem,auto)] lg:gap-x-4 xl:grid-cols-[auto_minmax(13rem,0.8fr)_minmax(21rem,1.4fr)_minmax(10rem,auto)] xl:gap-x-5",
        !play.play_id && "opacity-70",
      )}
    >
      <PlayCover
        coverImageUrl={play.coverImageUrl}
        gameName={gameName}
        priority={priority}
      />

      <CardHeader className="col-start-2 row-start-1 flex min-w-0 flex-col gap-1 self-start rounded-none p-0 md:self-center">
        <CardTitle className="text-primary font-display w-full text-lg font-semibold xl:text-xl">
          <h2 className="line-clamp-2">{playName}</h2>
        </CardTitle>
        {play.status_name ? (
          <StatusBadge
            tone={getPlayStatusBadgeTone(play.status_slug, play.status_name)}
            className="my-0.5 h-5 px-2 text-[0.6875rem]"
          >
            {play.status_name}
          </StatusBadge>
        ) : null}
        <CardDescription className="text-foreground mt-0.5 flex min-w-0 items-center gap-1.5 text-sm leading-5">
          <AppIcon
            icon={appIcons.product.form}
            size="sm"
            className="text-primary shrink-0"
            aria-hidden
          />
          <span className="truncate">{gameName}</span>
        </CardDescription>
        <p className="text-muted-foreground mt-0.5 flex min-w-0 items-center gap-1.5 text-xs">
          <AppIcon icon={appIcons.product.date} size="sm" aria-hidden />
          <span className="truncate">
            Updated {formatPlayDate(play.updated_at, "date not recorded")}
          </span>
        </p>
      </CardHeader>

      <CardContent className="col-span-2 row-start-2 min-w-0 p-0 md:col-span-1 md:col-start-3 md:row-start-1">
        <PlaySummaryTeamPreview team={play.activeTeam} />
      </CardContent>

      <CardFooter className="col-span-2 row-start-3 flex min-w-0 items-center justify-between gap-3 rounded-none border-0 bg-transparent p-0 md:col-span-1 md:col-start-4 md:row-start-1 xl:gap-6">
        <PlayProgressSummary progress={play.progress} />
        {play.play_id ? (
          <span className="text-muted-foreground group-hover/play-summary:text-primary group-focus-visible/play-summary:text-primary flex size-8 shrink-0 items-center justify-center transition-colors">
            <AppIcon icon={appIcons.actions.continue} size="md" aria-hidden />
          </span>
        ) : null}
      </CardFooter>
    </Card>
  );
};

export const PlaySummaryCard = ({
  play,
  priority = false,
}: PlaySummaryCardProps) => {
  const gameStyles = getGameColourStyle(play.game_slug);

  if (!play.play_id) {
    return (
      <div className="game-scope" style={gameStyles}>
        <PlayCardBody play={play} priority={priority} />
      </div>
    );
  }

  const title = play.play_name ?? "Untitled play";

  return (
    <Link
      href={appRoutes.mainlinePlay(play.play_id)}
      aria-label={`Open ${title}`}
      style={gameStyles}
      className={cn(
        rowInteractionVariants({ interaction: "action" }),
        "group/play-summary game-scope focus-visible:ring-ring/35 block rounded-none focus-visible:ring-3",
      )}
    >
      <PlayCardBody play={play} priority={priority} />
    </Link>
  );
};
