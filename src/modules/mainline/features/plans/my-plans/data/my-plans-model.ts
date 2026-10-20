export type MyPlanMember = {
  imageUrl: string | null;
  name: string;
  slot: number;
  typeSlug: string | null;
};

export type MyPlan = {
  gameSlug: string | null;
  id: string;
  isArchived: boolean;
  linkedPlayCount: number;
  memberCount: number;
  members: MyPlanMember[];
  name: string;
  updatedAt: string | null;
  versionGroupName: string;
  versionGroupSlug: string;
};

export type MyPlansFilters = {
  /* A version group's slug, or "" for every game. */
  game: string;
  /* Matches a Plan's name, its game or one of its Pokémon. */
  query: string;
  sort: MyPlansSort;
};

export type MyPlansSort = "game" | "name" | "updated";

export const defaultMyPlansFilters: MyPlansFilters = {
  game: "",
  query: "",
  sort: "updated",
};

/* Whether a filter narrows the list (the order alone doesn't). */
export const hasActiveMyPlansFilters = (filters: MyPlansFilters) =>
  filters.query.trim() !== "" || filters.game !== "";

export const myPlansSortLabels: Record<MyPlansSort, string> = {
  game: "Game",
  name: "Plan name",
  updated: "Recently updated",
};

const sorters: Record<MyPlansSort, (left: MyPlan, right: MyPlan) => number> = {
  game: (left, right) =>
    left.versionGroupName.localeCompare(right.versionGroupName) ||
    sorters.updated(left, right),
  name: (left, right) => left.name.localeCompare(right.name),
  updated: (left, right) =>
    (right.updatedAt ?? "").localeCompare(left.updatedAt ?? ""),
};

const matchesQuery = (plan: MyPlan, query: string) =>
  [
    plan.name,
    plan.versionGroupName,
    ...plan.members.map((member) => member.name),
  ].some((text) => text.toLocaleLowerCase().includes(query));

export const filterAndSortMyPlans = (
  plans: MyPlan[],
  filters: MyPlansFilters,
) => {
  const query = filters.query.trim().toLocaleLowerCase();

  return plans
    .filter((plan) => !query || matchesQuery(plan, query))
    .filter((plan) => !filters.game || plan.versionGroupSlug === filters.game)
    .toSorted(sorters[filters.sort]);
};

/*
 * My Plans shows the Plans you're keeping; archived ones wait in their own
 * list (`?view=archived`) until restored, as archived Plays do.
 */
export const splitMyPlans = (plans: MyPlan[]) => ({
  active: plans.filter((plan) => !plan.isArchived),
  archived: plans.filter((plan) => plan.isArchived),
});

/* The games the Plans are for, for the game filter. */
/*
 * The games your Plans are for, by name: each with the first game's slug for
 * its cover and how many Plans it has.
 */
export const getMyPlansGames = (plans: MyPlan[]) => {
  const games = new Map<
    string,
    { count: number; gameSlug: string | null; label: string }
  >();

  for (const plan of plans) {
    const game = games.get(plan.versionGroupSlug);

    games.set(plan.versionGroupSlug, {
      count: (game?.count ?? 0) + 1,
      gameSlug: game?.gameSlug ?? plan.gameSlug,
      label: plan.versionGroupName,
    });
  }

  return [...games]
    .map(([value, { count, gameSlug, label }]) => ({
      description: `${count} ${count === 1 ? "Plan" : "Plans"}`,
      gameSlug,
      label,
      value,
    }))
    .toSorted((left, right) => left.label.localeCompare(right.label));
};

/* "Followed by 2 Plays", "Not followed by any Play yet" or "Empty, just named". */
export const getMyPlanFootnote = (plan: MyPlan) => {
  if (plan.linkedPlayCount) {
    return `Followed by ${plan.linkedPlayCount} ${plan.linkedPlayCount === 1 ? "Play" : "Plays"}`;
  }

  return plan.memberCount
    ? "Not followed by any Play yet"
    : "Empty, just named";
};
