"use client";

import { useMemo, useState } from "react";
import { Gem, MapPin, Search } from "lucide-react";

import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import type { MainlinePlayCollectibleDetail } from "@/modules/mainline/shared/types/mainline.types";
import {
  formatNumber,
  groupCollectiblesByCollectible,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { EmptyPanel } from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { CollectibleProgressButton } from "@/modules/mainline/features/play/components/detail/mainline-play-actions";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import { ProgressMeter } from "@/shared/components/app/progress-meter";
import { StatusBadge } from "@/shared/components/app/status-badge";
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
import { cn } from "@/lib/utils";

type MainlinePlayCollectiblesPageProps = {
  data: MainlinePlayDetailData;
};

type CollectibleGroup = {
  collectedCount: number;
  entries: MainlinePlayCollectibleDetail[];
  id: number;
  includedCount: number;
  name: string;
  totalCount: number;
  typeName: string;
};

const collectibleSortItems = [
  { label: "Number", value: "number" },
  { label: "Location", value: "location" },
] as const;

const collectibleStatusFilters = [
  { label: "All", value: "all" },
  { label: "Missing", value: "missing" },
  { label: "Collected", value: "collected" },
] as const;

type CollectibleStatusFilter =
  (typeof collectibleStatusFilters)[number]["value"];

function buildCollectibleGroups(
  entries: MainlinePlayCollectibleDetail[],
): CollectibleGroup[] {
  return groupCollectiblesByCollectible(entries).map((group) => {
    const firstEntry = group[0];

    return {
      collectedCount: group.filter((entry) => entry.is_collected).length,
      entries: group,
      id: firstEntry?.collectible_id ?? 0,
      includedCount: group.filter((entry) => entry.is_included_in_completion)
        .length,
      name: firstEntry?.collectible_name ?? "Collectible",
      totalCount: group.length,
      typeName: firstEntry?.collectible_type_name ?? "Collectible",
    };
  });
}

function getGroupPercent(group: CollectibleGroup) {
  if (!group.totalCount) {
    return 0;
  }

  return Math.round((group.collectedCount / group.totalCount) * 100);
}

function getEntryNumber(entry: MainlinePlayCollectibleDetail) {
  return (
    entry.collectible_entry_sort_order ?? entry.collectible_entry_id ?? "-"
  );
}

function getSortableEntryNumber(entry: MainlinePlayCollectibleDetail) {
  return (
    entry.collectible_entry_sort_order ??
    entry.collectible_entry_id ??
    Number.MAX_SAFE_INTEGER
  );
}

function getEntryLocation(entry: MainlinePlayCollectibleDetail) {
  return entry.sub_location_label ?? entry.location_label ?? "-";
}

function isCollectibleStatusFilter(
  value: string,
): value is CollectibleStatusFilter {
  return collectibleStatusFilters.some((filter) => filter.value === value);
}

function CollectibleGroupList({
  groups,
  selectedGroupId,
  onSelectGroup,
}: {
  groups: CollectibleGroup[];
  onSelectGroup: (groupId: number) => void;
  selectedGroupId: number;
}) {
  const totalCollected = groups.reduce(
    (total, group) => total + group.collectedCount,
    0,
  );
  const totalEntries = groups.reduce(
    (total, group) => total + group.totalCount,
    0,
  );

  return (
    <Card className="min-h-full">
      <CardHeader>
        <CardTitle>Groups</CardTitle>
        <CardDescription>
          {formatNumber(totalCollected)} / {formatNumber(totalEntries)}{" "}
          collected
        </CardDescription>
      </CardHeader>
      <CardContent className="flex max-h-[34rem] flex-col gap-2 overflow-y-auto">
        {groups.map((group) => {
          const isSelected = group.id === selectedGroupId;

          return (
            <button
              key={group.id}
              type="button"
              onClick={() => onSelectGroup(group.id)}
              className={cn(
                "hover:bg-muted/60 flex flex-col gap-3 rounded-lg border p-3 text-left transition-colors",
                isSelected && "border-primary bg-primary/5",
              )}
            >
              <div className="flex items-start justify-between gap-3">
                <div className="flex min-w-0 items-center gap-3">
                  <div className="bg-primary/10 text-primary flex size-10 shrink-0 items-center justify-center rounded-lg">
                    <Gem className="size-5" />
                  </div>
                  <div className="min-w-0">
                    <p className="truncate font-medium">{group.name}</p>
                    <p className="text-muted-foreground text-xs">
                      {group.typeName}
                    </p>
                  </div>
                </div>
                <span className="text-sm">
                  {formatNumber(group.collectedCount)} /{" "}
                  {formatNumber(group.totalCount)}
                </span>
              </div>
              <ProgressMeter value={getGroupPercent(group)} />
            </button>
          );
        })}
      </CardContent>
    </Card>
  );
}

function CollectibleLocationSummary({
  entries,
}: {
  entries: MainlinePlayCollectibleDetail[];
}) {
  const locationSummaries = useMemo(() => {
    const summaries = new Map<string, { collected: number; total: number }>();

    for (const entry of entries) {
      const location = getEntryLocation(entry);
      const current = summaries.get(location) ?? { collected: 0, total: 0 };
      current.total += 1;

      if (entry.is_collected) {
        current.collected += 1;
      }

      summaries.set(location, current);
    }

    return Array.from(summaries.entries()).slice(0, 6);
  }, [entries]);

  if (!locationSummaries.length) {
    return null;
  }

  return (
    <Card size="sm">
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <MapPin className="text-primary size-4" />
          By location
        </CardTitle>
      </CardHeader>
      <CardContent className="grid gap-2 sm:grid-cols-2 xl:grid-cols-3">
        {locationSummaries.map(([location, summary]) => (
          <div key={location} className="rounded-lg border p-3">
            <p className="truncate text-sm font-medium">{location}</p>
            <p className="text-success mt-1 text-lg font-semibold">
              {formatNumber(summary.collected)} / {formatNumber(summary.total)}
            </p>
          </div>
        ))}
      </CardContent>
    </Card>
  );
}

function CollectibleEntryTable({
  entries,
  playId,
}: {
  entries: MainlinePlayCollectibleDetail[];
  playId: string;
}) {
  return (
    <Table>
      <TableHeader>
        <TableRow>
          <TableHead>#</TableHead>
          <TableHead>Entry</TableHead>
          <TableHead>Location</TableHead>
          <TableHead>Hint</TableHead>
          <TableHead>Completion</TableHead>
          <TableHead className="text-right">Progress</TableHead>
        </TableRow>
      </TableHeader>
      <TableBody>
        {entries.map((entry) => (
          <TableRow key={entry.collectible_entry_id}>
            <TableCell>{getEntryNumber(entry)}</TableCell>
            <TableCell className="font-medium">
              {entry.collectible_entry_name ?? "Collectible entry"}
            </TableCell>
            <TableCell>
              <StatusBadge tone="info">{getEntryLocation(entry)}</StatusBadge>
            </TableCell>
            <TableCell className="text-muted-foreground max-w-72 whitespace-normal">
              {entry.description ?? "No hint available."}
            </TableCell>
            <TableCell>
              <StatusBadge
                tone={entry.is_included_in_completion ? "success" : "neutral"}
              >
                {entry.is_included_in_completion ? "Included" : "Excluded"}
              </StatusBadge>
            </TableCell>
            <TableCell className="min-w-40">
              <CollectibleProgressButton
                collectibleEntryId={entry.collectible_entry_id}
                isCollected={entry.is_collected}
                playId={playId}
              />
            </TableCell>
          </TableRow>
        ))}
      </TableBody>
    </Table>
  );
}

function CollectibleDetail({
  group,
  playId,
}: {
  group: CollectibleGroup;
  playId: string;
}) {
  const [search, setSearch] = useState("");
  const [statusFilter, setStatusFilter] =
    useState<CollectibleStatusFilter>("all");
  const [sort, setSort] = useState("number");
  const missingCount = group.totalCount - group.collectedCount;
  const visibleEntries = useMemo(() => {
    const normalizedSearch = search.trim().toLowerCase();

    return [...group.entries]
      .filter((entry) => {
        if (statusFilter === "collected" && !entry.is_collected) {
          return false;
        }

        if (statusFilter === "missing" && entry.is_collected) {
          return false;
        }

        if (!normalizedSearch) {
          return true;
        }

        return [
          entry.collectible_entry_name,
          entry.collectible_name,
          entry.description,
          entry.location_label,
          entry.sub_location_label,
        ]
          .filter(Boolean)
          .join(" ")
          .toLowerCase()
          .includes(normalizedSearch);
      })
      .sort((a, b) => {
        if (sort === "location") {
          return getEntryLocation(a).localeCompare(getEntryLocation(b));
        }

        return getSortableEntryNumber(a) - getSortableEntryNumber(b);
      });
  }, [group.entries, search, sort, statusFilter]);

  return (
    <section className="flex min-h-full flex-col gap-4">
      <Card size="sm">
        <CardHeader>
          <div className="flex flex-col gap-3 lg:flex-row lg:items-start lg:justify-between">
            <div>
              <CardTitle className="flex items-center gap-3 text-2xl">
                <Gem className="text-primary size-6" />
                {group.name}
              </CardTitle>
              <CardDescription>
                {formatNumber(group.collectedCount)} /{" "}
                {formatNumber(group.totalCount)} collected
                {missingCount ? (
                  <span className="text-destructive">
                    {" "}
                    | Missing {formatNumber(missingCount)}
                  </span>
                ) : null}
              </CardDescription>
            </div>
            <NativeSelect
              aria-label="Sort collectibles"
              value={sort}
              onChange={(event) => setSort(event.target.value)}
            >
              {collectibleSortItems.map((item) => (
                <NativeSelectOption key={item.value} value={item.value}>
                  {item.label}
                </NativeSelectOption>
              ))}
            </NativeSelect>
          </div>
        </CardHeader>

        <CardContent>
          <div className="grid gap-3 xl:grid-cols-[minmax(12rem,1fr)_auto] xl:items-center">
            <InputGroup>
              <InputGroupAddon>
                <Search className="size-4" />
              </InputGroupAddon>
              <InputGroupInput
                value={search}
                onChange={(event) => setSearch(event.target.value)}
                placeholder="Search collectibles"
              />
            </InputGroup>
            <ToggleGroup
              value={[statusFilter]}
              onValueChange={(value) => {
                const nextFilter = value[0];

                if (nextFilter && isCollectibleStatusFilter(nextFilter)) {
                  setStatusFilter(nextFilter);
                }
              }}
              spacing={0}
              variant="outline"
              className="flex-wrap"
            >
              {collectibleStatusFilters.map((item) => (
                <ToggleGroupItem
                  key={item.value}
                  value={item.value}
                  aria-label={`Show ${item.label.toLowerCase()} collectibles`}
                >
                  {item.label}
                </ToggleGroupItem>
              ))}
            </ToggleGroup>
          </div>
        </CardContent>
      </Card>

      {visibleEntries.length ? (
        <Card>
          <CardContent>
            <CollectibleEntryTable entries={visibleEntries} playId={playId} />
          </CardContent>
        </Card>
      ) : (
        <Empty className="min-h-48 border">
          <EmptyHeader>
            <EmptyMedia variant="icon">
              <Search />
            </EmptyMedia>
            <EmptyTitle>No entries found</EmptyTitle>
            <EmptyDescription>
              No collectible entries match the current search and filters.
            </EmptyDescription>
          </EmptyHeader>
        </Empty>
      )}

      <div className="grid gap-4 xl:grid-cols-[minmax(0,1fr)_22rem]">
        <CollectibleLocationSummary entries={group.entries} />
        <Card size="sm">
          <CardHeader>
            <CardTitle>Completion</CardTitle>
            <CardDescription>
              Rules for this collectible group in the play total.
            </CardDescription>
          </CardHeader>
          <CardContent className="flex flex-wrap gap-2">
            <StatusBadge tone="success">
              Included in play completion
            </StatusBadge>
            <StatusBadge tone="neutral">
              {formatNumber(group.includedCount)} included entries
            </StatusBadge>
          </CardContent>
        </Card>
      </div>
    </section>
  );
}

export function MainlinePlayCollectiblesPage({
  data,
}: MainlinePlayCollectiblesPageProps) {
  const playId = String(data.overview.play_id);
  const groups = useMemo(
    () => buildCollectibleGroups(data.collectibleEntries),
    [data.collectibleEntries],
  );
  const [selectedGroupId, setSelectedGroupId] = useState(groups[0]?.id ?? 0);
  const selectedGroup =
    groups.find((group) => group.id === selectedGroupId) ?? groups[0] ?? null;
  const totalCollected = groups.reduce(
    (total, group) => total + group.collectedCount,
    0,
  );
  const totalEntries = groups.reduce(
    (total, group) => total + group.totalCount,
    0,
  );

  return (
    <MainlinePlayShell
      activeProgressTab="collectibles"
      activeTab="progress"
      data={data}
    >
      <div className="flex flex-col gap-5">
        <div className="flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
          <div className="flex items-center gap-4">
            <div className="bg-primary/10 text-primary flex size-14 items-center justify-center rounded-xl">
              <Gem className="size-7" />
            </div>
            <div>
              <h2 className="text-2xl font-semibold tracking-normal">
                Collectibles
              </h2>
              <p className="text-muted-foreground text-sm">
                {formatNumber(totalCollected)} / {formatNumber(totalEntries)}{" "}
                collected across {formatNumber(groups.length)} groups.
              </p>
            </div>
          </div>
        </div>

        {selectedGroup ? (
          <div className="grid gap-4 xl:grid-cols-[20rem_minmax(0,1fr)]">
            <CollectibleGroupList
              groups={groups}
              selectedGroupId={selectedGroup.id}
              onSelectGroup={setSelectedGroupId}
            />
            <CollectibleDetail group={selectedGroup} playId={playId} />
          </div>
        ) : (
          <EmptyPanel
            title="No collectibles seeded for this play"
            description="Collectible groups will appear here when this game has tracked collectibles enabled."
          />
        )}
      </div>
    </MainlinePlayShell>
  );
}
