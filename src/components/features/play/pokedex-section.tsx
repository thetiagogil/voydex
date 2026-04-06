"use client";

import { Card } from "@/components/ui/card";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { cn } from "@/lib/utils/cn";
import type { PlayPokedexEntry, PlayPokedexSummary } from "@/types/play";
import { useMemo } from "react";
import { TrackingItemsDexList } from "./tracking-items-pokedex-list";

interface DexSectionProps {
  playId: string;
  pokedexEntries?: PlayPokedexEntry[];
}

export const DexSection = ({ playId, pokedexEntries }: DexSectionProps) => {
  const entries = pokedexEntries || [];

  // Group entries by dex
  const dexSummaries: PlayPokedexSummary[] = useMemo(() => {
    const dexMap = new Map<number, PlayPokedexSummary>();
    for (const entry of entries) {
      const dexId = entry.dex.id;
      if (!dexMap.has(dexId)) {
        dexMap.set(dexId, {
          dexId: entry.dex.id,
          dexSlug: entry.dex.slug,
          dexName: entry.dex.name,
          dexKind: entry.dex.kind,
          totalEntries: 0,
          seenCount: 0,
          caughtCount: 0,
          entries: [],
        });
      }
      const summary = dexMap.get(dexId)!;
      summary.totalEntries++;
      if (entry.isSeen) summary.seenCount++;
      if (entry.isCaught) summary.caughtCount++;
      summary.entries.push(entry);
    }
    return Array.from(dexMap.values());
  }, [entries]);

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

      {dexSummaries.length === 1 ? (
        <div className="p-4">
          <TrackingItemsDexList
            playId={playId}
            pokedexEntries={dexSummaries[0].entries}
          />
        </div>
      ) : (
        <Tabs defaultValue={dexSummaries[0]?.dexSlug}>
          <div className="border-border border-b px-4 pt-4">
            <TabsList>
              {dexSummaries.map((dex) => (
                <TabsTrigger key={dex.dexSlug} value={dex.dexSlug}>
                  {dex.dexName} ({dex.caughtCount}/{dex.totalEntries})
                </TabsTrigger>
              ))}
            </TabsList>
          </div>
          {dexSummaries.map((dex) => (
            <TabsContent key={dex.dexSlug} value={dex.dexSlug} className="p-4">
              <TrackingItemsDexList playId={playId} pokedexEntries={dex.entries} />
            </TabsContent>
          ))}
        </Tabs>
      )}
    </Card>
  );
};
