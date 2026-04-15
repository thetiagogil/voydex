"use client";

import { cn } from "@/lib/utils/cn";
import { useMemo, useState } from "react";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
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
import {
  useCollectEntriesBulk,
  useCollectEntry,
  useUncollectEntriesBulk,
  useUncollectEntry,
} from "../hooks/usePlayCollectiblesMutations";
import type { PlayCollectible, PlayCollectibleEntry } from "../types";

type CollectibleDrawerProps = {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  playId: string;
  collectible: PlayCollectible | null;
  isLoading: boolean;
};

export const CollectibleDrawer = ({
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

  const { locations, groupedEntries } = useMemo(() => {
    if (!collectible) {
      return {
        locations: [] as string[],
        groupedEntries: new Map<string, PlayCollectibleEntry[]>(),
      };
    }

    const nextLocations: string[] = [];
    const nextGroups = new Map<string, PlayCollectibleEntry[]>();

    for (const entry of collectible.entries) {
      const location = entry.locationName || "Unknown";

      if (!nextGroups.has(location)) {
        nextGroups.set(location, []);
        nextLocations.push(location);
      }

      nextGroups.get(location)?.push(entry);
    }

    return {
      locations: nextLocations,
      groupedEntries: nextGroups,
    };
  }, [collectible]);

  const toggleLocation = (location: string) => {
    setExcludedLocations((previous) => {
      const next = new Set(previous);

      if (next.has(location)) {
        next.delete(location);
      } else {
        next.add(location);
      }

      return next;
    });
  };

  const visibleLocations = locations.filter(
    (location) => !excludedLocations.has(location),
  );

  const visibleEntries = useMemo(() => {
    return visibleLocations.flatMap(
      (location) => groupedEntries.get(location) || [],
    );
  }, [groupedEntries, visibleLocations]);

  const handleBulkCollect = () => {
    const ids = visibleEntries
      .filter((entry) => !entry.isCollected)
      .map((entry) => entry.id);

    if (ids.length > 0) {
      collectBulk.mutate({ playId, collectibleEntryIds: ids });
    }
  };

  const handleBulkUncollect = () => {
    const ids = visibleEntries
      .filter((entry) => entry.isCollected)
      .map((entry) => entry.id);

    if (ids.length > 0) {
      uncollectBulk.mutate({ playId, collectibleEntryIds: ids });
    }
  };

  const handleToggle = (entryId: number, nextIsCollected: boolean) => {
    if (nextIsCollected) {
      collectEntry.mutate({ playId, collectibleEntryId: entryId });
      return;
    }

    uncollectEntry.mutate({ playId, collectibleEntryId: entryId });
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
              {locations.length > 1 && (
                <div className="flex flex-wrap gap-1.5 px-4">
                  {locations.map((location) => (
                    <Badge
                      key={location}
                      variant={
                        excludedLocations.has(location) ? "outline" : "default"
                      }
                      className="cursor-pointer"
                      onClick={() => toggleLocation(location)}
                    >
                      {location}
                    </Badge>
                  ))}
                </div>
              )}

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

              <ScrollArea>
                <div className="flex flex-col gap-4 px-4">
                  {visibleLocations.map((location) => {
                    const entries = groupedEntries.get(location) || [];

                    return (
                      <div key={location}>
                        {locations.length > 1 && (
                          <h4 className="text-muted-foreground mb-2 text-xs font-semibold tracking-wide uppercase">
                            {location}
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
