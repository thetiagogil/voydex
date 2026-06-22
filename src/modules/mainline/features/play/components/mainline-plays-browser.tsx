"use client";

import { useMemo, useState } from "react";
import { SearchIcon, SlidersHorizontalIcon } from "lucide-react";

import { MainlinePlayCard } from "@/modules/mainline/features/play/components/mainline-play-card";
import type { MainlinePlayCardData } from "@/modules/mainline/features/play/types";
import { EmptyState } from "@/shared/components/app/empty-state";
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

const completionOptions: Option[] = [
  { label: "All completion", value: "all" },
  { label: "Active library", value: "active" },
  { label: "Completed", value: "completed" },
  { label: "Has progress", value: "has-progress" },
];

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
  const [completion, setCompletion] = useState("all");
  const [game, setGame] = useState("");
  const [generation, setGeneration] = useState("");
  const [search, setSearch] = useState("");
  const [status, setStatus] = useState("");

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
  const normalizedSearch = search.trim().toLowerCase();
  const visiblePlays = useMemo(
    () =>
      plays.filter((play) => {
        if (!matchesSearch(play, normalizedSearch)) {
          return false;
        }

        if (status && play.status_slug !== status) {
          return false;
        }

        if (generation && play.generation_slug !== generation) {
          return false;
        }

        if (game && play.game_slug !== game) {
          return false;
        }

        if (completion === "active" && play.status_slug === "completed") {
          return false;
        }

        if (completion === "completed" && play.status_slug !== "completed") {
          return false;
        }

        if (
          completion === "has-progress" &&
          !(
            (play.completed_milestone_count ?? 0) > 0 ||
            (play.pokedex_caught_count ?? 0) > 0 ||
            (play.collected_entry_count ?? 0) > 0
          )
        ) {
          return false;
        }

        return true;
      }),
    [completion, game, generation, normalizedSearch, plays, status],
  );

  if (!plays.length) {
    return null;
  }

  return (
    <div className="flex flex-col gap-4">
      <div className="bg-card/82 grid gap-3 rounded-xl border p-3 backdrop-blur-sm xl:grid-cols-[minmax(16rem,1fr)_repeat(4,minmax(9rem,auto))]">
        <InputGroup>
          <InputGroupAddon>
            <SearchIcon aria-hidden />
          </InputGroupAddon>
          <InputGroupInput
            value={search}
            onChange={(event) => setSearch(event.target.value)}
            placeholder="Search plays, games, or trainer"
          />
        </InputGroup>
        <NativeSelect
          aria-label="Filter by status"
          value={status}
          onChange={(event) => setStatus(event.target.value)}
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
          value={generation}
          onChange={(event) => setGeneration(event.target.value)}
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
          value={game}
          onChange={(event) => setGame(event.target.value)}
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
          value={completion}
          onChange={(event) => setCompletion(event.target.value)}
          className="w-full"
        >
          {completionOptions.map((option) => (
            <NativeSelectOption key={option.value} value={option.value}>
              {option.label}
            </NativeSelectOption>
          ))}
        </NativeSelect>
      </div>

      <div className="text-muted-foreground flex items-center gap-2 text-sm">
        <SlidersHorizontalIcon aria-hidden />
        {visiblePlays.length} of {plays.length} plays visible
      </div>

      {visiblePlays.length ? (
        <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-3">
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
