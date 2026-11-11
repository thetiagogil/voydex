"use client";

import { Link } from "@/shared/components/link";
import { useState } from "react";

import { appRoutes } from "@/config/routes";
import type {
  CollectionGame,
  CollectionGamePlay,
} from "@/modules/mainline/features/collection/data/collection-games-model";
import { TrainerPlayRow } from "@/modules/mainline/shared/components/trainer-play-row";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { SheetSection } from "@/shared/components/sheet-section";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

type CollectionGameSheetProps = {
  /* The game to show; null closes the sheet. */
  entry: CollectionGame | null;
  onOpenChange: (open: boolean) => void;
};

const countPlays = (count: number) =>
  `${count} ${count === 1 ? "Play" : "Plays"}`;

const PlayRows = ({ plays }: { plays: CollectionGamePlay[] }) => (
  <ul className="grid">
    {plays.map(({ detail, play }) => (
      <TrainerPlayRow
        key={play.id}
        detail={detail}
        href={appRoutes.mainlinePlay(play.id)}
        play={play}
        shiny={false}
      />
    ))}
  </ul>
);

/*
 * One game in your Collection, as a species has its sheet: its cover beside
 * the name, Open in Codex, then your Plays of it, each opening on the Play,
 * the archived ones in their own section. It stays mounted so it slides in
 * and out, showing the last game while it closes.
 */
export const CollectionGameSheet = ({
  entry: openEntry,
  onOpenChange,
}: CollectionGameSheetProps) => {
  const [shownEntry, setShownEntry] = useState(openEntry);

  if (openEntry && openEntry !== shownEntry) {
    setShownEntry(openEntry);
  }

  const entry = openEntry ?? shownEntry;

  if (!entry) {
    return null;
  }

  const { game } = entry;
  const current = entry.plays.filter((gamePlay) => !gamePlay.archived);
  const archived = entry.plays.filter((gamePlay) => gamePlay.archived);

  return (
    <OverlaySheet
      open={Boolean(openEntry)}
      onOpenChange={onOpenChange}
      title={game.shortName}
      size="sm"
      bodyClassName="grid content-start gap-6"
      headBleed
      meta={
        <p className="text-ink-2 text-13 font-bold">
          {[
            game.generation.name,
            game.regionName,
            String(game.releaseYear),
            countPlays(entry.plays.length),
          ]
            .filter(Boolean)
            .join(" · ")}
        </p>
      }
      head={(title, layout) => (
        <div
          className={cn(
            "bg-surface-2",
            layout === "inset"
              ? "mt-1 rounded-lg p-4"
              : "px-4.5 py-4.5 sm:px-7 sm:pt-5.5",
          )}
        >
          <div className="flex items-center gap-4.5">
            <GameCover
              alt=""
              coverImageUrl={game.coverImageUrl}
              eager
              gameName={game.name}
              gameSlug={game.slug}
              size="token"
            />
            {title}
          </div>
          <div className="mt-4">
            <Link
              href={appRoutes.codexVersionGroup(
                game.versionGroupSlug,
                game.slug,
              )}
              className={buttonVariants({ size: "sm", variant: "secondary" })}
            >
              <AppIcon icon={appIcons.modules.codex} inline="start" />
              Open in Codex
            </Link>
          </div>
        </div>
      )}
    >
      <SheetSection
        className="gap-3"
        title="Your Plays"
        aside={current.length ? countPlays(current.length) : undefined}
      >
        {current.length ? (
          <PlayRows plays={current} />
        ) : (
          <p className="text-ink-2 text-14 font-semibold">
            Every Play of it is archived.
          </p>
        )}
      </SheetSection>

      {archived.length ? (
        <SheetSection
          className="gap-3"
          title="Archived"
          aside={countPlays(archived.length)}
        >
          <PlayRows plays={archived} />
        </SheetSection>
      ) : null}
    </OverlaySheet>
  );
};
