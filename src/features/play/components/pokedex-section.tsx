"use client";

import {
  usePlayPokedex,
  usePlayPokedexSummary,
} from "@/features/play/hooks/usePlayPokedex";
import { cn } from "@/lib/utils/cn";
import { Badge } from "@/shared/components/ui/badge";
import { Card } from "@/shared/components/ui/card";
import { useMemo, useState } from "react";
import type {
  Play,
  PlayPokedexEntry,
  PlayPokedexOverviewSummary,
  PlayPokedexSummary,
} from "../types";
import {
  computeEffectivePokedexCounts,
  toPokedexOverviewSummary,
} from "../utils/pokedex-summary";
import { PokedexCard } from "./pokedex-card";
import { PokedexDrawer } from "./pokedex-drawer";

type PokedexSectionProps = {
  playId: string;
  pokedexSummary: PlayPokedexOverviewSummary[];
  play: Play;
};

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

  const { data: summaryData } = usePlayPokedexSummary(playId, {
    initialData: pokedexSummary,
    enabled: !fetchEnabled,
  });

  const { data: fullEntries, isLoading: isLoadingFull } = usePlayPokedex(
    fetchEnabled ? playId : undefined,
  );

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

      const summary = pokedexMap.get(pokedexId);

      if (!summary) continue;

      summary.totalEntries++;

      if (entry.isSeen) summary.seenCount++;
      if (entry.isCaught) summary.caughtCount++;

      summary.entries.push(entry);
    }

    return Array.from(pokedexMap.values());
  }, [fullEntries]);

  const cardData: PlayPokedexOverviewSummary[] = useMemo(() => {
    if (fullSummaries) {
      return fullSummaries.map(toPokedexOverviewSummary);
    }

    return summaryData ?? pokedexSummary;
  }, [fullSummaries, pokedexSummary, summaryData]);

  const selectedDrawerEntries: PlayPokedexEntry[] = useMemo(() => {
    if (!fullSummaries || selectedPokedexId === null) return [];

    const selectedSummary = fullSummaries.find(
      (summary) => summary.pokedexId === selectedPokedexId,
    );

    return selectedSummary?.entries ?? [];
  }, [fullSummaries, selectedPokedexId]);

  const selectedName =
    cardData.find((summary) => summary.pokedexId === selectedPokedexId)
      ?.pokedexName ?? "";

  const handleCardClick = (pokedexId: number) => {
    setSelectedPokedexId(pokedexId);
    setFetchEnabled(true);
    setDrawerOpen(true);
  };

  const versionGroups = useMemo(() => {
    const groups: {
      vgId: number;
      vgName: string;
      isDlc: boolean;
      summaries: PlayPokedexOverviewSummary[];
    }[] = [];
    const groupsMap = new Map<number, (typeof groups)[0]>();

    for (const summary of cardData) {
      const existingGroup = groupsMap.get(summary.versionGroupId);

      if (existingGroup) {
        existingGroup.summaries.push(summary);
        continue;
      }

      const group = {
        vgId: summary.versionGroupId,
        vgName: summary.versionGroupName,
        isDlc: summary.isDlc,
        summaries: [summary],
      };

      groupsMap.set(summary.versionGroupId, group);
      groups.push(group);
    }

    return groups;
  }, [cardData]);

  const hasDlc = versionGroups.some((group) => group.isDlc);

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

  const completedDexes = cardData.filter((summary) => {
    if (summary.totalEntries === 0) return false;
    if (isPokedexExcluded(summary.pokedexKind)) return false;

    const { total, caught } = computeEffectivePokedexCounts(
      summary,
      includeMythicalPokemon,
    );

    return total > 0 && caught === total;
  }).length;

  const totalDexes = cardData.filter(
    (summary) => !isPokedexExcluded(summary.pokedexKind),
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
        {versionGroups.map((group) => (
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

      <PokedexDrawer
        open={drawerOpen}
        onOpenChange={setDrawerOpen}
        playId={playId}
        pokedexName={selectedName}
        pokedexEntries={selectedDrawerEntries}
        includeMythicalPokemon={includeMythicalPokemon}
        isLoading={isLoadingFull && !fullEntries}
      />
    </Card>
  );
};
