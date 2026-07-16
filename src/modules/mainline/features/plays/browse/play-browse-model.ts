import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";

export const playBrowseSortValues = [
  "recent",
  "created",
  "name",
  "game",
  "started",
] as const;

export type PlayBrowseSort = (typeof playBrowseSortValues)[number];

export type PlayBrowseFilters = {
  game: string;
  query: string;
  sort: PlayBrowseSort;
  status: string;
};

export type PlayBrowseParams = Partial<{
  game: string | null;
  q: string | null;
  sort: string | null;
  status: string | null;
}>;

export type PlayBrowseOption = {
  label: string;
  value: string;
};

export const defaultPlayBrowseFilters: PlayBrowseFilters = {
  game: "",
  query: "",
  sort: "recent",
  status: "",
};

const isPlayBrowseSort = (value?: string | null): value is PlayBrowseSort => {
  return playBrowseSortValues.some((sortValue) => sortValue === value);
};

const getUniqueOptions = (
  plays: MainlinePlaySummary[],
  getValue: (play: MainlinePlaySummary) => string | null,
  getLabel: (play: MainlinePlaySummary) => string | null,
) => {
  const options = new Map<string, string>();

  for (const play of plays) {
    const value = getValue(play);
    const label = getLabel(play);

    if (value && label && !options.has(value)) {
      options.set(value, label);
    }
  }

  return Array.from(options, ([value, label]) => ({ label, value })).sort(
    (firstOption, secondOption) =>
      firstOption.label.localeCompare(secondOption.label, undefined, {
        sensitivity: "base",
      }),
  );
};

export const getPlayBrowseOptions = (plays: MainlinePlaySummary[]) => {
  return {
    games: getUniqueOptions(
      plays,
      (play) => play.game_slug,
      (play) => play.game_name,
    ),
    statuses: getUniqueOptions(
      plays,
      (play) => play.status_slug,
      (play) => play.status_name,
    ),
  };
};

export const getInitialPlayBrowseFilters = (
  params: PlayBrowseParams | undefined,
  options: {
    games: PlayBrowseOption[];
    statuses: PlayBrowseOption[];
  },
): PlayBrowseFilters => {
  const game = options.games.some((option) => option.value === params?.game)
    ? (params?.game ?? "")
    : "";
  const status = options.statuses.some(
    (option) => option.value === params?.status,
  )
    ? (params?.status ?? "")
    : "";

  return {
    game,
    query: params?.q?.trim() ?? "",
    sort: isPlayBrowseSort(params?.sort) ? params.sort : "recent",
    status,
  };
};

export const hasActivePlayBrowseFilters = (filters: PlayBrowseFilters) => {
  return Boolean(filters.query.trim() || filters.game || filters.status);
};

const getSearchText = (play: MainlinePlaySummary) => {
  return [play.play_name, play.game_name, play.trainer_name]
    .filter(Boolean)
    .join(" ")
    .toLocaleLowerCase();
};

const compareText = (firstValue: string | null, secondValue: string | null) => {
  if (!firstValue && !secondValue) {
    return 0;
  }

  if (!firstValue) {
    return 1;
  }

  if (!secondValue) {
    return -1;
  }

  return firstValue.localeCompare(secondValue, undefined, {
    sensitivity: "base",
  });
};

const getTime = (value: string | null) => {
  if (!value) {
    return null;
  }

  const time = Date.parse(value);

  return Number.isNaN(time) ? null : time;
};

const compareNewestFirst = (
  firstValue: string | null,
  secondValue: string | null,
) => {
  const firstTime = getTime(firstValue);
  const secondTime = getTime(secondValue);

  if (firstTime === null && secondTime === null) {
    return 0;
  }

  if (firstTime === null) {
    return 1;
  }

  if (secondTime === null) {
    return -1;
  }

  return secondTime - firstTime;
};

const comparePlays = (
  firstPlay: MainlinePlaySummary,
  secondPlay: MainlinePlaySummary,
  sort: PlayBrowseSort,
) => {
  switch (sort) {
    case "created":
      return compareNewestFirst(firstPlay.created_at, secondPlay.created_at);
    case "name":
      return compareText(firstPlay.play_name, secondPlay.play_name);
    case "game":
      return (
        compareText(firstPlay.game_name, secondPlay.game_name) ||
        compareText(firstPlay.play_name, secondPlay.play_name)
      );
    case "started":
      return compareNewestFirst(firstPlay.started_on, secondPlay.started_on);
    case "recent":
      return compareNewestFirst(firstPlay.updated_at, secondPlay.updated_at);
  }
};

export const filterAndSortPlays = (
  plays: MainlinePlaySummary[],
  filters: PlayBrowseFilters,
) => {
  const normalizedQuery = filters.query.trim().toLocaleLowerCase();

  return plays
    .filter((play) => {
      if (filters.status && play.status_slug !== filters.status) {
        return false;
      }

      if (filters.game && play.game_slug !== filters.game) {
        return false;
      }

      return !normalizedQuery || getSearchText(play).includes(normalizedQuery);
    })
    .map((play, index) => ({ index, play }))
    .sort(
      (firstEntry, secondEntry) =>
        comparePlays(firstEntry.play, secondEntry.play, filters.sort) ||
        firstEntry.index - secondEntry.index,
    )
    .map(({ play }) => play);
};

export const getPlayBrowseUrlSearchParams = (filters: PlayBrowseFilters) => {
  const searchParams = new URLSearchParams();

  if (filters.query.trim()) {
    searchParams.set("q", filters.query.trim());
  }

  if (filters.status) {
    searchParams.set("status", filters.status);
  }

  if (filters.game) {
    searchParams.set("game", filters.game);
  }

  if (filters.sort !== defaultPlayBrowseFilters.sort) {
    searchParams.set("sort", filters.sort);
  }

  return searchParams;
};
