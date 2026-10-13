import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";
import { ProgressMeter } from "@/shared/components/progress-meter";
import { Card } from "@/shared/components/ui/card";

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
    <Card role="region" aria-label="Progress" className="px-5 sm:px-7">
      {items.length ? (
        <div className="divide-line grid divide-y">
          {items.map((item) => (
            <ProgressMeter
              key={item.label}
              href={item.href}
              label={item.label}
              value={item.percent}
              detail={item.detail}
              className="py-4 first:pt-1 last:pb-0"
            />
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
