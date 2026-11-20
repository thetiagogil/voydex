import { TextLink } from "@/shared/components/text-link";
import { Card } from "@/shared/components/ui/card";

import type {
  PlayHistoryFilterOption,
  PlayHistoryMonth,
} from "../../data/play-history-model";

/* The id of a month's stop on the line, which the index jumps to. */
export const getPlayHistoryMonthAnchor = (monthKey: string) =>
  `play-history-month-${monthKey}`;

/*
 * History's index, beside the line from 1024px: what the moments shown are
 * made of (how many of each kind) and the months they fall in, each a jump
 * to its place on the line. It stays in view while the line scrolls, so a
 * long History always has a way round it.
 */
export const PlayHistoryIndex = ({
  kinds,
  months,
}: {
  /* Every kind with how many moments it holds; "all" is left out. */
  kinds: PlayHistoryFilterOption[];
  months: PlayHistoryMonth[];
}) => (
  <Card size="sm" className="gap-4">
    <section aria-labelledby="play-history-kinds" className="grid gap-2">
      <h3
        id="play-history-kinds"
        className="text-ink-2 copy-label font-sans tracking-normal"
      >
        What happened
      </h3>
      <dl className="grid grid-cols-2 gap-2">
        {kinds.map((kind) => (
          <div key={kind.value} className="tile flex flex-col-reverse gap-0.5">
            <dt className="text-ink-2 copy-meta">{kind.label}</dt>
            <dd className="copy-strong tabular-nums">{kind.count}</dd>
          </div>
        ))}
      </dl>
    </section>
    <nav aria-labelledby="play-history-months" className="grid gap-1">
      <h3
        id="play-history-months"
        className="text-ink-2 copy-label font-sans tracking-normal"
      >
        Jump to
      </h3>
      <ul className="grid">
        {months.map((month) => (
          <li
            key={month.key}
            className="flex items-baseline justify-between gap-3"
          >
            <TextLink
              href={`#${getPlayHistoryMonthAnchor(month.key)}`}
              tone="quiet"
              standalone
            >
              {month.label}
            </TextLink>
            <span className="text-ink-3 copy-meta tabular-nums">
              {month.entries.length}
            </span>
          </li>
        ))}
      </ul>
    </nav>
  </Card>
);
