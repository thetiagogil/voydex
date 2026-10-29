import Link from "next/link";

import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";
import { ProgressDonut } from "@/shared/components/progress-donut";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

import { getProgressSummaryItems } from "./progress-summary-model";

type ProgressSummarySectionProps = {
  className?: string;
  overview: MainlinePlayOverview | null;
  playId: string;
};

/*
 * Progress is quiet: one tile per tracker (Story, Pokédex and, where the game
 * has them, Collectibles) sharing the card's width, each a blue progress donut and
 * its count ("10 of 16 milestones"), which never wraps. A tile opens its
 * tracker and lifts on hover: a darker fill would read like the donut's own
 * track.
 */
export const ProgressSummarySection = ({
  className,
  overview,
  playId,
}: ProgressSummarySectionProps) => {
  const items = getProgressSummaryItems(overview, playId);

  return (
    <Card
      role="region"
      aria-label="Progress"
      className={cn("px-4 sm:px-5", className)}
    >
      {items.length ? (
        <div
          className={cn(
            "grid h-full gap-2.5 sm:gap-3",
            items.length === 3
              ? "grid-cols-3"
              : items.length === 1
                ? "grid-cols-1"
                : "grid-cols-2",
          )}
        >
          {items.map((item) => (
            <Link
              key={item.label}
              href={item.href}
              className="bg-surface-2 focus-ring flex min-w-0 flex-col items-center justify-start gap-2.5 rounded-xl px-2 py-4 text-center transition-transform duration-150 hover:-translate-y-0.75"
            >
              <span className="text-15 font-extrabold">{item.label}</span>
              <ProgressDonut
                label={`${item.label} progress`}
                value={item.percent}
                className="w-full max-w-24"
              />
              <span className="text-ink text-14 font-extrabold whitespace-nowrap tabular-nums">
                {item.detail}
              </span>
            </Link>
          ))}
        </div>
      ) : (
        <p className="text-ink-2 font-semibold">
          Progress has not been recorded yet.
        </p>
      )}
    </Card>
  );
};
