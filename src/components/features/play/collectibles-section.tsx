"use client";

import { SquareCheckbox } from "@/components/shared/square-checkbox";
import { Card } from "@/components/ui/card";
import { ScrollArea } from "@/components/ui/scroll-area";
import {
  useCollectEntry,
  useUncollectEntry,
} from "@/hooks/gameplay/usePlayCollectibles";
import { cn } from "@/lib/utils/cn";
import type { PlayCollectible } from "@/types/tracking";
import { ChevronDown, ChevronRight } from "lucide-react";
import { useState } from "react";

interface CollectiblesSectionProps {
  playId: string;
  collectibles?: PlayCollectible[];
}

export const CollectiblesSection = ({
  playId,
  collectibles,
}: CollectiblesSectionProps) => {
  const items = collectibles || [];
  const collectEntry = useCollectEntry();
  const uncollectEntry = useUncollectEntry();
  const [expandedId, setExpandedId] = useState<number | null>(null);

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

      <div className="flex flex-col gap-2 p-4">
        {items.map((collectible) => {
          const isExpanded = expandedId === collectible.id;
          const percentage =
            collectible.entries.length > 0
              ? Math.round(
                  (collectible.collectedCount / collectible.entries.length) *
                    100,
                )
              : 0;
          const isDone = percentage === 100;

          return (
            <div key={collectible.id}>
              <button
                type="button"
                onClick={() =>
                  setExpandedId(isExpanded ? null : collectible.id)
                }
                className={cn(
                  "bg-card hover:bg-foreground/5 flex w-full items-center gap-3 rounded-lg border p-3 text-left transition-colors",
                  isDone && "border-green-800",
                )}
              >
                {collectible.spriteUrl && (
                  <img
                    src={collectible.spriteUrl}
                    alt={collectible.name}
                    className="h-8 w-8 object-contain"
                  />
                )}
                <div className="min-w-0 flex-1">
                  <h3 className="text-sm font-semibold">{collectible.name}</h3>
                  <p className="text-muted-foreground text-xs">
                    {collectible.collectedCount}/{collectible.entries.length}
                  </p>
                </div>
                <span
                  className={cn(
                    "text-sm font-medium",
                    isDone ? "text-green-600" : "text-muted-foreground",
                  )}
                >
                  {percentage}%
                </span>
                {isExpanded ? (
                  <ChevronDown className="text-muted-foreground h-4 w-4" />
                ) : (
                  <ChevronRight className="text-muted-foreground h-4 w-4" />
                )}
              </button>

              {isExpanded && (
                <ScrollArea className="max-h-64">
                  <div className="flex flex-col gap-1 py-2 pl-4">
                    {collectible.entries.map((entry) => (
                      <div
                        key={entry.id}
                        className="flex items-center gap-2 rounded-md px-2 py-1"
                      >
                        <SquareCheckbox
                          id={`collectible-${entry.id}`}
                          checked={entry.isCollected}
                          onCheckedChange={(checked) => {
                            if (checked) {
                              collectEntry.mutate({
                                playId,
                                collectibleEntryId: entry.id,
                              });
                            } else {
                              uncollectEntry.mutate({
                                playId,
                                collectibleEntryId: entry.id,
                              });
                            }
                          }}
                        />
                        <div className="min-w-0 flex-1">
                          <span className="text-sm">{entry.name}</span>
                          {entry.locationName && (
                            <p className="text-muted-foreground text-xs">
                              {entry.locationName}
                              {entry.subLocationName &&
                                ` — ${entry.subLocationName}`}
                            </p>
                          )}
                        </div>
                      </div>
                    ))}
                  </div>
                </ScrollArea>
              )}
            </div>
          );
        })}
      </div>
    </Card>
  );
};
