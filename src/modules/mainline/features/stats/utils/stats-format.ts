export const formatWholeHours = (minutes: number) =>
  `${Math.round(minutes / 60)}h`;

/* A calendar day ("2019-03-02") as month and year: "Mar 2019". */
export const formatMonthYear = (day: string | null) => {
  if (!day || !/^\d{4}-\d{2}-\d{2}$/.test(day)) {
    return null;
  }

  return new Intl.DateTimeFormat("en", {
    month: "short",
    timeZone: "UTC",
    year: "numeric",
  }).format(new Date(day));
};

/* "A, B and C". */
export const joinStatsList = (items: string[], conjunction: "and" | "or") => {
  if (items.length <= 1) return items.join("");

  return `${items.slice(0, -1).join(", ")} ${conjunction} ${items.at(-1)}`;
};
