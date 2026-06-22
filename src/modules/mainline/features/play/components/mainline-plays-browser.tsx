"use client";

import { useMemo } from "react";
import { usePathname, useRouter, useSearchParams } from "next/navigation";
import { SearchIcon, SlidersHorizontalIcon, XIcon } from "lucide-react";

import { MainlinePlayCard } from "@/modules/mainline/features/play/components/mainline-play-card";
import { hasMainlinePlayProgress } from "@/modules/mainline/features/play/components/mainline-play-summary";
import type { MainlinePlayCardData } from "@/modules/mainline/features/play/types";
import { EmptyState } from "@/shared/components/app/empty-state";
import { Button } from "@/shared/components/ui/button";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import {
  NativeSelect,
  NativeSelectOption,
} from "@/shared/components/ui/native-select";

type MainlinePlaysBrowserProps = {
  plays: MainlinePlayCardData[];
};

type Option = {
  label: string;
  value: string;
};

type CompletionFilter = "active" | "all" | "completed" | "has-progress";

type MainlinePlayFilters = {
  completion: CompletionFilter;
  game: string;
  generation: string;
  q: string;
  status: string;
};

const completionOptions: Array<Option & { value: CompletionFilter }> = [
  { label: "All completion", value: "all" },
  { label: "Active library", value: "active" },
  { label: "Completed", value: "completed" },
  { label: "Has progress", value: "has-progress" },
];

const defaultFilters: MainlinePlayFilters = {
  completion: "all",
  game: "",
  generation: "",
  q: "",
  status: "",
};

function parseCompletion(value: string | null): CompletionFilter {
  return completionOptions.some((option) => option.value === value)
    ? (value as CompletionFilter)
    : "all";
}

function parseFilters(
  searchParams: ReturnType<typeof useSearchParams>,
): MainlinePlayFilters {
  return {
    completion: parseCompletion(searchParams.get("completion")),
    game: searchParams.get("game") ?? "",
    generation: searchParams.get("generation") ?? "",
    q: searchParams.get("q") ?? "",
    status: searchParams.get("status") ?? "",
  };
}

function hasActiveFilters(filters: MainlinePlayFilters) {
  return (
    filters.completion !== defaultFilters.completion ||
    filters.game !== defaultFilters.game ||
    filters.generation !== defaultFilters.generation ||
    filters.q !== defaultFilters.q ||
    filters.status !== defaultFilters.status
  );
}

function uniqueOptions(
  plays: MainlinePlayCardData[],
  slugKey: keyof MainlinePlayCardData,
  labelKey: keyof MainlinePlayCardData,
) {
  const options = new Map<string, string>();

  for (const play of plays) {
    const value = play[slugKey];
    const label = play[labelKey];

    if (typeof value === "string" && typeof label === "string") {
      options.set(value, label);
    }
  }

  return Array.from(options, ([value, label]) => ({ label, value })).sort(
    (a, b) => a.label.localeCompare(b.label),
  );
}

function matchesSearch(play: MainlinePlayCardData, search: string) {
  if (!search) {
    return true;
  }

  const haystack = [
    play.play_name,
    play.game_name,
    play.generation_name,
    play.trainer_name,
    play.status_name,
  ]
    .filter(Boolean)
    .join(" ")
    .toLowerCase();

  return haystack.includes(search);
}

export function MainlinePlaysBrowser({ plays }: MainlinePlaysBrowserProps) {
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
  const normalizedSearch = filters.q.trim().toLowerCase();
  const visiblePlays = useMemo(
    () =>
      plays.filter((play) => {
        if (!matchesSearch(play, normalizedSearch)) {
          return false;
        }

        if (filters.status && play.status_slug !== filters.status) {
          return false;
        }

        if (filters.generation && play.generation_slug !== filters.generation) {
          return false;
        }

        if (filters.game && play.game_slug !== filters.game) {
          return false;
        }

        if (
          filters.completion === "active" &&
          play.status_slug === "completed"
        ) {
          return false;
        }

        if (
          filters.completion === "completed" &&
          play.status_slug !== "completed"
        ) {
          return false;
        }

        if (
          filters.completion === "has-progress" &&
          !hasMainlinePlayProgress(play)
        ) {
          return false;
        }

        return true;
      }),
    [filters, normalizedSearch, plays],
  );
  const activeFilters = hasActiveFilters(filters);

  function updateFilter(key: keyof MainlinePlayFilters, value: string) {
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
  }

  function clearFilters() {
    router.replace(pathname, { scroll: false });
  }

  if (!plays.length) {
    return null;
  }

  return (
    <div className="flex flex-col gap-4">
      <div className="bg-card/78 ring-app-surface-border grid gap-3 rounded-xl p-3 ring-1 backdrop-blur-md xl:grid-cols-[minmax(16rem,1fr)_repeat(4,minmax(9rem,auto))_auto]">
        <InputGroup>
          <InputGroupAddon>
            <SearchIcon aria-hidden />
          </InputGroupAddon>
          <InputGroupInput
            value={filters.q}
            onChange={(event) => updateFilter("q", event.target.value)}
            placeholder="Search plays, games, or trainer"
          />
        </InputGroup>
        <NativeSelect
          aria-label="Filter by status"
          value={filters.status}
          onChange={(event) => updateFilter("status", event.target.value)}
          className="w-full"
        >
          <NativeSelectOption value="">All statuses</NativeSelectOption>
          {statusOptions.map((option) => (
            <NativeSelectOption key={option.value} value={option.value}>
              {option.label}
            </NativeSelectOption>
          ))}
        </NativeSelect>
        <NativeSelect
          aria-label="Filter by generation"
          value={filters.generation}
          onChange={(event) => updateFilter("generation", event.target.value)}
          className="w-full"
        >
          <NativeSelectOption value="">All generations</NativeSelectOption>
          {generationOptions.map((option) => (
            <NativeSelectOption key={option.value} value={option.value}>
              {option.label}
            </NativeSelectOption>
          ))}
        </NativeSelect>
        <NativeSelect
          aria-label="Filter by game"
          value={filters.game}
          onChange={(event) => updateFilter("game", event.target.value)}
          className="w-full"
        >
          <NativeSelectOption value="">All games</NativeSelectOption>
          {gameOptions.map((option) => (
            <NativeSelectOption key={option.value} value={option.value}>
              {option.label}
            </NativeSelectOption>
          ))}
        </NativeSelect>
        <NativeSelect
          aria-label="Filter by completion"
          value={filters.completion}
          onChange={(event) => updateFilter("completion", event.target.value)}
          className="w-full"
        >
          {completionOptions.map((option) => (
            <NativeSelectOption key={option.value} value={option.value}>
              {option.label}
            </NativeSelectOption>
          ))}
        </NativeSelect>
        <Button
          type="button"
          variant="outline"
          disabled={!activeFilters}
          onClick={clearFilters}
        >
          <XIcon data-icon="inline-start" />
          Clear
        </Button>
      </div>

      <div className="text-muted-foreground flex items-center gap-2 text-sm [&_svg]:size-4">
        <SlidersHorizontalIcon aria-hidden />
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
}
