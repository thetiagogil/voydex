import type {
  LibraryTab,
  LibraryUsage,
} from "@/modules/mainline/features/library/types";

/* The links' ids, counted: a function from a rule's or tag's id to its usage. */
export const countLibraryUsage = ({
  planIds,
  playIds,
}: {
  planIds: string[];
  playIds: string[];
}) => {
  const count = (ids: string[]) =>
    ids.reduce(
      (counts, id) => counts.set(id, (counts.get(id) ?? 0) + 1),
      new Map<string, number>(),
    );
  const plans = count(planIds);
  const plays = count(playIds);

  return (id: string): LibraryUsage => ({
    planCount: plans.get(id) ?? 0,
    playCount: plays.get(id) ?? 0,
  });
};

const plural = (count: number, noun: string) =>
  `${count} ${noun}${count === 1 ? "" : "s"}`;

/* Where it's used, as the card says: "In 2 Plays · 1 Plan", "Not used yet". */
export const getLibraryUsageLabel = ({
  planCount,
  playCount,
}: LibraryUsage) => {
  const parts = [
    playCount ? plural(playCount, "Play") : null,
    planCount ? plural(planCount, "Plan") : null,
  ].filter(Boolean);

  return parts.length ? `In ${parts.join(" · ")}` : "Not used yet";
};

/*
 * What deleting takes with it, for the confirm: "It leaves 2 Plays and 1
 * Plan." or nothing when it isn't used.
 */
export const getLibraryDeleteNote = ({
  planCount,
  playCount,
}: LibraryUsage) => {
  const parts = [
    playCount ? plural(playCount, "Play") : null,
    planCount ? plural(planCount, "Plan") : null,
  ].filter(Boolean);

  return parts.length ? `It leaves ${parts.join(" and ")}.` : null;
};

/* The tab a link asks for; Rules when it names none or one we don't have. */
export const parseLibraryTab = (value: unknown): LibraryTab =>
  value === "tags" ? "tags" : "rules";
