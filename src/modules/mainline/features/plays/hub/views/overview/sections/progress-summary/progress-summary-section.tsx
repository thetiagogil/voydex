import Link from "next/link";

import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";
import { Card } from "@/shared/components/ui/card";
import { Progress } from "@/shared/components/ui/progress";

import { getProgressSummaryItems } from "./progress-summary-model";

type ProgressSummarySectionProps = {
  overview: MainlinePlayOverview | null;
  playId: string;
};

/* Progress is quiet: a name, a big figure and a bar in the game's colour. */
export const ProgressSummarySection = ({
  overview,
  playId,
}: ProgressSummarySectionProps) => {
  const items = getProgressSummaryItems(overview, playId);

  return (
    <Card aria-label="Progress" className="px-5 sm:px-7">
      {items.length ? (
        <div className="divide-line grid divide-y">
          {items.map((item) => (
            <Link
              key={item.label}
              href={item.href}
              className="group/metric grid grid-cols-[1fr_auto] items-end gap-x-3 gap-y-1 py-4 first:pt-1 last:pb-0"
            >
              <span className="text-16 font-extrabold group-hover/metric:underline">
                {item.label}
              </span>
              <span className="font-display text-[30px] leading-none font-bold tracking-[-0.02em] tabular-nums">
                {item.percent}
                <small className="text-ink-3 ml-px text-[0.5em]">%</small>
              </span>
              <Progress
                value={item.percent}
                max={100}
                aria-label={`${item.label} progress`}
                className="col-span-2 mt-1.5 [&_[data-slot=progress-track]]:h-3.5"
              />
              <span className="text-ink-2 col-span-2 text-[13.5px] font-semibold">
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
