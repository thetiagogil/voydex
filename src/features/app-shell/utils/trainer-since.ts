const trainerSinceFormat = new Intl.DateTimeFormat("en-US", {
  month: "long",
  timeZone: "UTC",
  year: "numeric",
});

/*
 * When an account was made, as "Trainer since" reads it: the month and year
 * ("November 2024"). Null when the date is missing or can't be read.
 */
export const formatTrainerSince = (
  createdAt: string | null | undefined,
): string | null => {
  if (!createdAt) {
    return null;
  }

  const date = new Date(createdAt);

  return Number.isNaN(date.getTime()) ? null : trainerSinceFormat.format(date);
};
