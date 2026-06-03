"use client";

import { cn } from "@/lib/utils/cn";
import { Loading } from "@/shared/components/loading";
import { Checkbox } from "@/shared/components/ui/checkbox";
import { ScrollArea } from "@/shared/components/ui/scroll-area";
import { useEffect, useMemo, useState } from "react";
import {
  useCollectEntriesBulk,
  useCollectEntry,
  useUncollectEntriesBulk,
  useUncollectEntry,
} from "../../hooks/usePlayCollectiblesMutations";
import type { PlayCollectible, PlayCollectibleEntry } from "../../types";
import { PlayActionsMenu } from "../shared/play-actions-menu";
import { PlayDrawerToolbar } from "../shared/play-drawer-toolbar";
import { PlayFilterMenu } from "../shared/play-filter-menu";
import { PlayInteractiveCard } from "../shared/play-interactive-card";
import { PlaySheet } from "../shared/play-sheet";

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
  const [selectedLocations, setSelectedLocations] = useState<string[]>([]);

  useEffect(() => {
    setSelectedLocations([]);
  }, [collectible?.id]);

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

  const visibleLocations =
    selectedLocations.length > 0
      ? locations.filter((location) => selectedLocations.includes(location))
      : locations;

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

  const visibleCollectedCount = visibleEntries.filter(
    (entry) => entry.isCollected,
  ).length;

  return (
    <PlaySheet
      open={open}
      onOpenChange={onOpenChange}
      title={collectible?.name ?? ""}
      description={`Track collected items in ${collectible?.name ?? "this set"}`}
    >
      {isLoading ? (
        <Loading label="Loading collectible entries..." className="h-full" />
      ) : (
        <>
          <PlayDrawerToolbar
            summary={`Showing ${visibleEntries.length} of ${collectible?.entries.length ?? 0} entries - ${visibleCollectedCount} collected`}
            controls={
              locations.length > 1 ? (
                <PlayFilterMenu
                  label="Locations"
                  options={locations.map((location) => ({
                    value: location,
                    label: location,
                  }))}
                  selectedValues={selectedLocations}
                  onSelectedValuesChange={setSelectedLocations}
                />
              ) : null
            }
            actions={
              <PlayActionsMenu
                items={[
                  {
                    label: "Mark visible",
                    onSelect: handleBulkCollect,
                    disabled: !visibleEntries.some(
                      (entry) => !entry.isCollected,
                    ),
                  },
                  {
                    label: "Unmark visible",
                    onSelect: handleBulkUncollect,
                    disabled: !visibleEntries.some(
                      (entry) => entry.isCollected,
                    ),
                  },
                ]}
              />
            }
          />

          <ScrollArea className="min-h-0 flex-1">
            {visibleEntries.length > 0 ? (
              <div className="flex flex-col gap-5 px-6 py-4">
                {visibleLocations.map((location) => {
                  const entries = groupedEntries.get(location) || [];

                  return (
                    <section key={location} className="space-y-2">
                      {locations.length > 1 ? (
                        <h4 className="text-muted-foreground text-xs font-semibold tracking-wide uppercase">
                          {location}
                        </h4>
                      ) : null}

                      <div className="space-y-2">
                        {entries.map((entry) => (
                          <PlayInteractiveCard
                            key={entry.id}
                            isActive={entry.isCollected}
                            onClick={() =>
                              handleToggle(entry.id, !entry.isCollected)
                            }
                          >
                            <div className="flex items-start gap-3">
                              <div className="min-w-0 flex-1">
                                <div className="flex items-start justify-between gap-3">
                                  <div className="min-w-0">
                                    <p className="text-sm font-medium">
                                      {entry.name}
                                    </p>
                                    {entry.subLocationName ? (
                                      <p className="text-muted-foreground mt-1 text-xs">
                                        {entry.subLocationName}
                                      </p>
                                    ) : null}
                                  </div>

                                  <Checkbox
                                    id={`collectible-${entry.id}`}
                                    checked={entry.isCollected}
                                    className="pointer-events-none mt-0.5"
                                  />
                                </div>

                                {entry.description ? (
                                  <p
                                    className={cn(
                                      "text-muted-foreground mt-2 text-xs",
                                      entry.isCollected && "text-primary/80",
                                    )}
                                  >
                                    {entry.description}
                                  </p>
                                ) : null}
                              </div>
                            </div>
                          </PlayInteractiveCard>
                        ))}
                      </div>
                    </section>
                  );
                })}
              </div>
            ) : (
              <div className="flex h-full items-center justify-center px-6 py-12">
                <p className="text-muted-foreground text-sm">
                  No entries match the current filters.
                </p>
              </div>
            )}
          </ScrollArea>
        </>
      )}
    </PlaySheet>
  );
};
