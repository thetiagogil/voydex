"use client";

import { PlaysEmpty } from "@/components/features/plays/plays-empty";
import { PlaysFilters } from "@/components/features/plays/plays-filters";
import { PlaysHeader } from "@/components/features/plays/plays-header";
import { PlaysList } from "@/components/features/plays/plays-list";
import { ResultsInfo } from "@/components/features/shared/results-info";
import { PageLayout } from "@/components/layout/page-layout";
import { Loading } from "@/components/shared/loading";
import { usePlays } from "@/hooks/gameplay/usePlays";
import { useState } from "react";

export default function PlaysPage() {
  const { data: plays, isLoading } = usePlays();
  const [search, setSearch] = useState("");
  const [statusFilter, setStatusFilter] = useState<string>("all");
  const [sortBy, setSortBy] = useState<string>("updated");

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
        statusFilter === "all" || play.status === statusFilter;

      return matchesSearch && matchesStatus;
    }) || [];

  // Sort plays
  const sortedPlays = [...filteredPlays].sort((a, b) => {
    switch (sortBy) {
      case "updated":
        return (
          new Date(b.updated_at).getTime() - new Date(a.updated_at).getTime()
        );
      case "created":
        return (
          new Date(b.created_at).getTime() - new Date(a.created_at).getTime()
        );
      case "name":
        return a.name.localeCompare(b.name);
      case "status":
        return a.status.localeCompare(b.status);
      default:
        return 0;
    }
  });

  // Calculate status counts
  const statusCounts = {
    all: plays?.length || 0,
    active: plays?.filter((p) => p.status === "active").length || 0,
    completed: plays?.filter((p) => p.status === "completed").length || 0,
    paused: plays?.filter((p) => p.status === "paused").length || 0,
    dropped: plays?.filter((p) => p.status === "dropped").length || 0,
  };

  const hasFilters = search !== "" || statusFilter !== "all";

  const handleClearFilters = () => {
    setSearch("");
    setStatusFilter("all");
  };

  return (
    <PageLayout>
      <div className="flex flex-col gap-4">
        <PlaysHeader totalCount={plays?.length || 0} />

        <PlaysFilters
          search={search}
          statusFilter={statusFilter}
          sortBy={sortBy}
          statusCounts={statusCounts}
          onSearchChange={setSearch}
          onStatusFilterChange={setStatusFilter}
          onSortByChange={setSortBy}
        />

        <ResultsInfo
          count={sortedPlays.length}
          hasFilters={hasFilters}
          onClearFilters={handleClearFilters}
        />

        {sortedPlays.length > 0 ? (
          <PlaysList plays={sortedPlays} />
        ) : (
          <PlaysEmpty
            hasFilters={hasFilters}
            onClearFilters={handleClearFilters}
          />
        )}
      </div>
    </PageLayout>
  );
}
