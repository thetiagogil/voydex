"use client";

import { Gem } from "lucide-react";

import type { CollectibleGroup } from "@/modules/mainline/features/play/components/detail/collectibles/collectible-groups";
import { getGroupPercent } from "@/modules/mainline/features/play/components/detail/collectibles/collectible-groups";
import { formatNumber } from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { ProgressMeter } from "@/shared/components/app/progress-meter";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { cn } from "@/lib/utils";

type CollectibleGroupListProps = {
  groups: CollectibleGroup[];
  onSelectGroup: (groupId: number) => void;
  selectedGroupId: number;
};

export const CollectibleGroupList = ({
  groups,
  selectedGroupId,
  onSelectGroup,
}: CollectibleGroupListProps) => {
  const totalCollected = groups.reduce(
    (total, group) => total + group.collectedCount,
    0,
  );
  const totalEntries = groups.reduce(
    (total, group) => total + group.totalCount,
    0,
  );

  return (
    <Card className="min-h-full">
      <CardHeader>
        <CardTitle>Groups</CardTitle>
        <CardDescription>
          {formatNumber(totalCollected)} / {formatNumber(totalEntries)}{" "}
          collected
        </CardDescription>
      </CardHeader>
      <CardContent className="flex max-h-[34rem] flex-col gap-2 overflow-y-auto">
        {groups.map((group) => {
          const isSelected = group.id === selectedGroupId;

          return (
            <button
              key={group.id}
              type="button"
              onClick={() => onSelectGroup(group.id)}
              className={cn(
                "hover:bg-muted/60 flex flex-col gap-3 rounded-lg border p-3 text-left transition-colors",
                isSelected && "border-primary bg-primary/5",
              )}
            >
              <div className="flex items-start justify-between gap-3">
                <div className="flex min-w-0 items-center gap-3">
                  <div className="bg-primary/10 text-primary flex size-10 shrink-0 items-center justify-center rounded-lg">
                    <Gem className="size-5" />
                  </div>
                  <div className="min-w-0">
                    <p className="truncate font-medium">{group.name}</p>
                    <p className="text-muted-foreground text-xs">
                      {group.typeName}
                    </p>
                  </div>
                </div>
                <span className="text-sm">
                  {formatNumber(group.collectedCount)} /{" "}
                  {formatNumber(group.totalCount)}
                </span>
              </div>
              <ProgressMeter value={getGroupPercent(group)} />
            </button>
          );
        })}
      </CardContent>
    </Card>
  );
};
