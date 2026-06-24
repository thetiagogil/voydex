"use client";

import { useMemo, useState } from "react";
import type { CollectibleGroup } from "@/modules/mainline/features/play/components/detail/collectibles/collectible-groups";
import {
  collectibleSortItems,
  collectibleStatusFilters,
  getEntryLocation,
  getSortableEntryNumber,
  isCollectibleStatusFilter,
  type CollectibleStatusFilter,
} from "@/modules/mainline/features/play/components/detail/collectibles/collectible-groups";
import { CollectibleEntryTable } from "@/modules/mainline/features/play/components/detail/collectibles/collectible-entry-table";
import { CollectibleLocationSummary } from "@/modules/mainline/features/play/components/detail/collectibles/collectible-location-summary";
import { formatNumber } from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { StatusBadge } from "@/shared/components/status-badge";
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
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type CollectibleDetailProps = {
  group: CollectibleGroup;
  playId: string;
};

export const CollectibleDetail = ({
  group,
  playId,
}: CollectibleDetailProps) => {
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
                <AppIcon
                  icon={appIcons.product.collectible}
                  className="text-primary size-6"
                />
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
            <SelectControl
              ariaLabel="Sort collectibles"
              value={sort}
              onValueChange={setSort}
              options={collectibleSortItems}
              placeholder="Sort collectibles"
            />
          </div>
        </CardHeader>

        <CardContent>
          <div className="grid gap-3 xl:grid-cols-[minmax(12rem,1fr)_auto] xl:items-center">
            <InputGroup>
              <InputGroupAddon>
                <AppIcon icon={appIcons.actions.search} className="size-4" />
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
              <AppIcon icon={appIcons.actions.search} />
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
};
