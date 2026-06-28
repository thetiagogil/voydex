"use client";

import { useMemo } from "react";
import { usePathname, useRouter, useSearchParams } from "next/navigation";
import { MainlinePlayCard } from "@/modules/mainline/features/play/browse/components/mainline-play-card";
import {
  defaultFilters,
  filterMainlinePlays,
  hasActiveFilters,
  parseFilters,
  uniqueOptions,
  type MainlinePlayFilters,
} from "@/modules/mainline/features/play/browse/utils/mainline-plays-browser-filters";
import { MainlinePlaysFilterToolbar } from "@/modules/mainline/features/play/browse/components/mainline-plays-filter-toolbar";
import type { MainlinePlayCardData } from "@/modules/mainline/features/play/types";
import { EmptyState } from "@/shared/components/empty-state";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type MainlinePlaysBrowserProps = {
  plays: MainlinePlayCardData[];
};

export const MainlinePlaysBrowser = ({ plays }: MainlinePlaysBrowserProps) => {
  const pathname = usePathname();
  const router = useRouter();
  const searchParams = useSearchParams();

  const filters = useMemo(() => parseFilters(searchParams), [searchParams]);
  const statusOptions = useMemo(
    () => uniqueOptions(plays, "status_slug", "status_name"),
    [plays],
  );
  const generationOptions = useMemo(
    () => uniqueOptions(plays, "generation_slug", "generation_name"),
    [plays],
  );
  const gameOptions = useMemo(
    () => uniqueOptions(plays, "game_slug", "game_name"),
    [plays],
  );
  const visiblePlays = useMemo(
    () => filterMainlinePlays(plays, filters),
    [filters, plays],
  );
  const activeFilters = hasActiveFilters(filters);

  const updateFilter = (key: keyof MainlinePlayFilters, value: string) => {
    const nextParams = new URLSearchParams(searchParams.toString());
    const defaultValue = defaultFilters[key];

    if (!value || value === defaultValue) {
      nextParams.delete(key);
    } else {
      nextParams.set(key, value);
    }

    const query = nextParams.toString();
    router.replace(query ? `${pathname}?${query}` : pathname, {
      scroll: false,
    });
  };

  const clearFilters = () => {
    router.replace(pathname, { scroll: false });
  };

  if (!plays.length) {
    return null;
  }

  return (
    <div className="flex flex-col gap-4">
      <MainlinePlaysFilterToolbar
        activeFilters={activeFilters}
        filters={filters}
        gameOptions={gameOptions}
        generationOptions={generationOptions}
        onClearFilters={clearFilters}
        onUpdateFilter={updateFilter}
        statusOptions={statusOptions}
      />

      <div className="text-muted-foreground flex items-center gap-2 text-sm [&_svg]:size-4">
        <AppIcon icon={appIcons.actions.filter} aria-hidden />
        {visiblePlays.length} of {plays.length} plays visible
      </div>

      {visiblePlays.length ? (
        <div className="grid gap-3">
          {visiblePlays.map((play) => (
            <MainlinePlayCard
              key={play.play_id ?? `${play.game_id}-${play.created_at}`}
              play={play}
            />
          ))}
        </div>
      ) : (
        <EmptyState
          title="No plays match these filters"
          description="Adjust the search, game, generation, status, or completion filters to widen the library view."
        />
      )}
    </div>
  );
};
