"use client";

import { useMemo, useState } from "react";
import { CheckCircle2, Eye, Filter, Gem, MapPin, Search } from "lucide-react";

import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import type { MainlinePlayCollectibleDetail } from "@/modules/mainline/shared/types/mainline.types";
import {
  formatNumber,
  groupCollectiblesByCollectible,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { EmptyPanel } from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import { ProgressMeter } from "@/shared/components/app/progress-meter";
import { StatusBadge } from "@/shared/components/app/status-badge";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
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
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";
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
  { label: "Sort: Number", value: "number" },
  { label: "Sort: Location", value: "location" },
] as const;

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

function getEntryLocation(entry: MainlinePlayCollectibleDetail) {
  return entry.sub_location_label ?? entry.location_label ?? "-";
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
}: {
  entries: MainlinePlayCollectibleDetail[];
}) {
  return (
    <Table>
      <TableHeader>
        <TableRow>
          <TableHead>
            <span className="sr-only">Collected</span>
          </TableHead>
          <TableHead>#</TableHead>
          <TableHead>Entry</TableHead>
          <TableHead>Location</TableHead>
          <TableHead>Hint</TableHead>
          <TableHead>Included</TableHead>
        </TableRow>
      </TableHeader>
      <TableBody>
        {entries.map((entry) => (
          <TableRow key={entry.collectible_entry_id}>
            <TableCell>
              {entry.is_collected ? (
                <CheckCircle2 className="text-primary size-5" />
              ) : (
                <span className="border-muted-foreground/50 block size-5 rounded-full border" />
              )}
            </TableCell>
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
          </TableRow>
        ))}
      </TableBody>
    </Table>
  );
}

function CollectibleDetail({ group }: { group: CollectibleGroup }) {
  const missingCount = group.totalCount - group.collectedCount;

  return (
    <Card className="min-h-full">
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
          <Select items={collectibleSortItems} defaultValue="number">
            <SelectTrigger>
              <SelectValue />
            </SelectTrigger>
            <SelectContent>
              <SelectGroup>
                <SelectItem value="number">Sort: Number</SelectItem>
                <SelectItem value="location">Sort: Location</SelectItem>
              </SelectGroup>
            </SelectContent>
          </Select>
        </div>
      </CardHeader>

      <CardContent className="flex flex-col gap-4">
        <div className="grid gap-3 xl:grid-cols-[minmax(12rem,1fr)_auto_auto] xl:items-center">
          <InputGroup>
            <InputGroupAddon>
              <Search className="size-4" />
            </InputGroupAddon>
            <InputGroupInput placeholder="Search collectibles" />
          </InputGroup>
          <div className="grid grid-cols-3 overflow-hidden rounded-lg border">
            <Button variant="ghost" className="rounded-none">
              All
            </Button>
            <Button variant="ghost" className="rounded-none border-l">
              Missing
            </Button>
            <Button variant="ghost" className="rounded-none border-l">
              Collected
            </Button>
          </div>
          <Button variant="outline" disabled>
            <Filter data-icon="inline-start" />
            Filter
          </Button>
        </div>

        <CollectibleEntryTable entries={group.entries} />

        <div className="grid gap-4 xl:grid-cols-[minmax(0,1fr)_22rem]">
          <CollectibleLocationSummary entries={group.entries} />
          <Card size="sm">
            <CardHeader>
              <CardTitle>Completion</CardTitle>
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
      </CardContent>
    </Card>
  );
}

export function MainlinePlayCollectiblesPage({
  data,
}: MainlinePlayCollectiblesPageProps) {
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
              <h2 className="cn-font-heading text-2xl font-semibold">
                Collectibles
              </h2>
              <p className="text-muted-foreground text-sm">
                {formatNumber(totalCollected)} / {formatNumber(totalEntries)}{" "}
                collected across {formatNumber(groups.length)} groups.
              </p>
            </div>
          </div>
          <div className="flex flex-wrap gap-2">
            <Button variant="outline" disabled>
              <Search data-icon="inline-start" />
              Search
            </Button>
            <Button disabled>
              <Eye data-icon="inline-start" />
              Mark visible collected
            </Button>
          </div>
        </div>

        {selectedGroup ? (
          <div className="grid gap-4 xl:grid-cols-[20rem_minmax(0,1fr)]">
            <CollectibleGroupList
              groups={groups}
              selectedGroupId={selectedGroup.id}
              onSelectGroup={setSelectedGroupId}
            />
            <CollectibleDetail group={selectedGroup} />
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
