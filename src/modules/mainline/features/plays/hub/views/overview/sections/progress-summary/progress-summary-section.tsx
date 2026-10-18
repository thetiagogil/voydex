import Link from "next/link";

import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";
import { ProgressDonut } from "@/shared/components/progress-donut";
import { Card } from "@/shared/components/ui/card";
import { rowInteractionVariants } from "@/shared/components/ui/row-interaction";
import { cn } from "@/shared/utils/cn";

import { getProgressSummaryItems } from "./progress-summary-model";

type ProgressSummarySectionProps = {
  overview: MainlinePlayOverview | null;
  playId: string;
};

/*
 * Progress is one quiet white card: a column per tracker (Story, Pokédex and,
 * where the game has them, Collectibles) parted by thin lines, each a green
 * donut, its count ("10 of 16 milestones") and what is left or what else
 * counts ("6 to go", "22 more seen"), never wrapping. No inner tiles: a grey
 * fill on the white card looked muddy. A column opens its tracker and takes
 * the row hover.
 */
export const ProgressSummarySection = ({
  overview,
  playId,
}: ProgressSummarySectionProps) => {
  const items = getProgressSummaryItems(overview, playId);

  return (
    <Card role="region" aria-label="Progress" className="px-4 sm:px-5">
      {items.length ? (
        <div
          className={cn(
            "grid h-full gap-2",
            items.length === 3 ? "grid-cols-3" : "grid-cols-2",
          )}
        >
          {items.map((item) => (
            <Link
              key={item.label}
              href={item.href}
              className={cn(
                rowInteractionVariants({ interaction: "action" }),
                "relative flex min-w-0 flex-col items-center justify-start gap-2.5 rounded-xl px-2 py-3 text-center",
                // A straight line between columns, outside each column's hover.
                "not-first:before:bg-line not-first:before:absolute not-first:before:inset-y-3 not-first:before:-left-1.25 not-first:before:w-px",
              )}
            >
              <span className="text-15 font-extrabold">{item.label}</span>
              <ProgressDonut
                label={`${item.label} progress`}
                value={item.percent}
                className="w-full max-w-28"
              />
              <span className="flex flex-col gap-0.5">
                <span className="text-ink text-14 font-extrabold whitespace-nowrap tabular-nums">
                  {item.detail}
                </span>
                {item.note ? (
                  <span className="text-ink-2 text-13 font-semibold whitespace-nowrap tabular-nums">
                    {item.note}
                  </span>
                ) : null}
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
