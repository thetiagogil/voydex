import { Card, CardContent } from "@/shared/components/ui/card";
import { Progress } from "@/shared/components/ui/progress";

import type { MainlinePlayCollectibleGroup } from "../../types";
import { getCollectibleGroupCounts } from "../../utils/collectibles-progress-model";
import { CollectibleGroupNavigation } from "./collectible-group-navigation";

export const CollectibleScopeOverviewSection = ({
  group,
  groups,
  onGroupChange,
  stateByEntryId,
}: {
  group: MainlinePlayCollectibleGroup;
  groups: MainlinePlayCollectibleGroup[];
  onGroupChange: (groupId: number) => void;
  stateByEntryId: ReadonlyMap<number, boolean>;
}) => {
  const counts = getCollectibleGroupCounts({ group, stateByEntryId });

  return (
    <section aria-labelledby="collectible-scope-heading">
      <h2 id="collectible-scope-heading" className="sr-only">
        {group.name}
      </h2>

      <Card className="bg-card ring-app-surface-border/80 gap-0 py-0 shadow-xs">
        <CardContent className="grid gap-2.5 px-4 py-4 lg:px-5">
          <div className="flex min-w-0 flex-wrap items-baseline gap-x-6 gap-y-2">
            <CollectibleGroupNavigation
              group={group}
              groups={groups}
              onGroupChange={onGroupChange}
              stateByEntryId={stateByEntryId}
            />

            <div className="ml-auto flex w-full min-w-0 flex-wrap items-baseline gap-x-1 text-sm sm:w-auto">
              <span className="inline-flex items-baseline gap-x-1 whitespace-nowrap">
                <span className="text-primary text-xl font-semibold tabular-nums">
                  {counts.collectedCount}
                </span>
                <span className="font-medium">collected</span>
              </span>
              <span className="inline-flex items-baseline gap-x-1 whitespace-nowrap">
                <span
                  className="text-muted-foreground hidden sm:inline"
                  aria-hidden
                >
                  ·
                </span>
                <span className="text-xl tabular-nums">
                  {counts.remainingCount}
                </span>
                <span className="text-muted-foreground">remaining</span>
                <span className="text-muted-foreground" aria-hidden>
                  ·
                </span>
                <span className="text-xl tabular-nums">
                  {counts.totalCount}
                </span>
                <span className="text-muted-foreground">in total</span>
                <span className="text-muted-foreground" aria-hidden>
                  ·
                </span>
                <span className="text-xl tabular-nums">
                  {counts.percentage}%
                </span>
                <span className="text-muted-foreground">Completed</span>
              </span>
            </div>
          </div>

          <Progress
            aria-label={`${group.name} completion`}
            className="[&_[data-slot=progress-track]]:h-1.5"
            value={counts.percentage}
          />
        </CardContent>
      </Card>
    </section>
  );
};
