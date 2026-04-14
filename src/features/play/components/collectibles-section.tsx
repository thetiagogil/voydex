"use client";

import {
  useCollectEntriesBulk,
  useCollectEntry,
  usePlayCollectibles,
  usePlayCollectiblesSummary,
  useUncollectEntriesBulk,
  useUncollectEntry,
} from "@/features/play/hooks/usePlayCollectibles";
import { cn } from "@/lib/utils/cn";
import { Icon } from "@/shared/components/icon";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { Checkbox } from "@/shared/components/ui/checkbox";
import { ScrollArea } from "@/shared/components/ui/scroll-area";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetDescription,
  SheetFooter,
  SheetHeader,
  SheetTitle,
} from "@/shared/components/ui/sheet";
import { useMemo, useState } from "react";
import type {
  PlayCollectible,
  PlayCollectibleEntry,
  PlayCollectibleSummary,
} from "../types";

// =============================================================================
// COLLECTIBLE CARD (works with both summary and full data)
// =============================================================================

interface CollectibleCardProps {
  name: string;
  collectedCount: number;
  totalEntries: number;
  onClick: () => void;
}

const CollectibleCard = ({
  name,
  collectedCount,
  totalEntries,
  onClick,
}: CollectibleCardProps) => {
  const percentage =
    totalEntries > 0 ? Math.floor((collectedCount / totalEntries) * 100) : 0;
  const isDone = percentage === 100;

  return (
    <Card
      onClick={onClick}
      className={cn(
        "group flex flex-row items-center",
        isDone && "border-green-800 hover:border-green-600",
      )}
    >
      {isDone ? (
        <Icon type="completed" size={20} className="text-green-600" />
      ) : (
        <Icon type="circle" size={20} />
      )}

      <div className="min-w-0 flex-1">
        <h3 className="text-foreground truncate text-sm font-semibold">
          {name}
        </h3>
        <p className="text-muted-foreground text-xs">
          {collectedCount}/{totalEntries}
        </p>
      </div>

      <div className="flex shrink-0 items-center gap-2">
        <span
          className={cn(
            "text-sm font-medium",
            isDone ? "text-green-600" : "text-muted-foreground",
          )}
        >
          {percentage}%
        </span>
        <Icon
          type="rightArrow"
          className={cn(
            "text-muted-foreground group-hover:text-primary h-4 w-4 transition-colors",
            isDone && "group-hover:text-green-600",
          )}
        />
      </div>
    </Card>
  );
};

// =============================================================================
// COLLECTIBLE DRAWER (uses full data)
// =============================================================================

interface CollectibleDrawerProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  playId: string;
  collectible: PlayCollectible | null;
  isLoading: boolean;
}

const CollectibleDrawer = ({
  open,
  onOpenChange,
  playId,
  collectible,
  isLoading,
}: CollectibleDrawerProps) => {
  const collectEntry = useCollectEntry();
  const uncollectEntry = useUncollectEntry();
  const collectBulk = useCollectEntriesBulk();
  const uncollectBulk = useUncollectEntriesBulk();
  const [excludedLocations, setExcludedLocations] = useState<Set<string>>(
    new Set(),
  );

  // Group entries by location
  const { locations, groupedEntries } = useMemo(() => {
    if (!collectible)
      return {
        locations: [] as string[],
        groupedEntries: new Map<string, PlayCollectibleEntry[]>(),
      };

    const grouped = new Map<string, PlayCollectibleEntry[]>();
    const locs: string[] = [];

    for (const entry of collectible.entries) {
      const loc = entry.locationName || "Unknown";
      if (!grouped.has(loc)) {
        grouped.set(loc, []);
        locs.push(loc);
      }
      grouped.get(loc)!.push(entry);
    }

    return { locations: locs, groupedEntries: grouped };
  }, [collectible]);

  const toggleLocation = (loc: string) => {
    setExcludedLocations((prev) => {
      const next = new Set(prev);
      if (next.has(loc)) {
        next.delete(loc);
      } else {
        next.add(loc);
      }
      return next;
    });
  };

  const visibleLocations = locations.filter(
    (loc) => !excludedLocations.has(loc),
  );

  const visibleEntries = useMemo(() => {
    return visibleLocations.flatMap((loc) => groupedEntries.get(loc) || []);
  }, [visibleLocations, groupedEntries]);

  // Delta-only: only send entries that actually change
  const handleBulkCollect = () => {
    const ids = visibleEntries.filter((e) => !e.isCollected).map((e) => e.id);
    if (ids.length > 0)
      collectBulk.mutate({ playId, collectibleEntryIds: ids });
  };

  const handleBulkUncollect = () => {
    const ids = visibleEntries.filter((e) => e.isCollected).map((e) => e.id);
    if (ids.length > 0)
      uncollectBulk.mutate({ playId, collectibleEntryIds: ids });
  };

  const handleToggle = (entryId: number, collected: boolean) => {
    if (collected) {
      collectEntry.mutate({ playId, collectibleEntryId: entryId });
    } else {
      uncollectEntry.mutate({ playId, collectibleEntryId: entryId });
    }
  };

  return (
    <Sheet open={open} onOpenChange={onOpenChange}>
      <SheetContent>
        <SheetHeader>
          <SheetTitle>{collectible?.name}</SheetTitle>
          <SheetDescription className="sr-only">
            Track collected items in {collectible?.name}
          </SheetDescription>
        </SheetHeader>

        <div className="flex flex-col gap-4 overflow-hidden">
          {isLoading ? (
            <div className="flex items-center justify-center py-8">
              <p className="text-muted-foreground text-sm">Loading...</p>
            </div>
          ) : (
            <>
              {/* Location filter */}
              {locations.length > 1 && (
                <div className="flex flex-wrap gap-1.5 px-4">
                  {locations.map((loc) => (
                    <Badge
                      key={loc}
                      variant={
                        excludedLocations.has(loc) ? "outline" : "default"
                      }
                      className="cursor-pointer"
                      onClick={() => toggleLocation(loc)}
                    >
                      {loc}
                    </Badge>
                  ))}
                </div>
              )}

              {/* Bulk actions */}
              <div className="flex gap-2 px-4">
                <Button
                  variant="secondary"
                  size="sm"
                  onClick={handleBulkCollect}
                >
                  Collect all visible
                </Button>
                <Button
                  variant="secondary"
                  size="sm"
                  onClick={handleBulkUncollect}
                >
                  Uncollect all visible
                </Button>
              </div>

              {/* Entries grouped by location */}
              <ScrollArea>
                <div className="flex flex-col gap-4 px-4">
                  {visibleLocations.map((loc) => {
                    const entries = groupedEntries.get(loc) || [];
                    return (
                      <div key={loc}>
                        {locations.length > 1 && (
                          <h4 className="text-muted-foreground mb-2 text-xs font-semibold tracking-wide uppercase">
                            {loc}
                          </h4>
                        )}
                        <div className="flex flex-col gap-1">
                          {entries.map((entry) => (
                            <div
                              key={entry.id}
                              onClick={() =>
                                handleToggle(entry.id, !entry.isCollected)
                              }
                              className={cn(
                                "flex cursor-pointer items-center gap-3 rounded-lg border p-3 transition-colors",
                                entry.isCollected
                                  ? "border-primary bg-primary/10"
                                  : "border-border hover:bg-foreground/5",
                              )}
                            >
                              <Checkbox
                                id={`collectible-${entry.id}`}
                                checked={entry.isCollected}
                                className="pointer-events-none"
                              />
                              <div className="min-w-0 flex-1">
                                <span className="text-sm font-medium">
                                  {entry.name}
                                </span>
                                {entry.subLocationName && (
                                  <p className="text-muted-foreground text-xs">
                                    {entry.subLocationName}
                                  </p>
                                )}
                                {entry.description && (
                                  <p className="text-muted-foreground text-xs">
                                    {entry.description}
                                  </p>
                                )}
                              </div>
                            </div>
                          ))}
                        </div>
                      </div>
                    );
                  })}
                </div>
              </ScrollArea>
            </>
          )}
        </div>

        <SheetFooter>
          <SheetClose asChild>
            <Button variant="secondary">Close</Button>
          </SheetClose>
        </SheetFooter>
      </SheetContent>
    </Sheet>
  );
};

// =============================================================================
// COLLECTIBLES SECTION — cards from summary, drawer from lazy full data
// =============================================================================

interface CollectiblesSectionProps {
  playId: string;
  summaries: PlayCollectibleSummary[];
}

export const CollectiblesSection = ({
  playId,
  summaries,
}: CollectiblesSectionProps) => {
  const [selectedCollectibleId, setSelectedCollectibleId] = useState<
    number | null
  >(null);
  const [drawerOpen, setDrawerOpen] = useState(false);
  const [fetchEnabled, setFetchEnabled] = useState(false);

  // Summary hook — owns the summary cache, seeded from overview
  const { data: summaryData } = usePlayCollectiblesSummary(playId, {
    initialData: summaries,
  });

  // Lazy: only fetch full data when a drawer opens for the first time
  const { data: fullCollectibles, isLoading: isLoadingFull } =
    usePlayCollectibles(fetchEnabled ? playId : undefined);

  // Card data: use full data counts if available (post-mutation), else summary hook
  const cardData: PlayCollectibleSummary[] = useMemo(() => {
    if (fullCollectibles) {
      return fullCollectibles.map((c) => ({
        id: c.id,
        slug: c.slug,
        name: c.name,
        collectibleType: c.collectibleType,
        totalCount: c.totalCount,
        spriteUrl: c.spriteUrl,
        collectedCount: c.collectedCount,
        totalEntries: c.entries.length,
        versionGroupId: c.versionGroupId,
        versionGroupName: c.versionGroupName,
        isDlc: c.isDlc,
      }));
    }
    return summaryData ?? summaries;
  }, [fullCollectibles, summaryData, summaries]);

  const selectedCollectible =
    fullCollectibles?.find((c) => c.id === selectedCollectibleId) ?? null;

  const handleCardClick = (id: number) => {
    setSelectedCollectibleId(id);
    setFetchEnabled(true);
    setDrawerOpen(true);
  };

  // Group by version group for DLC separation
  const vgGroups = useMemo(() => {
    const groups: {
      vgId: number;
      vgName: string;
      isDlc: boolean;
      items: PlayCollectibleSummary[];
    }[] = [];
    const map = new Map<number, (typeof groups)[0]>();
    for (const col of cardData) {
      const existing = map.get(col.versionGroupId);
      if (existing) {
        existing.items.push(col);
      } else {
        const group = {
          vgId: col.versionGroupId,
          vgName: col.versionGroupName,
          isDlc: col.isDlc,
          items: [col],
        };
        map.set(col.versionGroupId, group);
        groups.push(group);
      }
    }
    return groups;
  }, [cardData]);

  const hasDlc = vgGroups.some((g) => g.isDlc);

  if (cardData.length === 0) {
    return null;
  }

  const completedSets = cardData.filter(
    (c) => c.totalEntries > 0 && c.collectedCount === c.totalEntries,
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
        {vgGroups.map((group) => (
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
