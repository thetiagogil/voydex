"use client";

import { useMemo, useState } from "react";
import { Grid2X2, List, Search } from "lucide-react";

import type {
  MainlinePlayDetailData,
  MainlinePlayPokedexEntry,
} from "@/modules/mainline/features/play/types";
import {
  formatDexNumber,
  formatNumber,
  formatPercent,
  getPokedexDisplayName,
  getPokemonPrimaryTypeSlug,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { PokedexProgressButtons } from "@/modules/mainline/features/play/components/detail/mainline-play-actions";
import { PokemonTypeBadges } from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import { ProgressMeter } from "@/shared/components/app/progress-meter";
import { StatusBadge } from "@/shared/components/app/status-badge";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
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
import {
  NativeSelect,
  NativeSelectOption,
} from "@/shared/components/ui/native-select";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";
import {
  ToggleGroup,
  ToggleGroupItem,
} from "@/shared/components/ui/toggle-group";

type MainlinePlayPokedexPageProps = {
  data: MainlinePlayDetailData;
};

type PokedexFilter =
  | "all"
  | "caught"
  | "missing"
  | "optional"
  | "required"
  | "seen";

type PokedexViewMode = "grid" | "list";
type PokedexSort = (typeof pokedexSortItems)[number]["value"];

const filters: Array<{ label: string; value: PokedexFilter }> = [
  { label: "All", value: "all" },
  { label: "Missing", value: "missing" },
  { label: "Seen", value: "seen" },
  { label: "Caught", value: "caught" },
  { label: "Required", value: "required" },
  { label: "Optional", value: "optional" },
];

const pokedexSortItems = [
  { label: "Dex number", value: "dex-number" },
  { label: "Name", value: "name" },
] as const;

function isRequiredEntry(entry: MainlinePlayPokedexEntry) {
  return Boolean(entry.is_source_required_for_completion);
}

function isPokedexFilter(value: string): value is PokedexFilter {
  return filters.some((filter) => filter.value === value);
}

function filterPokedexEntries(
  entries: MainlinePlayPokedexEntry[],
  filter: PokedexFilter,
  search: string,
) {
  const normalizedSearch = search.trim().toLowerCase();

  return entries.filter((entry) => {
    const name = getPokedexDisplayName(entry).toLowerCase();
    const dexNumber = String(entry.pokedex_number ?? "");
    const nationalNumber = String(entry.national_number ?? "");
    const matchesSearch =
      !normalizedSearch ||
      name.includes(normalizedSearch) ||
      dexNumber.includes(normalizedSearch) ||
      nationalNumber.includes(normalizedSearch);

    if (!matchesSearch) {
      return false;
    }

    if (filter === "caught") {
      return Boolean(entry.is_caught);
    }

    if (filter === "missing") {
      return !entry.is_caught;
    }

    if (filter === "seen") {
      return Boolean(entry.is_seen) && !entry.is_caught;
    }

    if (filter === "required") {
      return isRequiredEntry(entry);
    }

    if (filter === "optional") {
      return !isRequiredEntry(entry);
    }

    return true;
  });
}

function getSortableDexNumber(entry: MainlinePlayPokedexEntry) {
  return (
    entry.pokedex_number ?? entry.national_number ?? Number.MAX_SAFE_INTEGER
  );
}

function sortPokedexEntries(
  entries: MainlinePlayPokedexEntry[],
  sort: PokedexSort,
) {
  return [...entries].sort((a, b) => {
    if (sort === "name") {
      return getPokedexDisplayName(a).localeCompare(getPokedexDisplayName(b));
    }

    return getSortableDexNumber(a) - getSortableDexNumber(b);
  });
}

function PokedexSummary({ data }: MainlinePlayPokedexPageProps) {
  const pokedexName = data.pokedexEntries[0]?.pokedex_name ?? "Pokedex";
  const caughtCount = data.overview.pokedex_caught_count ?? 0;
  const seenCount = data.overview.pokedex_seen_count ?? 0;
  const totalCount = data.pokedexEntries.length;
  const completionPercent = data.overview.pokedex_completion_percent ?? 0;
  const optionalStatus = data.overview
    .include_optional_pokedex_entries_in_completion
    ? "Optional entries included"
    : "Optional entries excluded";

  return (
    <Card>
      <CardContent className="grid gap-4 lg:grid-cols-[16rem_1fr_auto] lg:items-center">
        <div className="rounded-lg border p-3">
          <p className="text-muted-foreground text-sm">Active Pokedex</p>
          <p className="mt-1 font-medium">{pokedexName}</p>
        </div>

        <div className="grid gap-4 sm:grid-cols-3">
          <div>
            <p className="text-muted-foreground text-sm">Caught</p>
            <p className="text-2xl font-semibold">
              {formatNumber(caughtCount)}{" "}
              <span className="text-muted-foreground text-lg">
                / {formatNumber(totalCount)}
              </span>
            </p>
          </div>
          <div>
            <p className="text-muted-foreground text-sm">Seen</p>
            <p className="text-2xl font-semibold">{formatNumber(seenCount)}</p>
          </div>
          <div>
            <p className="text-muted-foreground text-sm">Completion</p>
            <div className="mt-1 flex items-center gap-3">
              <span className="text-2xl font-semibold">
                {formatPercent(completionPercent)}
              </span>
              <ProgressMeter value={completionPercent} />
            </div>
          </div>
        </div>

        <div className="flex flex-wrap gap-2 lg:justify-end">
          <StatusBadge tone="info">{optionalStatus}</StatusBadge>
          <StatusBadge tone="success">Species-level</StatusBadge>
        </div>
      </CardContent>
    </Card>
  );
}

function PokedexCard({
  entry,
  playId,
}: {
  entry: MainlinePlayPokedexEntry;
  playId: string;
}) {
  return (
    <Card size="sm" className="min-h-full">
      <CardContent className="flex min-h-full flex-col gap-3">
        <div className="flex items-start justify-between gap-2">
          <span className="text-muted-foreground text-sm font-medium">
            {formatDexNumber(entry.pokedex_number)}
          </span>
          <StatusBadge tone={isRequiredEntry(entry) ? "warning" : "info"}>
            {isRequiredEntry(entry) ? "Required" : "Optional"}
          </StatusBadge>
        </div>

        <PokemonPortrait
          alt={getPokedexDisplayName(entry)}
          imageUrl={entry.display.imageUrl}
          type={getPokemonPrimaryTypeSlug(entry)}
          className="mx-auto w-full max-w-36"
        />

        <div className="text-center">
          <p className="font-medium">{getPokedexDisplayName(entry)}</p>
          <div className="mt-2">
            <PokemonTypeBadges pokemon={entry} />
          </div>
        </div>

        <div className="mt-auto">
          <PokedexProgressButtons
            isCaught={entry.is_caught}
            isSeen={entry.is_seen}
            playId={playId}
            speciesId={entry.species_id}
          />
        </div>
      </CardContent>
    </Card>
  );
}

function PokedexGrid({
  entries,
  playId,
}: {
  entries: MainlinePlayPokedexEntry[];
  playId: string;
}) {
  return (
    <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-4 2xl:grid-cols-5">
      {entries.map((entry) => (
        <PokedexCard
          key={`${entry.pokedex_id}-${entry.species_id}`}
          entry={entry}
          playId={playId}
        />
      ))}
    </div>
  );
}

function PokedexList({
  entries,
  playId,
}: {
  entries: MainlinePlayPokedexEntry[];
  playId: string;
}) {
  return (
    <Table>
      <TableHeader>
        <TableRow>
          <TableHead>Number</TableHead>
          <TableHead>Pokemon</TableHead>
          <TableHead>Types</TableHead>
          <TableHead>Completion</TableHead>
          <TableHead className="text-right">Progress</TableHead>
        </TableRow>
      </TableHeader>
      <TableBody>
        {entries.map((entry) => (
          <TableRow key={`${entry.pokedex_id}-${entry.species_id}`}>
            <TableCell>{formatDexNumber(entry.pokedex_number)}</TableCell>
            <TableCell>
              <div className="flex items-center gap-3">
                <PokemonPortrait
                  alt={getPokedexDisplayName(entry)}
                  imageUrl={entry.display.imageUrl}
                  type={getPokemonPrimaryTypeSlug(entry)}
                  className="size-12 rounded-lg"
                />
                <span className="font-medium">
                  {getPokedexDisplayName(entry)}
                </span>
              </div>
            </TableCell>
            <TableCell>
              <PokemonTypeBadges pokemon={entry} />
            </TableCell>
            <TableCell>
              <StatusBadge tone={isRequiredEntry(entry) ? "warning" : "info"}>
                {isRequiredEntry(entry) ? "Required" : "Optional"}
              </StatusBadge>
            </TableCell>
            <TableCell className="min-w-40">
              <PokedexProgressButtons
                isCaught={entry.is_caught}
                isSeen={entry.is_seen}
                playId={playId}
                speciesId={entry.species_id}
              />
            </TableCell>
          </TableRow>
        ))}
      </TableBody>
    </Table>
  );
}

export function MainlinePlayPokedexPage({
  data,
}: MainlinePlayPokedexPageProps) {
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
                  {filters.map((item) => (
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
                  <NativeSelect
                    aria-label="Sort Pokedex entries"
                    value={sort}
                    onChange={(event) =>
                      setSort(event.target.value as PokedexSort)
                    }
                  >
                    {pokedexSortItems.map((item) => (
                      <NativeSelectOption key={item.value} value={item.value}>
                        {item.label}
                      </NativeSelectOption>
                    ))}
                  </NativeSelect>
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
}
