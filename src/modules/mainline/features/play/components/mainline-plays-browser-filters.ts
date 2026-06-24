import { hasMainlinePlayProgress } from "@/modules/mainline/features/play/components/mainline-play-summary";
import type { MainlinePlayCardData } from "@/modules/mainline/features/play/types";

export type SelectOption = {
  label: string;
  value: string;
};

export type CompletionFilter = "active" | "all" | "completed" | "has-progress";

export type MainlinePlayFilters = {
  completion: CompletionFilter;
  game: string;
  generation: string;
  q: string;
  status: string;
};

type SearchParamsReader = {
  get: (key: string) => string | null;
};

export const completionOptions: Array<
  SelectOption & {
    value: CompletionFilter;
  }
> = [
  { label: "All completion", value: "all" },
  { label: "Active library", value: "active" },
  { label: "Completed", value: "completed" },
  { label: "Has progress", value: "has-progress" },
];

export const defaultFilters: MainlinePlayFilters = {
  completion: "all",
  game: "",
  generation: "",
  q: "",
  status: "",
};

export const parseCompletion = (value: string | null): CompletionFilter => {
  return completionOptions.some((option) => option.value === value)
    ? (value as CompletionFilter)
    : "all";
};

export const parseFilters = (
  searchParams: SearchParamsReader,
): MainlinePlayFilters => {
  return {
    completion: parseCompletion(searchParams.get("completion")),
    game: searchParams.get("game") ?? "",
    generation: searchParams.get("generation") ?? "",
    q: searchParams.get("q") ?? "",
    status: searchParams.get("status") ?? "",
  };
};

export const hasActiveFilters = (filters: MainlinePlayFilters) => {
  return (
    filters.completion !== defaultFilters.completion ||
    filters.game !== defaultFilters.game ||
    filters.generation !== defaultFilters.generation ||
    filters.q !== defaultFilters.q ||
    filters.status !== defaultFilters.status
  );
};

export const uniqueOptions = (
  plays: MainlinePlayCardData[],
  slugKey: keyof MainlinePlayCardData,
  labelKey: keyof MainlinePlayCardData,
) => {
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
};

export const matchesSearch = (play: MainlinePlayCardData, search: string) => {
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
};

export const filterMainlinePlays = (
  plays: MainlinePlayCardData[],
  filters: MainlinePlayFilters,
) => {
  const normalizedSearch = filters.q.trim().toLowerCase();

  return plays.filter((play) => {
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

    if (filters.completion === "active" && play.status_slug === "completed") {
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
  });
};
