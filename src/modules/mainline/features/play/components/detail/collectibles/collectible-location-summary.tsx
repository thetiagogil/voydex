"use client";

import { useMemo } from "react";
import type { MainlinePlayCollectibleDetail } from "@/modules/mainline/shared/types/mainline.types";
import { getEntryLocation } from "@/modules/mainline/features/play/components/detail/collectibles/collectible-groups";
import { formatNumber } from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type CollectibleLocationSummaryProps = {
  entries: MainlinePlayCollectibleDetail[];
};

export const CollectibleLocationSummary = ({
  entries,
}: CollectibleLocationSummaryProps) => {
  const locationSummaries = useMemo(() => {
    const summaries = new Map<
      string,
      {
        collected: number;
        total: number;
      }
    >();

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
          <AppIcon
            icon={appIcons.product.location}
            className="text-primary size-4"
          />
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
};
