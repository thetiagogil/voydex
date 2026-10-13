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
  sort: MyPlansSort;
  status: "active" | "all" | "archived";
};

export type MyPlansSort = "game" | "name" | "updated";

export const defaultMyPlansFilters: MyPlansFilters = {
  game: "",
  sort: "updated",
  status: "all",
};

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

export const filterAndSortMyPlans = (
  plans: MyPlan[],
  filters: MyPlansFilters,
) =>
  plans
    .filter(
      (plan) =>
        filters.status === "all" ||
        (filters.status === "archived" ? plan.isArchived : !plan.isArchived),
    )
    .filter((plan) => !filters.game || plan.versionGroupSlug === filters.game)
    .toSorted(sorters[filters.sort]);

/* The games the Plans are for, for the game filter. */
export const getMyPlansGames = (plans: MyPlan[]) =>
  [
    ...new Map(
      plans.map((plan) => [plan.versionGroupSlug, plan.versionGroupName]),
    ),
  ]
    .map(([value, label]) => ({ label, value }))
    .toSorted((left, right) => left.label.localeCompare(right.label));

/* "Followed by 2 Plays", "Not followed by any Play yet" or "Empty, just named". */
export const getMyPlanFootnote = (plan: MyPlan) => {
  if (plan.linkedPlayCount) {
    return `Followed by ${plan.linkedPlayCount} ${plan.linkedPlayCount === 1 ? "Play" : "Plays"}`;
  }

  return plan.memberCount
    ? "Not followed by any Play yet"
    : "Empty, just named";
};
