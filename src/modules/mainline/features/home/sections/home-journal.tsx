"use client";

import {
  groupHomeJournal,
  type HomeJournalEntry,
} from "@/modules/mainline/features/home/data/home-journal-model";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { getPlayMomentRecord } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { SectionHead } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

/* Below 1024px the Journal sits under the rest and shows only the newest few. */
const STACKED_ENTRY_COUNT = 5;

const JournalEntry = ({ entry }: { entry: HomeJournalEntry }) => {
  const record = getPlayMomentRecord(entry.event);

  return (
    <>
      <span className="grid w-12 shrink-0 place-items-center">
        <GameCover
          alt={entry.play.gameName}
          coverImageUrl={entry.play.coverImageUrl}
          gameName={entry.play.gameName}
          gameSlug={entry.play.gameSlug ?? undefined}
          size="row"
        />
      </span>
      <span className="min-w-0">
        <span className="copy-strong block wrap-anywhere">
          {record.headline.map((part) => part.text).join("")}
        </span>
        <span className="text-ink-3 copy-meta block truncate">
          {record.label} · {entry.play.name}
        </span>
      </span>
    </>
  );
};

/*
 * The Journal: what you recorded lately in every Play, newest first and by
 * month, each with its Play's cover. From 1024px it stands beside the rest
 * of Home, as tall as it, and scrolls inside itself.
 */
export const HomeJournal = ({ entries }: { entries: HomeJournalEntry[] }) => {
  const clock = useViewerClock();
  const months = groupHomeJournal(entries, clock);
  /* Where each month starts in the whole list, to count off the newest few. */
  const starts = months.map((_, monthIndex) =>
    months
      .slice(0, monthIndex)
      .reduce((total, month) => total + month.entries.length, 0),
  );

  return (
    <section
      aria-labelledby="home-journal"
      className="flex flex-col lg:absolute lg:inset-0"
    >
      <Card className="min-h-0 flex-1">
        <SectionHead
          title="Journal"
          titleId="home-journal"
          description="Everything you recorded, in every Play"
        />
        {months.length ? (
          <div
            /* Scrolls by keyboard too, from 1024px where it scrolls at all. */
            tabIndex={0}
            aria-labelledby="home-journal"
            className="focus-ring -mx-2 flex min-h-0 flex-1 flex-col gap-4 rounded-lg px-2 pb-1 lg:overflow-y-auto"
          >
            {months.map((month, monthIndex) => {
              const first = starts[monthIndex];

              return (
                <section
                  key={month.key}
                  aria-label={month.label}
                  className={cn(
                    "flex flex-col gap-2",
                    first >= STACKED_ENTRY_COUNT && "max-lg:hidden",
                  )}
                >
                  <h3 className="text-ink-2 copy-label">{month.label}</h3>
                  <ul className="flex flex-col gap-3">
                    {month.entries.map((entry, offset) => (
                      <li
                        key={entry.event.event_id}
                        className={cn(
                          "flex items-center gap-3",
                          first + offset >= STACKED_ENTRY_COUNT &&
                            "max-lg:hidden",
                        )}
                      >
                        <JournalEntry entry={entry} />
                      </li>
                    ))}
                  </ul>
                </section>
              );
            })}
          </div>
        ) : (
          <p className="text-ink-2 copy-body">
            What you record in your Plays shows up here.
          </p>
        )}
      </Card>
    </section>
  );
};
