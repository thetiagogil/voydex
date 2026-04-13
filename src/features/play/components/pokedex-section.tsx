"use client";

import { usePlayPokedex } from "@/features/play/hooks/usePlayPokedex";
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
import type {
  Play,
  PlayPokedexEntry,
  PlayPokedexOverviewSummary,
  PlayPokedexSummary,
} from "../types";
import { PokedexEntriesList } from "./pokedex-entries-list";

// =============================================================================
// HELPERS
// =============================================================================

/** Works with both PlayPokedexOverviewSummary and PlayPokedexSummary */
function computeEffectiveCounts(
  summary: {
    totalEntries: number;
    seenCount: number;
    caughtCount: number;
    mythicalCount: number;
    mythicalSeenCount: number;
    mythicalCaughtCount: number;
  },
  includeMythical: boolean,
) {
  const excludeMythical = !includeMythical && summary.mythicalCount > 0;

  return {
    total: excludeMythical
      ? summary.totalEntries - summary.mythicalCount
      : summary.totalEntries,
    caught: excludeMythical
      ? summary.caughtCount - summary.mythicalCaughtCount
      : summary.caughtCount,
    seen: excludeMythical
      ? summary.seenCount - summary.mythicalSeenCount
      : summary.seenCount,
    mythicalCount: summary.mythicalCount,
    excludeMythical,
  };
}

/** Build summary-compatible object from PlayPokedexSummary (full data) */
function fullSummaryToOverview(
  s: PlayPokedexSummary,
): PlayPokedexOverviewSummary {
  const mythicalCount = s.entries.filter((e) => e.species.isMythical).length;
  const mythicalSeen = s.entries.filter(
    (e) => e.species.isMythical && e.isSeen,
  ).length;
  const mythicalCaught = s.entries.filter(
    (e) => e.species.isMythical && e.isCaught,
  ).length;
  return {
    pokedexId: s.pokedexId,
    pokedexSlug: s.pokedexSlug,
    pokedexName: s.pokedexName,
    pokedexKind: s.pokedexKind,
    totalEntries: s.totalEntries,
    seenCount: s.seenCount,
    caughtCount: s.caughtCount,
    mythicalCount,
    mythicalSeenCount: mythicalSeen,
    mythicalCaughtCount: mythicalCaught,
    versionGroupId: s.versionGroupId,
    versionGroupName: s.versionGroupName,
    isDlc: s.isDlc,
  };
}

// =============================================================================
// POKEDEX CARD
// =============================================================================

interface PokedexCardProps {
  summary: PlayPokedexOverviewSummary;
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
// POKEDEX SECTION — cards from overview summary, drawer lazy-loads full data
// =============================================================================

interface PokedexSectionProps {
  playId: string;
  pokedexSummary: PlayPokedexOverviewSummary[];
  play: Play;
}

export const PokedexSection = ({
  playId,
  pokedexSummary,
  play,
}: PokedexSectionProps) => {
  const includeMythicalPokemon = play.includeMythicalPokemon;
  const [selectedPokedexId, setSelectedPokedexId] = useState<number | null>(
    null,
  );
  const [drawerOpen, setDrawerOpen] = useState(false);
  const [fetchEnabled, setFetchEnabled] = useState(false);

  // Lazy: only fetch full pokedex entries when drawer opens
  const { data: fullEntries, isLoading: isLoadingFull } = usePlayPokedex(
    fetchEnabled ? playId : undefined,
  );

  // Build full summaries from flat entries (when available)
  const fullSummaries: PlayPokedexSummary[] | null = useMemo(() => {
    if (!fullEntries) return null;
    const pokedexMap = new Map<number, PlayPokedexSummary>();
    for (const entry of fullEntries) {
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
  }, [fullEntries]);

  // Card data: use full data counts if available (post-mutation), else overview summary
  const cardData: PlayPokedexOverviewSummary[] = useMemo(() => {
    if (fullSummaries) {
      return fullSummaries.map(fullSummaryToOverview);
    }
    return pokedexSummary;
  }, [fullSummaries, pokedexSummary]);

  // Drawer gets its entries from full summaries
  const selectedDrawerEntries: PlayPokedexEntry[] = useMemo(() => {
    if (!fullSummaries || selectedPokedexId === null) return [];
    const match = fullSummaries.find((s) => s.pokedexId === selectedPokedexId);
    return match?.entries ?? [];
  }, [fullSummaries, selectedPokedexId]);

  const selectedName =
    cardData.find((s) => s.pokedexId === selectedPokedexId)?.pokedexName ?? "";

  const handleCardClick = (pokedexId: number) => {
    setSelectedPokedexId(pokedexId);
    setFetchEnabled(true);
    setDrawerOpen(true);
  };

  // Group summaries by version group for DLC separation
  const vgGroups = useMemo(() => {
    const groups: {
      vgId: number;
      vgName: string;
      isDlc: boolean;
      summaries: PlayPokedexOverviewSummary[];
    }[] = [];
    const map = new Map<number, (typeof groups)[0]>();
    for (const s of cardData) {
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
  }, [cardData]);

  const hasDlc = vgGroups.some((g) => g.isDlc);

  if (cardData.length === 0) {
    return null;
  }

  const isPokedexExcluded = (kind: string) => {
    const isRegional = kind === "regional" || kind === "expansion";
    const isOther = kind === "national" || kind === "special";
    if (isRegional && !play.includePokedex) return true;
    if (isOther && !play.includeOtherPokedex) return true;
    return false;
  };

  const completedDexes = cardData.filter((s) => {
    if (s.totalEntries === 0) return false;
    if (isPokedexExcluded(s.pokedexKind)) return false;
    const { total, caught } = computeEffectiveCounts(s, includeMythicalPokemon);
    return total > 0 && caught === total;
  }).length;
  const totalDexes = cardData.filter(
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
            {group.summaries.map((summary) => (
              <PokedexCard
                key={summary.pokedexId}
                summary={summary}
                includeMythicalPokemon={includeMythicalPokemon}
                isExcludedFromCompletion={isPokedexExcluded(
                  summary.pokedexKind,
                )}
                onClick={() => handleCardClick(summary.pokedexId)}
              />
            ))}
          </div>
        ))}
      </div>

      <Sheet open={drawerOpen} onOpenChange={setDrawerOpen}>
        <SheetContent>
          <SheetHeader>
            <SheetTitle>{selectedName}</SheetTitle>
            <SheetDescription className="sr-only">
              Track caught and seen Pokémon in {selectedName}
            </SheetDescription>
          </SheetHeader>

          <div className="flex flex-col gap-4 overflow-hidden">
            {isLoadingFull && !fullEntries ? (
              <div className="flex items-center justify-center py-8">
                <p className="text-muted-foreground text-sm">Loading...</p>
              </div>
            ) : (
              <PokedexEntriesList
                playId={playId}
                pokedexEntries={selectedDrawerEntries}
                includeMythicalPokemon={includeMythicalPokemon}
              />
            )}
          </div>

          <SheetFooter>
            <SheetClose asChild>
              <Button variant="secondary">Close</Button>
            </SheetClose>
          </SheetFooter>
        </SheetContent>
      </Sheet>
    </Card>
  );
};
