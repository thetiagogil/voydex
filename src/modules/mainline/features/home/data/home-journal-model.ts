import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import { formatPlayHistoryDate } from "@/modules/mainline/features/plays/shared/utils/play-history-date";
import {
  comparePlayMoments,
  type ViewerClock,
} from "@/modules/mainline/features/plays/shared/utils/play-moment-date";

/* How many of the latest moments, across every Play, the Journal reads. */
export const HOME_JOURNAL_COUNT = 30;

/* The Play a Journal entry was recorded in: its cover and its name. */
export type HomeJournalPlay = {
  coverImageUrl: string | null;
  gameName: string;
  gameSlug: string | null;
  id: string;
  name: string;
};

export type HomeJournalEntry = {
  event: MainlinePlayTimelineEvent;
  play: HomeJournalPlay;
};

export type HomeJournalMonth = {
  entries: HomeJournalEntry[];
  key: string;
  label: string;
};

/*
 * The latest moments, newest first by when they happened, each with the
 * Play it belongs to. A moment whose Play isn't in the list (an archived
 * one) is left out.
 */
export const toHomeJournal = (
  events: MainlinePlayTimelineEvent[],
  playsById: ReadonlyMap<string, HomeJournalPlay>,
): HomeJournalEntry[] =>
  events
    .toSorted((left, right) => comparePlayMoments(right, left))
    .flatMap((event) => {
      const play = event.play_id ? playsById.get(event.play_id) : undefined;

      return play ? [{ event, play }] : [];
    });

/*
 * The Journal's months, newest first, read in the viewer's time zone, as
 * History groups them.
 */
export const groupHomeJournal = (
  entries: HomeJournalEntry[],
  clock: ViewerClock,
): HomeJournalMonth[] => {
  const months: (HomeJournalMonth & { monthKey: string })[] = [];

  for (const entry of entries) {
    const date = formatPlayHistoryDate(entry.event, clock);
    const month = months.at(-1);

    if (month?.monthKey === date.monthKey) {
      month.entries.push(entry);
    } else {
      months.push({
        entries: [entry],
        key: `${date.monthKey}-${months.length}`,
        label: date.monthLabel,
        monthKey: date.monthKey,
      });
    }
  }

  return months.map(({ entries: monthEntries, key, label }) => ({
    entries: monthEntries,
    key,
    label,
  }));
};
