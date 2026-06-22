"use client";

import { useMemo, useState } from "react";
import {
  CheckCircle2,
  Grid2X2,
  List,
  Search,
  Settings,
  UsersRound,
  X,
} from "lucide-react";

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
import {
  PokemonStatusControls,
  PokemonTypeBadges,
} from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import { ProgressMeter } from "@/shared/components/app/progress-meter";
import { StatusBadge } from "@/shared/components/app/status-badge";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Checkbox } from "@/shared/components/ui/checkbox";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/shared/components/ui/select";
import { Separator } from "@/shared/components/ui/separator";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetFooter,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";
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

function PokedexSummary({ data }: MainlinePlayPokedexPageProps) {
  const pokedexName = data.pokedexEntries[0]?.pokedex_name ?? "Pokedex";
  const pokedexItems = [{ label: pokedexName, value: pokedexName }];
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
        <Select items={pokedexItems} defaultValue={pokedexName}>
          <SelectTrigger className="w-full">
            <SelectValue />
          </SelectTrigger>
          <SelectContent>
            <SelectGroup>
              <SelectItem value={pokedexName}>{pokedexName}</SelectItem>
            </SelectGroup>
          </SelectContent>
        </Select>

        <div className="grid gap-4 sm:grid-cols-3">
          <div>
            <p className="text-muted-foreground text-xs font-medium uppercase">
              Caught
            </p>
            <p className="text-2xl font-semibold">
              {formatNumber(caughtCount)}{" "}
              <span className="text-muted-foreground text-lg">
                / {formatNumber(totalCount)}
              </span>
            </p>
          </div>
          <div>
            <p className="text-muted-foreground text-xs font-medium uppercase">
              Seen
            </p>
            <p className="text-2xl font-semibold">{formatNumber(seenCount)}</p>
          </div>
          <div>
            <p className="text-muted-foreground text-xs font-medium uppercase">
              Completion
            </p>
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

function PokedexCard({ entry }: { entry: MainlinePlayPokedexEntry }) {
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
          <PokemonStatusControls
            isCaught={entry.is_caught}
            isSeen={entry.is_seen}
          />
        </div>
      </CardContent>
    </Card>
  );
}

function PokedexGrid({ entries }: { entries: MainlinePlayPokedexEntry[] }) {
  return (
    <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-4 2xl:grid-cols-5">
      {entries.map((entry) => (
        <PokedexCard
          key={`${entry.pokedex_id}-${entry.species_id}`}
          entry={entry}
        />
      ))}
    </div>
  );
}

function PokedexList({ entries }: { entries: MainlinePlayPokedexEntry[] }) {
  return (
    <Card>
      <CardContent>
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
                  <StatusBadge
                    tone={isRequiredEntry(entry) ? "warning" : "info"}
                  >
                    {isRequiredEntry(entry) ? "Required" : "Optional"}
                  </StatusBadge>
                </TableCell>
                <TableCell className="min-w-40">
                  <PokemonStatusControls
                    isCaught={entry.is_caught}
                    isSeen={entry.is_seen}
                  />
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </CardContent>
    </Card>
  );
}

function MarkMultipleSheet({
  entries,
}: {
  entries: MainlinePlayPokedexEntry[];
}) {
  const selectedEntries = entries
    .filter((entry) => isRequiredEntry(entry) && !entry.is_caught)
    .slice(0, 4);

  return (
    <Sheet>
      <SheetTrigger render={<Button />}>
        <UsersRound data-icon="inline-start" />
        Mark multiple
      </SheetTrigger>
      <SheetContent className="w-full sm:max-w-xl">
        <SheetHeader>
          <SheetTitle>Mark multiple</SheetTitle>
          <SheetDescription>
            Update seen or caught status for several species at once.
          </SheetDescription>
        </SheetHeader>

        <div className="flex min-h-0 flex-1 flex-col gap-5 overflow-y-auto px-4">
          <section className="flex flex-col gap-3">
            <h3 className="font-medium">1. Select operation</h3>
            <div className="grid grid-cols-3 gap-2">
              <Button variant="outline" className="h-20 flex-col" disabled>
                <Search className="size-5" />
                Mark as seen
              </Button>
              <Button variant="outline" className="h-20 flex-col" disabled>
                <CheckCircle2 className="size-5" />
                Mark as caught
              </Button>
              <Button variant="outline" className="h-20 flex-col" disabled>
                <X className="size-5" />
                Clear progress
              </Button>
            </div>
            <p className="text-muted-foreground text-sm">
              Caught automatically marks seen.
            </p>
          </section>

          <Separator />

          <section className="flex flex-col gap-3">
            <h3 className="font-medium">2. Choose species</h3>
            <InputGroup>
              <InputGroupAddon>
                <Search className="size-4" />
              </InputGroupAddon>
              <InputGroupInput placeholder="Search by name or number" />
            </InputGroup>
            <div className="flex flex-col gap-2">
              {selectedEntries.map((entry) => (
                <label
                  key={`${entry.pokedex_id}-${entry.species_id}`}
                  className="grid grid-cols-[auto_minmax(0,1fr)_auto] items-center gap-3 rounded-lg border p-3"
                >
                  <Checkbox defaultChecked />
                  <div className="flex min-w-0 items-center gap-3">
                    <PokemonPortrait
                      alt={getPokedexDisplayName(entry)}
                      imageUrl={entry.display.imageUrl}
                      type={getPokemonPrimaryTypeSlug(entry)}
                      className="size-10 rounded-lg"
                    />
                    <div className="min-w-0">
                      <p className="truncate font-medium">
                        {getPokedexDisplayName(entry)}
                      </p>
                      <p className="text-muted-foreground text-xs">
                        {formatDexNumber(entry.pokedex_number)}
                      </p>
                    </div>
                  </div>
                  <StatusBadge tone="warning">Required</StatusBadge>
                </label>
              ))}
            </div>
          </section>

          <Separator />

          <section className="flex flex-col gap-3">
            <h3 className="font-medium">3. Preview changes</h3>
            <div className="rounded-lg border p-3 text-sm">
              {formatNumber(selectedEntries.length)} species will be marked
              caught.
            </div>
          </section>
        </div>

        <SheetFooter className="border-t">
          <Button variant="outline">Cancel</Button>
          <Button disabled>
            Mark {formatNumber(selectedEntries.length)} caught
          </Button>
        </SheetFooter>
      </SheetContent>
    </Sheet>
  );
}

export function MainlinePlayPokedexPage({
  data,
}: MainlinePlayPokedexPageProps) {
  const [filter, setFilter] = useState<PokedexFilter>("all");
  const [search, setSearch] = useState("");
  const [viewMode, setViewMode] = useState<PokedexViewMode>("grid");

  const visibleEntries = useMemo(
    () => filterPokedexEntries(data.pokedexEntries, filter, search),
    [data.pokedexEntries, filter, search],
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
            <h2 className="cn-font-heading flex items-center gap-2 text-2xl font-semibold">
              <List className="text-primary size-6" />
              Pokedex Progress
            </h2>
            <p className="text-muted-foreground text-sm">
              Mark seen and caught species for this play.
            </p>
          </div>
          <div className="flex flex-wrap gap-2">
            <MarkMultipleSheet entries={data.pokedexEntries} />
            <Button variant="outline" disabled>
              <Settings data-icon="inline-start" />
              Settings
            </Button>
          </div>
        </div>

        <PokedexSummary data={data} />

        <Card>
          <CardHeader>
            <CardTitle>Entries</CardTitle>
            <CardDescription>
              {formatNumber(visibleEntries.length)} visible of{" "}
              {formatNumber(data.pokedexEntries.length)} seeded entries.
            </CardDescription>
          </CardHeader>
          <CardContent className="flex flex-col gap-4">
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

              <div className="flex flex-wrap gap-2">
                {filters.map((item) => (
                  <Button
                    key={item.value}
                    type="button"
                    size="sm"
                    variant={filter === item.value ? "default" : "outline"}
                    onClick={() => setFilter(item.value)}
                  >
                    {item.label}
                  </Button>
                ))}
              </div>

              <div className="flex flex-wrap gap-2 xl:justify-end">
                <Select items={pokedexSortItems} defaultValue="dex-number">
                  <SelectTrigger>
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectGroup>
                      <SelectItem value="dex-number">Dex number</SelectItem>
                      <SelectItem value="name">Name</SelectItem>
                    </SelectGroup>
                  </SelectContent>
                </Select>
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

            {visibleEntries.length ? (
              viewMode === "grid" ? (
                <PokedexGrid entries={visibleEntries} />
              ) : (
                <PokedexList entries={visibleEntries} />
              )
            ) : (
              <div className="text-muted-foreground rounded-lg border border-dashed p-8 text-center">
                No Pokedex entries match the current filters.
              </div>
            )}

            <p className="text-muted-foreground text-sm">
              Caught automatically marks seen.
            </p>
          </CardContent>
        </Card>
      </div>
    </MainlinePlayShell>
  );
}
