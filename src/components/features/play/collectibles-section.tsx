"use client";

import { Icon } from "@/components/shared/icon";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Checkbox } from "@/components/ui/checkbox";
import { ScrollArea } from "@/components/ui/scroll-area";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetFooter,
  SheetHeader,
  SheetTitle,
} from "@/components/ui/sheet";
import {
  useCollectEntry,
  useUncollectEntry,
} from "@/hooks/gameplay/usePlayCollectibles";
import { cn } from "@/lib/utils/cn";
import type { PlayCollectible, PlayCollectibleEntry } from "@/types/tracking";
import { useMemo, useState } from "react";

// =============================================================================
// COLLECTIBLE CARD
// =============================================================================

interface CollectibleCardProps {
  collectible: PlayCollectible;
  onClick: () => void;
}

const CollectibleCard = ({ collectible, onClick }: CollectibleCardProps) => {
  const percentage =
    collectible.entries.length > 0
      ? Math.round(
          (collectible.collectedCount / collectible.entries.length) * 100,
        )
      : 0;
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
          {collectible.name}
        </h3>
        <p className="text-muted-foreground text-xs">
          {collectible.collectedCount}/{collectible.entries.length}
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
// COLLECTIBLE DRAWER
// =============================================================================

interface CollectibleDrawerProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  playId: string;
  collectible: PlayCollectible | null;
}

const CollectibleDrawer = ({
  open,
  onOpenChange,
  playId,
  collectible,
}: CollectibleDrawerProps) => {
  const collectEntry = useCollectEntry();
  const uncollectEntry = useUncollectEntry();
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
        </SheetHeader>

        <div className="flex flex-col gap-4 overflow-hidden">
          {/* Location filter */}
          {locations.length > 1 && (
            <div className="flex flex-wrap gap-1.5 px-4">
              {locations.map((loc) => (
                <Badge
                  key={loc}
                  variant={excludedLocations.has(loc) ? "outline" : "default"}
                  className="cursor-pointer"
                  onClick={() => toggleLocation(loc)}
                >
                  {loc}
                </Badge>
              ))}
            </div>
          )}

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
// COLLECTIBLES SECTION
// =============================================================================

interface CollectiblesSectionProps {
  playId: string;
  collectibles?: PlayCollectible[];
}

export const CollectiblesSection = ({
  playId,
  collectibles,
}: CollectiblesSectionProps) => {
  const items = collectibles || [];
  const [selectedCollectibleId, setSelectedCollectibleId] = useState<
    number | null
  >(null);
  const [drawerOpen, setDrawerOpen] = useState(false);

  const selectedCollectible =
    items.find((c) => c.id === selectedCollectibleId) ?? null;

  if (items.length === 0) {
    return null;
  }

  const totalCollected = items.reduce((sum, c) => sum + c.collectedCount, 0);
  const totalEntries = items.reduce((sum, c) => sum + c.entries.length, 0);
  const isComplete = totalCollected === totalEntries && totalEntries > 0;

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
          {totalCollected}/{totalEntries} collected
        </p>
      </div>

      <div className="flex flex-col gap-4 p-4">
        {items.map((collectible) => (
          <CollectibleCard
            key={collectible.id}
            collectible={collectible}
            onClick={() => {
              setSelectedCollectibleId(collectible.id);
              setDrawerOpen(true);
            }}
          />
        ))}
      </div>

      <CollectibleDrawer
        open={drawerOpen}
        onOpenChange={setDrawerOpen}
        playId={playId}
        collectible={selectedCollectible}
      />
    </Card>
  );
};
