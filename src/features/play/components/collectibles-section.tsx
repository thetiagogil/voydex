"use client";

import { cn } from "@/lib/utils/cn";
import { Badge } from "@/shared/components/ui/badge";
import { Card } from "@/shared/components/ui/card";
import { useMemo, useState } from "react";
import {
  usePlayCollectibles,
  usePlayCollectiblesSummary,
} from "../hooks/usePlayCollectibles";
import type { PlayCollectible, PlayCollectibleSummary } from "../types";
import { toCollectiblesSummary } from "../utils/collectibles-summary";
import { CollectibleCard } from "./collectible-card";
import { CollectibleDrawer } from "./collectible-drawer";

type CollectiblesSectionProps = {
  playId: string;
  summaries: PlayCollectibleSummary[];
};

export const CollectiblesSection = ({
  playId,
  summaries,
}: CollectiblesSectionProps) => {
  const [selectedCollectibleId, setSelectedCollectibleId] = useState<
    number | null
  >(null);
  const [drawerOpen, setDrawerOpen] = useState(false);
  const [fetchEnabled, setFetchEnabled] = useState(false);

  const { data: summaryData } = usePlayCollectiblesSummary(playId, {
    initialData: summaries,
    enabled: !fetchEnabled,
  });

  const { data: fullCollectibles, isLoading: isLoadingFull } =
    usePlayCollectibles(fetchEnabled ? playId : undefined);

  const cardData: PlayCollectibleSummary[] = useMemo(() => {
    if (fullCollectibles) {
      return toCollectiblesSummary(fullCollectibles);
    }

    return summaryData ?? summaries;
  }, [fullCollectibles, summaries, summaryData]);

  const selectedCollectible: PlayCollectible | null =
    fullCollectibles?.find(
      (collectible) => collectible.id === selectedCollectibleId,
    ) ?? null;

  const handleCardClick = (collectibleId: number) => {
    setSelectedCollectibleId(collectibleId);
    setFetchEnabled(true);
    setDrawerOpen(true);
  };

  const versionGroups = useMemo(() => {
    const groups: {
      vgId: number;
      vgName: string;
      isDlc: boolean;
      items: PlayCollectibleSummary[];
    }[] = [];
    const groupsMap = new Map<number, (typeof groups)[0]>();

    for (const collectible of cardData) {
      const existingGroup = groupsMap.get(collectible.versionGroupId);

      if (existingGroup) {
        existingGroup.items.push(collectible);
        continue;
      }

      const group = {
        vgId: collectible.versionGroupId,
        vgName: collectible.versionGroupName,
        isDlc: collectible.isDlc,
        items: [collectible],
      };

      groupsMap.set(collectible.versionGroupId, group);
      groups.push(group);
    }

    return groups;
  }, [cardData]);

  const hasDlc = versionGroups.some((group) => group.isDlc);

  if (cardData.length === 0) {
    return null;
  }

  const completedSets = cardData.filter(
    (collectible) =>
      collectible.totalEntries > 0 &&
      collectible.collectedCount === collectible.totalEntries,
  ).length;
  const totalSets = cardData.length;
  const isComplete = completedSets === totalSets && totalSets > 0;

  return (
    <Card className="gap-0 p-0">
      <div className="border-border gap-2 border-b p-4">
        <h2 className="text-foreground text-xl font-bold">Collectibles</h2>
        <p
          className={cn(
            "text-muted-foreground text-xs",
            isComplete ? "text-green-600" : "",
          )}
        >
          {completedSets}/{totalSets} completed
        </p>
      </div>

      <div className="flex flex-col gap-4 p-4">
        {versionGroups.map((group) => (
          <div key={group.vgId} className="flex flex-col gap-4">
            {hasDlc && (
              <div className="flex items-center gap-2">
                <Badge variant={group.isDlc ? "secondary" : "outline"}>
                  {group.isDlc ? group.vgName : "Base Game"}
                </Badge>
              </div>
            )}
            {group.items.map((item) => (
              <CollectibleCard
                key={item.id}
                name={item.name}
                collectedCount={item.collectedCount}
                totalEntries={item.totalEntries}
                onClick={() => handleCardClick(item.id)}
              />
            ))}
          </div>
        ))}
      </div>

      <CollectibleDrawer
        open={drawerOpen}
        onOpenChange={setDrawerOpen}
        playId={playId}
        collectible={selectedCollectible}
        isLoading={isLoadingFull && !fullCollectibles}
      />
    </Card>
  );
};
