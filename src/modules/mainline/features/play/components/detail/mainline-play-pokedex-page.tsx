"use client";

import { useMemo, useState } from "react";
import { Grid2X2, List, Search } from "lucide-react";

import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  filterPokedexEntries,
  isPokedexFilter,
  pokedexFilters,
  pokedexSortItems,
  sortPokedexEntries,
  type PokedexFilter,
  type PokedexSort,
  type PokedexViewMode,
} from "@/modules/mainline/features/play/components/detail/pokedex/pokedex-filters";
import { PokedexGrid } from "@/modules/mainline/features/play/components/detail/pokedex/pokedex-grid";
import { PokedexList } from "@/modules/mainline/features/play/components/detail/pokedex/pokedex-list";
import { PokedexSummary } from "@/modules/mainline/features/play/components/detail/pokedex/pokedex-summary";
import { formatNumber } from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/shared/components/ui/empty";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import { SelectControl } from "@/shared/components/select-control";
import {
  ToggleGroup,
  ToggleGroupItem,
} from "@/shared/components/ui/toggle-group";

type MainlinePlayPokedexPageProps = {
  data: MainlinePlayDetailData;
};

export const MainlinePlayPokedexPage = ({
  data,
}: MainlinePlayPokedexPageProps) => {
  const [filter, setFilter] = useState<PokedexFilter>("all");
  const [search, setSearch] = useState("");
  const [sort, setSort] = useState<PokedexSort>("dex-number");
  const [viewMode, setViewMode] = useState<PokedexViewMode>("grid");

  const playId = String(data.overview.play_id);
  const visibleEntries = useMemo(
    () =>
      sortPokedexEntries(
        filterPokedexEntries(data.pokedexEntries, filter, search),
        sort,
      ),
    [data.pokedexEntries, filter, search, sort],
  );

  return (
    <MainlinePlayShell
      activeProgressTab="pokedex"
      activeTab="progress"
      data={data}
    >
      <div className="flex flex-col gap-5">
        <div className="flex flex-col gap-3 lg:flex-row lg:items-start lg:justify-between">
          <div>
            <h2 className="flex items-center gap-2 text-2xl font-semibold tracking-normal">
              <List className="text-primary size-6" />
              Pokedex Progress
            </h2>
            <p className="text-muted-foreground text-sm">
              Mark seen and caught species for this play.
            </p>
          </div>
        </div>

        <PokedexSummary data={data} />

        <section className="flex flex-col gap-4">
          <Card size="sm">
            <CardHeader>
              <CardTitle>Entries</CardTitle>
              <CardDescription>
                {formatNumber(visibleEntries.length)} visible of{" "}
                {formatNumber(data.pokedexEntries.length)} seeded entries.
              </CardDescription>
            </CardHeader>
            <CardContent>
              <div className="grid gap-3 xl:grid-cols-[minmax(16rem,1fr)_auto_auto] xl:items-center">
                <InputGroup>
                  <InputGroupAddon>
                    <Search className="size-4" />
                  </InputGroupAddon>
                  <InputGroupInput
                    value={search}
                    onChange={(event) => setSearch(event.target.value)}
                    placeholder="Search by name or number"
                  />
                </InputGroup>

                <ToggleGroup
                  value={[filter]}
                  onValueChange={(value) => {
                    const nextFilter = value[0];

                    if (nextFilter && isPokedexFilter(nextFilter)) {
                      setFilter(nextFilter);
                    }
                  }}
                  spacing={0}
                  variant="outline"
                  className="flex-wrap"
                >
                  {pokedexFilters.map((item) => (
                    <ToggleGroupItem
                      key={item.value}
                      value={item.value}
                      aria-label={`Show ${item.label.toLowerCase()} Pokedex entries`}
                    >
                      {item.label}
                    </ToggleGroupItem>
                  ))}
                </ToggleGroup>

                <div className="flex flex-wrap gap-2 xl:justify-end">
                  <SelectControl
                    ariaLabel="Sort Pokedex entries"
                    value={sort}
                    onValueChange={(nextSort) =>
                      setSort(nextSort as PokedexSort)
                    }
                    options={pokedexSortItems}
                    placeholder="Sort entries"
                  />
                  <ToggleGroup
                    value={[viewMode]}
                    onValueChange={(value) => {
                      const nextViewMode = value[0];

                      if (nextViewMode === "grid" || nextViewMode === "list") {
                        setViewMode(nextViewMode);
                      }
                    }}
                    spacing={0}
                    variant="outline"
                  >
                    <ToggleGroupItem value="grid" aria-label="Show grid">
                      <Grid2X2 data-icon="inline-start" />
                      Grid
                    </ToggleGroupItem>
                    <ToggleGroupItem value="list" aria-label="Show list">
                      <List data-icon="inline-start" />
                      List
                    </ToggleGroupItem>
                  </ToggleGroup>
                </div>
              </div>
            </CardContent>
          </Card>

          {visibleEntries.length ? (
            viewMode === "grid" ? (
              <PokedexGrid entries={visibleEntries} playId={playId} />
            ) : (
              <Card>
                <CardContent>
                  <PokedexList entries={visibleEntries} playId={playId} />
                </CardContent>
              </Card>
            )
          ) : (
            <Empty className="min-h-48 border">
              <EmptyHeader>
                <EmptyMedia variant="icon">
                  <Search />
                </EmptyMedia>
                <EmptyTitle>No entries found</EmptyTitle>
                <EmptyDescription>
                  No Pokedex entries match the current search and filters.
                </EmptyDescription>
              </EmptyHeader>
            </Empty>
          )}

          <p className="text-muted-foreground text-sm">
            Caught automatically marks seen.
          </p>
        </section>
      </div>
    </MainlinePlayShell>
  );
};
