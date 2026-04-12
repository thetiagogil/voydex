"use client";

import { cn } from "@/lib/utils/cn";
import { Icon } from "@/shared/components/icon";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
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
import type { Play, PlayPokedexEntry, PlayPokedexSummary } from "../types";
import { PokedexEntriesList } from "./pokedex-entries-list";

// =============================================================================
// HELPERS
// =============================================================================

function computeEffectiveCounts(
  summary: PlayPokedexSummary,
  includeMythical: boolean,
) {
  const mythicalCount = summary.entries.filter(
    (e) => e.species.isMythical,
  ).length;
  const mythicalCaught = summary.entries.filter(
    (e) => e.species.isMythical && e.isCaught,
  ).length;
  const mythicalSeen = summary.entries.filter(
    (e) => e.species.isMythical && e.isSeen,
  ).length;
  const excludeMythical = !includeMythical && mythicalCount > 0;

  return {
    total: excludeMythical
      ? summary.totalEntries - mythicalCount
      : summary.totalEntries,
    caught: excludeMythical
      ? summary.caughtCount - mythicalCaught
      : summary.caughtCount,
    seen: excludeMythical
      ? summary.seenCount - mythicalSeen
      : summary.seenCount,
    mythicalCount,
    excludeMythical,
  };
}

// =============================================================================
// POKEDEX CARD
// =============================================================================

interface PokedexCardProps {
  summary: PlayPokedexSummary;
  includeMythicalPokemon: boolean;
  isExcludedFromCompletion?: boolean;
  onClick: () => void;
}

const PokedexCard = ({
  summary,
  includeMythicalPokemon,
  isExcludedFromCompletion,
  onClick,
}: PokedexCardProps) => {
  const { total, caught, seen, excludeMythical } = computeEffectiveCounts(
    summary,
    includeMythicalPokemon,
  );

  const caughtPct = total > 0 ? Math.floor((caught / total) * 100) : 0;
  const isCaughtComplete = caughtPct === 100;
  const isSeenComplete = total > 0 && seen === total;
  const isComplete = isCaughtComplete;

  return (
    <Card
      onClick={onClick}
      className={cn(
        "group flex flex-row items-center",
        isComplete && "border-green-800 hover:border-green-600",
        isExcludedFromCompletion && "opacity-70",
      )}
    >
      {isComplete ? (
        <Icon type="completed" size={20} className="text-green-600" />
      ) : isSeenComplete ? (
        <Icon type="completed" size={20} className="text-blue-500" />
      ) : (
        <Icon type="circle" size={20} />
      )}

      <div className="min-w-0 flex-1">
        <div className="flex items-center gap-1.5">
          <h3 className="text-foreground truncate text-sm font-semibold">
            {summary.pokedexName}
          </h3>
          {excludeMythical && (
            <Icon
              type="mythical"
              size={14}
              className="shrink-0 text-purple-400"
            />
          )}
          {isExcludedFromCompletion && (
            <Icon
              type="excluded"
              size={14}
              className="text-muted-foreground shrink-0"
            />
          )}
        </div>
        <p className="text-muted-foreground text-xs">
          {caught} caught · {seen} seen / {total}
          {excludeMythical && "*"}
        </p>
      </div>

      <div className="flex shrink-0 items-center gap-2">
        <span
          className={cn(
            "text-sm font-medium",
            isComplete
              ? "text-green-600"
              : isSeenComplete
                ? "text-blue-500"
                : "text-muted-foreground",
          )}
        >
          {caughtPct}%
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
  play: Play;
}

export const PokedexSection = ({
  playId,
  pokedexEntries,
  play,
}: PokedexSectionProps) => {
  const includeMythicalPokemon = play.includeMythicalPokemon;
  const entries = useMemo(() => pokedexEntries || [], [pokedexEntries]);
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
          versionGroupId: entry.versionGroupId,
          versionGroupName: entry.versionGroupName,
          isDlc: entry.isDlc,
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

  // Group summaries by version group for DLC separation
  const vgGroups = useMemo(() => {
    const groups: {
      vgId: number;
      vgName: string;
      isDlc: boolean;
      summaries: PlayPokedexSummary[];
    }[] = [];
    const map = new Map<number, (typeof groups)[0]>();
    for (const s of pokedexSummaries) {
      const existing = map.get(s.versionGroupId);
      if (existing) {
        existing.summaries.push(s);
      } else {
        const group = {
          vgId: s.versionGroupId,
          vgName: s.versionGroupName,
          isDlc: s.isDlc,
          summaries: [s],
        };
        map.set(s.versionGroupId, group);
        groups.push(group);
      }
    }
    return groups;
  }, [pokedexSummaries]);

  const hasDlc = vgGroups.some((g) => g.isDlc);

  if (entries.length === 0) {
    return null;
  }

  const isPokedexExcluded = (kind: string) => {
    const isRegional = kind === "regional" || kind === "expansion";
    const isOther = kind === "national" || kind === "special";
    if (isRegional && !play.includePokedex) return true;
    if (isOther && !play.includeOtherPokedex) return true;
    return false;
  };

  const completedDexes = pokedexSummaries.filter((s) => {
    if (s.totalEntries === 0) return false;
    if (isPokedexExcluded(s.pokedexKind)) return false;
    const { total, caught } = computeEffectiveCounts(s, includeMythicalPokemon);
    return total > 0 && caught === total;
  }).length;
  const totalDexes = pokedexSummaries.filter(
    (s) => !isPokedexExcluded(s.pokedexKind),
  ).length;
  const isComplete = completedDexes === totalDexes && totalDexes > 0;

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
          {completedDexes}/{totalDexes} completed
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
            {group.summaries.map((summary, index) => (
              <PokedexCard
                key={index}
                summary={summary}
                includeMythicalPokemon={includeMythicalPokemon}
                isExcludedFromCompletion={isPokedexExcluded(
                  summary.pokedexKind,
                )}
                onClick={() => {
                  setSelectedPokedexId(summary.pokedexId);
                  setDrawerOpen(true);
                }}
              />
            ))}
          </div>
        ))}
      </div>

      {selectedSummary && (
        <Sheet open={drawerOpen} onOpenChange={setDrawerOpen}>
          <SheetContent>
            <SheetHeader>
              <SheetTitle>{selectedSummary.pokedexName}</SheetTitle>
              <SheetDescription className="sr-only">
                Track caught and seen Pokémon in {selectedSummary.pokedexName}
              </SheetDescription>
            </SheetHeader>

            <div className="flex flex-col gap-4 overflow-hidden">
              <PokedexEntriesList
                playId={playId}
                pokedexEntries={selectedSummary.entries}
                includeMythicalPokemon={includeMythicalPokemon}
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
