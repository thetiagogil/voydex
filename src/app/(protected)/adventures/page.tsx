"use client";

import { AdventuresEmpty } from "@/features/adventures/components/adventures-empty";
import { AdventuresFilters } from "@/features/adventures/components/adventures-filters";
import { AdventuresHeader } from "@/features/adventures/components/adventures-header";
import { AdventuresList } from "@/features/adventures/components/adventures-list";
import { usePlays } from "@/features/adventures/hooks/useAdventures";
import { PageLayout } from "@/shared/components/layout/page-layout";
import { Loading } from "@/shared/components/loading";
import { ResultsInfo } from "@/shared/components/results-info";
import { useMemo, useState } from "react";

export default function PlaysPage() {
  const { data: plays, isLoading } = usePlays();
  const [search, setSearch] = useState("");
  const [statusFilter, setStatusFilter] = useState<string>("all");
  const [generationFilter, setGenerationFilter] = useState<string>("all");
  const [gameFilter, setGameFilter] = useState<string>("all");
  const [sortBy, setSortBy] = useState<string>("updated");

  // Derive unique generations and games from plays data
  const generations = useMemo(() => {
    if (!plays) return [];
    const genMap = new Map<number, string>();
    for (const play of plays) {
      if (play.game?.generation) {
        genMap.set(play.game.generation.id, play.game.generation.name);
      }
    }
    return Array.from(genMap, ([id, name]) => ({ id, name })).sort(
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
      )
        continue;
      gameMap.set(play.game.id, play.game.name);
    }
    return Array.from(gameMap, ([id, name]) => ({ id, name })).sort((a, b) =>
      a.name.localeCompare(b.name),
    );
  }, [plays, generationFilter]);

  if (isLoading) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  // Filter plays
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
    }) || [];

  // Sort plays
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

  // Calculate status counts
  const statusCounts = {
    all: plays?.length || 0,
    active: plays?.filter((p) => p.status.slug === "active").length || 0,
    completed: plays?.filter((p) => p.status.slug === "completed").length || 0,
    paused: plays?.filter((p) => p.status.slug === "paused").length || 0,
    dropped: plays?.filter((p) => p.status.slug === "dropped").length || 0,
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
    <PageLayout>
      <div className="flex flex-col gap-4">
        <AdventuresHeader totalCount={plays?.length || 0} />

        <AdventuresFilters
          search={search}
          statusFilter={statusFilter}
          generationFilter={generationFilter}
          gameFilter={gameFilter}
          sortBy={sortBy}
          statusCounts={statusCounts}
          generations={generations || []}
          games={filteredGames}
          onSearchChange={setSearch}
          onStatusFilterChange={setStatusFilter}
          onGenerationFilterChange={(val) => {
            setGenerationFilter(val);
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
    </PageLayout>
  );
}
