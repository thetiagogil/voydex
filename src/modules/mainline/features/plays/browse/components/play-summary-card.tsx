"use client";

import Image from "next/image";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { PlaySummaryTeamPreview } from "@/modules/mainline/features/plays/browse/components/play-summary-team-preview";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/display/play-formatters";
import type {
  MainlinePlayBrowseItem,
  MainlinePlayBrowseProgress,
} from "@/modules/mainline/features/plays/shared/types";
import { getPokemonGameColorCssVariables } from "@/modules/reference/features/games/display/game-color-styles";
import { getGameInitials } from "@/modules/reference/features/games/display/game-display";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
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
  if (coverImageUrl) {
    return (
      <Image
        src={coverImageUrl}
        alt={`${gameName} cover art`}
        width={180}
        height={270}
        priority={priority}
        sizes="(min-width: 1024px) 5rem, (min-width: 768px) 6rem, 7rem"
        className="col-start-1 row-start-1 h-28 w-auto max-w-none shrink-0 object-cover md:h-24 lg:h-20"
      />
    );
  }

  return (
    <div className="col-start-1 row-start-1 flex aspect-2/3 h-28 shrink-0 items-center justify-center rounded-md bg-(--pokemon-game-color)/15 px-2 text-center text-xl font-black text-(--pokemon-game-color) md:h-24 lg:h-20">
      {getGameInitials(gameName)}
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
      <div className="flex items-baseline gap-2 md:flex-col md:items-end md:gap-0">
        <p className="text-foreground text-2xl font-semibold tracking-tight tabular-nums">
          {progress.percent}%
        </p>
        <p className="text-muted-foreground text-xs">Overall</p>
      </div>
    );
  }

  return (
    <div className="flex items-baseline gap-2 md:flex-col md:items-end md:gap-0">
      <p className="text-foreground text-xl font-semibold">—</p>
      <p className="text-muted-foreground text-xs">
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
      variant={play.play_id ? "interactive" : "default"}
      className={cn(
        "grid grid-cols-[auto_minmax(0,1fr)] gap-3 p-3 has-[>img:first-child]:pt-3 data-[size=sm]:has-data-[slot=card-footer]:pb-3 md:grid-cols-[auto_minmax(9rem,0.65fr)_minmax(18rem,1.35fr)_minmax(7rem,auto)] md:grid-rows-1 md:items-center lg:grid-cols-[auto_minmax(13rem,1fr)_minmax(17rem,0.85fr)_minmax(10rem,auto)] *:[img:first-child]:rounded-t-md *:[img:first-child]:rounded-b-md",
        !play.play_id && "opacity-70",
      )}
    >
      <PlayCover
        coverImageUrl={play.coverImageUrl}
        gameName={gameName}
        priority={priority}
      />

      <CardHeader className="col-start-2 row-start-1 flex min-w-0 flex-col gap-0 self-start rounded-none p-0 md:self-center">
        <CardTitle className="w-full text-base font-semibold md:text-lg">
          <h2 className="truncate">{playName}</h2>
        </CardTitle>
        <CardDescription className="mt-0.5 truncate text-sm leading-4">
          {gameName}
        </CardDescription>
        <p className="text-muted-foreground mt-0.5 text-xs">
          Updated {formatPlayDate(play.updated_at, "date not recorded")}
        </p>
      </CardHeader>

      <CardContent className="col-span-2 row-start-2 min-w-0 p-0 md:col-span-1 md:col-start-3 md:row-start-1 md:pl-3">
        <PlaySummaryTeamPreview team={play.activeTeam} />
      </CardContent>

      <CardFooter className="col-span-2 row-start-3 flex min-w-0 items-center justify-between gap-4 rounded-none border-0 bg-transparent p-0 md:col-span-1 md:col-start-4 md:row-start-1 md:justify-end md:pl-3 lg:gap-6">
        <PlayProgressSummary progress={play.progress} />
        {play.play_id ? (
          <span className="text-muted-foreground group-hover/card-link:text-primary group-focus-visible/card-link:text-primary flex size-8 shrink-0 items-center justify-center transition-colors">
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
  const gameStyles = getPokemonGameColorCssVariables(play.game_slug);

  if (!play.play_id) {
    return (
      <div style={gameStyles}>
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
      className="group/card-link focus-visible:ring-ring/50 block rounded-xl outline-none focus-visible:ring-3"
    >
      <PlayCardBody play={play} priority={priority} />
    </Link>
  );
};
