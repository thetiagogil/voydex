"use client";

import type { AdventuresPlayOverview } from "@/features/adventures/types";
import { ResultsInfo } from "@/shared/components/results-info";
import { useMemo, useState } from "react";
import { AdventuresEmpty } from "./adventures-empty";
import { AdventuresFilters } from "./adventures-filters";
import { AdventuresHeader } from "./adventures-header";
import { AdventuresList } from "./adventures-list";

type AdventuresViewProps = {
  initialPlays: AdventuresPlayOverview[];
};

export const AdventuresView = ({ initialPlays }: AdventuresViewProps) => {
  const plays = initialPlays;
  const [search, setSearch] = useState("");
  const [statusFilter, setStatusFilter] = useState<string>("all");
  const [generationFilter, setGenerationFilter] = useState<string>("all");
  const [gameFilter, setGameFilter] = useState<string>("all");
  const [sortBy, setSortBy] = useState<string>("updated");

  const generations = useMemo(() => {
    if (!plays) return [];
    const generationMap = new Map<number, string>();

    for (const play of plays) {
      if (play.game?.generation) {
        generationMap.set(play.game.generation.id, play.game.generation.name);
      }
    }

    return Array.from(generationMap, ([id, name]) => ({ id, name })).sort(
      (a, b) => a.id - b.id,
    );
  }, [plays]);

  const filteredGames = useMemo(() => {
    if (!plays) return [];
    const gameMap = new Map<number, string>();

    for (const play of plays) {
      if (!play.game) continue;

      if (
        generationFilter !== "all" &&
        play.game.generation.id.toString() !== generationFilter
      ) {
        continue;
      }

      gameMap.set(play.game.id, play.game.name);
    }

    return Array.from(gameMap, ([id, name]) => ({ id, name })).sort((a, b) =>
      a.name.localeCompare(b.name),
    );
  }, [plays, generationFilter]);

  const filteredPlays =
    plays?.filter((play) => {
      const matchesSearch =
        play.name.toLowerCase().includes(search.toLowerCase()) ||
        play.game?.name.toLowerCase().includes(search.toLowerCase());

      const matchesStatus =
        statusFilter === "all" || play.status.slug === statusFilter;

      const matchesGeneration =
        generationFilter === "all" ||
        play.game?.generation.id.toString() === generationFilter;

      const matchesGame =
        gameFilter === "all" || play.game?.id.toString() === gameFilter;

      return matchesSearch && matchesStatus && matchesGeneration && matchesGame;
    }) ?? [];

  const sortedPlays = [...filteredPlays].sort((a, b) => {
    switch (sortBy) {
      case "updated":
        return (
          new Date(b.updatedAt).getTime() - new Date(a.updatedAt).getTime()
        );
      case "created":
        return (
          new Date(b.createdAt).getTime() - new Date(a.createdAt).getTime()
        );
      case "name":
        return a.name.localeCompare(b.name);
      case "status":
        return a.status.slug.localeCompare(b.status.slug);
      default:
        return 0;
    }
  });

  const statusCounts = {
    all: plays?.length ?? 0,
    active: plays?.filter((play) => play.status.slug === "active").length ?? 0,
    completed:
      plays?.filter((play) => play.status.slug === "completed").length ?? 0,
    paused: plays?.filter((play) => play.status.slug === "paused").length ?? 0,
    dropped:
      plays?.filter((play) => play.status.slug === "dropped").length ?? 0,
  };

  const hasFilters =
    search !== "" ||
    statusFilter !== "all" ||
    generationFilter !== "all" ||
    gameFilter !== "all";

  const handleClearFilters = () => {
    setSearch("");
    setStatusFilter("all");
    setGenerationFilter("all");
    setGameFilter("all");
  };

  return (
    <div className="flex flex-col gap-4">
      <AdventuresHeader totalCount={plays?.length ?? 0} />

      <AdventuresFilters
        search={search}
        statusFilter={statusFilter}
        generationFilter={generationFilter}
        gameFilter={gameFilter}
        sortBy={sortBy}
        statusCounts={statusCounts}
        generations={generations}
        games={filteredGames}
        onSearchChange={setSearch}
        onStatusFilterChange={setStatusFilter}
        onGenerationFilterChange={(value) => {
          setGenerationFilter(value);
          setGameFilter("all");
        }}
        onGameFilterChange={setGameFilter}
        onSortByChange={setSortBy}
      />

      <ResultsInfo
        count={sortedPlays.length}
        hasFilters={hasFilters}
        onClearFilters={handleClearFilters}
      />

      {sortedPlays.length > 0 ? (
        <AdventuresList plays={sortedPlays} />
      ) : (
        <AdventuresEmpty
          hasFilters={hasFilters}
          onClearFilters={handleClearFilters}
        />
      )}
    </div>
  );
};
