"use client";

import { Icon } from "@/components/shared/icon";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetFooter,
  SheetHeader,
  SheetTitle,
} from "@/components/ui/sheet";
import { cn } from "@/lib/utils/cn";
import type { PlayPokedexEntry, PlayPokedexSummary } from "@/types/play";
import { useMemo, useState } from "react";
import { PokedexEntriesList } from "./pokedex-entries-list";

// =============================================================================
// POKEDEX CARD
// =============================================================================

interface PokedexCardProps {
  summary: PlayPokedexSummary;
  onClick: () => void;
}

const PokedexCard = ({ summary, onClick }: PokedexCardProps) => {
  const percentage =
    summary.totalEntries > 0
      ? Math.round((summary.caughtCount / summary.totalEntries) * 100)
      : 0;
  const isComplete = percentage === 100;

  return (
    <Card
      onClick={onClick}
      className={cn(
        "group flex flex-row items-center",
        isComplete && "border-green-800 hover:border-green-600",
      )}
    >
      {isComplete ? (
        <Icon type="completed" size={20} className="text-green-600" />
      ) : (
        <Icon type="circle" size={20} />
      )}

      <div className="min-w-0 flex-1">
        <h3 className="text-foreground truncate text-sm font-semibold">
          {summary.pokedexName}
        </h3>
        <p className="text-muted-foreground text-xs">
          {summary.caughtCount} caught · {summary.seenCount} seen /{" "}
          {summary.totalEntries}
        </p>
      </div>

      <div className="flex shrink-0 items-center gap-2">
        <span
          className={cn(
            "text-sm font-medium",
            isComplete ? "text-green-600" : "text-muted-foreground",
          )}
        >
          {percentage}%
        </span>
        <Icon
          type="rightArrow"
          className={cn(
            "text-muted-foreground group-hover:text-primary h-4 w-4 transition-colors",
            isComplete && "group-hover:text-green-600",
          )}
        />
      </div>
    </Card>
  );
};

// =============================================================================
// POKEDEX SECTION
// =============================================================================

interface PokedexSectionProps {
  playId: string;
  pokedexEntries?: PlayPokedexEntry[];
}

export const PokedexSection = ({
  playId,
  pokedexEntries,
}: PokedexSectionProps) => {
  const entries = pokedexEntries || [];
  const [selectedPokedexId, setSelectedPokedexId] = useState<number | null>(
    null,
  );
  const [drawerOpen, setDrawerOpen] = useState(false);

  // Group entries by pokedex
  const pokedexSummaries: PlayPokedexSummary[] = useMemo(() => {
    const pokedexMap = new Map<number, PlayPokedexSummary>();
    for (const entry of entries) {
      const pokedexId = entry.pokedex.id;
      if (!pokedexMap.has(pokedexId)) {
        pokedexMap.set(pokedexId, {
          pokedexId: entry.pokedex.id,
          pokedexSlug: entry.pokedex.slug,
          pokedexName: entry.pokedex.name,
          pokedexKind: entry.pokedex.kind,
          totalEntries: 0,
          seenCount: 0,
          caughtCount: 0,
          entries: [],
        });
      }
      const summary = pokedexMap.get(pokedexId)!;
      summary.totalEntries++;
      if (entry.isSeen) summary.seenCount++;
      if (entry.isCaught) summary.caughtCount++;
      summary.entries.push(entry);
    }
    return Array.from(pokedexMap.values());
  }, [entries]);

  const selectedSummary =
    pokedexSummaries.find((s) => s.pokedexId === selectedPokedexId) ?? null;

  if (entries.length === 0) {
    return null;
  }

  const totalCaught = entries.filter((e) => e.isCaught).length;
  const totalEntries = entries.length;
  const isComplete = totalCaught === totalEntries;

  return (
    <Card className="gap-0 p-0">
      <div className="border-border gap-2 border-b p-4">
        <h2 className="text-foreground text-xl font-bold">Pokédex</h2>
        <p
          className={cn(
            "text-muted-foreground text-xs",
            isComplete ? "text-green-600" : "",
          )}
        >
          {totalCaught}/{totalEntries} caught
        </p>
      </div>

      <div className="flex flex-col gap-4 p-4">
        {pokedexSummaries.map((summary, index) => (
          <PokedexCard
            key={index}
            summary={summary}
            onClick={() => {
              setSelectedPokedexId(summary.pokedexId);
              setDrawerOpen(true);
            }}
          />
        ))}
      </div>

      {selectedSummary && (
        <Sheet open={drawerOpen} onOpenChange={setDrawerOpen}>
          <SheetContent>
            <SheetHeader>
              <SheetTitle>{selectedSummary.pokedexName}</SheetTitle>
            </SheetHeader>

            <div className="flex flex-col gap-4 overflow-hidden">
              <PokedexEntriesList
                playId={playId}
                pokedexEntries={selectedSummary.entries}
              />
            </div>

            <SheetFooter>
              <SheetClose asChild>
                <Button variant="secondary">Close</Button>
              </SheetClose>
            </SheetFooter>
          </SheetContent>
        </Sheet>
      )}
    </Card>
  );
};
