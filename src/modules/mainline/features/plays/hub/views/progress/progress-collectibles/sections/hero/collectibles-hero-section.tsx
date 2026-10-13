import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Card } from "@/shared/components/ui/card";
import { Progress } from "@/shared/components/ui/progress";

import type { MainlinePlayCollectibleGroup } from "../../types";
import { getCollectibleGroupCounts } from "../../utils/collectibles-progress-model";

/*
 * The hero: the collectible on its gold tile (the loud part), how many are
 * found, the bar in the game's colour, and what's left.
 */
export const CollectiblesHeroSection = ({
  areaCount,
  completeAreaCount,
  group,
  place,
  stateByEntryId,
}: {
  areaCount: number;
  completeAreaCount: number;
  group: MainlinePlayCollectibleGroup;
  place: string;
  stateByEntryId: ReadonlyMap<number, boolean>;
}) => {
  const counts = getCollectibleGroupCounts({ group, stateByEntryId });
  const headingId = "collectibles-hero-heading";

  return (
    <section aria-labelledby={headingId}>
      <Card className="grid grid-cols-[84px_minmax(0,1fr)] items-center gap-4 px-(--card-spacing) sm:grid-cols-[130px_minmax(0,1fr)] sm:gap-6.5">
        <span
          aria-hidden
          className="sticker grid size-21 place-items-center rounded-2xl [--t:var(--gold)] sm:size-32.5"
        >
          <AppIcon
            icon={appIcons.product.collectible}
            className="text-warn-ink size-10 sm:size-15"
          />
        </span>

        <div className="min-w-0">
          <p id={headingId} className="text-ink-2 text-13 font-bold">
            {group.name} · {place}
          </p>
          <p className="mt-1 mb-2.5 flex flex-wrap items-baseline gap-x-2.5">
            <b className="font-display text-32 sm:text-44 leading-none font-semibold tabular-nums">
              {counts.collectedCount}
            </b>
            <span className="text-ink-2 text-17 font-bold tabular-nums">
              of {counts.totalCount} found
            </span>
          </p>
          <Progress
            aria-label={`${group.name} found`}
            value={counts.percentage}
            className="**:data-[slot=progress-track]:h-3.5"
          />
          <p className="text-ink-2 text-14 mt-3 flex flex-wrap gap-x-5.5 gap-y-1.5 font-semibold">
            <span>
              {counts.remainingCount ? (
                <>
                  <b className="text-ink font-extrabold tabular-nums">
                    {counts.remainingCount}
                  </b>{" "}
                  still hiding
                </>
              ) : (
                "Every one found"
              )}
            </span>
            {areaCount > 1 ? (
              <span>
                <b className="text-ink font-extrabold tabular-nums">
                  {completeAreaCount}
                </b>{" "}
                of {areaCount} areas complete
              </span>
            ) : null}
          </p>
        </div>
      </Card>
    </section>
  );
};
