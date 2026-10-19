import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";

export const playBrowseSortValues = [
  "recent",
  "created",
  "name",
  "game",
  "started",
] as const;

export type PlayBrowseSort = (typeof playBrowseSortValues)[number];

/* v3's filters: game and generation; status already groups the list. */
export type PlayBrowseFilters = {
  game: string;
  generation: string;
  query: string;
  sort: PlayBrowseSort;
};

export type PlayBrowseParams = Partial<{
  game: string | null;
  generation: string | null;
  q: string | null;
  sort: string | null;
}>;

export type PlayBrowseOption = {
  /* The quieter line under it in the list, such as "Generation III · Hoenn". */
  description?: string;
  label: string;
  value: string;
};

/* A Play as the filters read it; a Play from the list also knows its region. */
type PlayBrowseOptionSource = MainlinePlaySummary & {
  regionName?: string | null;
};

export const defaultPlayBrowseFilters: PlayBrowseFilters = {
  game: "",
  generation: "",
  query: "",
  sort: "recent",
};

const isPlayBrowseSort = (value?: string | null): value is PlayBrowseSort => {
  return playBrowseSortValues.some((sortValue) => sortValue === value);
};

/*
 * One option per value, ordered by `getOrder` and then by label, with the
 * quieter line `getDescription` gives the first Play of each.
 */
const getUniqueOptions = (
  plays: PlayBrowseOptionSource[],
  getValue: (play: PlayBrowseOptionSource) => string | null,
  getLabel: (play: PlayBrowseOptionSource) => string | null,
  getOrder: (play: PlayBrowseOptionSource) => number = () => 0,
  getDescription: (play: PlayBrowseOptionSource) => string | null = () => null,
) => {
  const options = new Map<
    string,
    { description: string | null; label: string; order: number }
  >();

  for (const play of plays) {
    const value = getValue(play);
    const label = getLabel(play);

    if (value && label && !options.has(value)) {
      options.set(value, {
        description: getDescription(play),
        label,
        order: getOrder(play),
      });
    }
  }

  return Array.from(options, ([value, { description, label, order }]) => ({
    description,
    label,
    order,
    value,
  }))
    .sort(
      (firstOption, secondOption) =>
        firstOption.order - secondOption.order ||
        firstOption.label.localeCompare(secondOption.label, undefined, {
          sensitivity: "base",
        }),
    )
    .map(
      ({ description, label, value }): PlayBrowseOption =>
        description ? { description, label, value } : { label, value },
    );
};

export const getPlayBrowseOptions = (plays: PlayBrowseOptionSource[]) => {
  return {
    /* Each game with its generation and region under it. */
    games: getUniqueOptions(
      plays,
      (play) => play.game_slug,
      (play) => play.game_name,
      undefined,
      (play) =>
        [play.generation_name, play.regionName].filter(Boolean).join(" · ") ||
        null,
    ),
    /* In generation order, not by name: II before IV; its region under it. */
    generations: getUniqueOptions(
      plays,
      (play) => play.generation_slug,
      (play) => play.generation_name,
      (play) => play.generation_id ?? Number.MAX_SAFE_INTEGER,
      (play) => play.regionName ?? null,
    ),
  };
};

export const getInitialPlayBrowseFilters = (
  params: PlayBrowseParams | undefined,
  options: {
    games: PlayBrowseOption[];
    generations: PlayBrowseOption[];
  },
): PlayBrowseFilters => {
  const game = options.games.some((option) => option.value === params?.game)
    ? (params?.game ?? "")
    : "";
  const generation = options.generations.some(
    (option) => option.value === params?.generation,
  )
    ? (params?.generation ?? "")
    : "";

  return {
    game,
    generation,
    query: params?.q?.trim() ?? "",
    sort: isPlayBrowseSort(params?.sort) ? params.sort : "recent",
  };
};

export const hasActivePlayBrowseFilters = (filters: PlayBrowseFilters) => {
  return Boolean(filters.query.trim() || filters.game || filters.generation);
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

export const filterAndSortPlays = <Play extends MainlinePlaySummary>(
  plays: Play[],
  filters: PlayBrowseFilters,
) => {
  const normalizedQuery = filters.query.trim().toLocaleLowerCase();

  return plays
    .filter((play) => {
      if (filters.generation && play.generation_slug !== filters.generation) {
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

/*
 * Status groups in the order a library reads: what you're playing first, what
 * is finished or dropped last. Statuses the list doesn't know follow by name.
 */
const statusGroupOrder = [
  "playing",
  "not_started",
  "paused",
  "completed",
  "abandoned",
];

export type PlayStatusGroup<Play extends MainlinePlaySummary> = {
  id: string;
  name: string;
  plays: Play[];
};

const getStatusGroupRank = (groupId: string) => {
  const rank = statusGroupOrder.indexOf(groupId);

  return rank === -1 ? statusGroupOrder.length : rank;
};

/* Groups keep the order of the Plays they are given. */
export const groupPlaysByStatus = <Play extends MainlinePlaySummary>(
  plays: Play[],
): PlayStatusGroup<Play>[] => {
  const groups = new Map<string, PlayStatusGroup<Play>>();

  for (const play of plays) {
    const id = play.status_slug ?? "";
    const group = groups.get(id) ?? {
      id,
      name: play.status_name ?? "Other",
      plays: [],
    };

    group.plays.push(play);
    groups.set(id, group);
  }

  return Array.from(groups.values()).sort(
    (firstGroup, secondGroup) =>
      getStatusGroupRank(firstGroup.id) - getStatusGroupRank(secondGroup.id) ||
      Number(!firstGroup.id) - Number(!secondGroup.id) ||
      compareText(firstGroup.name, secondGroup.name),
  );
};

export const getPlayBrowseUrlSearchParams = (filters: PlayBrowseFilters) => {
  const searchParams = new URLSearchParams();

  if (filters.query.trim()) {
    searchParams.set("q", filters.query.trim());
  }

  if (filters.game) {
    searchParams.set("game", filters.game);
  }

  if (filters.generation) {
    searchParams.set("generation", filters.generation);
  }

  if (filters.sort !== defaultPlayBrowseFilters.sort) {
    searchParams.set("sort", filters.sort);
  }

  return searchParams;
};
