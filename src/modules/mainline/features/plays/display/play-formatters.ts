export const formatPlayDate = (value: string | null, fallback = "Not set") => {
  if (!value) {
    return fallback;
  }

  const date = new Date(value);

  if (Number.isNaN(date.getTime())) {
    return fallback;
  }

  return new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "short",
    year: "numeric",
  }).format(date);
};

export const formatPlayMinutes = (value: number | null) => {
  if (value === null) {
    return "Not tracked";
  }

  const hours = Math.floor(value / 60);
  const minutes = value % 60;

  if (!hours) {
    return `${minutes}m`;
  }

  return `${hours}h ${minutes}m`;
};

export const formatPlayPokedexProgress = (params: {
  caughtCount: number | null;
  seenCount: number | null;
}) => {
  const { caughtCount, seenCount } = params;

  if (caughtCount === null && seenCount === null) {
    return "No Pokedex progress";
  }

  return `${caughtCount ?? 0} caught / ${seenCount ?? 0} seen`;
};

export const formatPlayTeamSummary = (params: {
  activeCount: number | null;
  reserveCount: number | null;
}) => {
  return `${params.activeCount ?? 0} active / ${params.reserveCount ?? 0} reserve`;
};
