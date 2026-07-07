const POKEMON_NAME_PREFIX_PATTERN = /^Pok(?:e|\u00e9)mon\s+/i;

export const getGameInitials = (name: string) => {
  const displayName = name.replace(POKEMON_NAME_PREFIX_PATTERN, "");
  const words = displayName.match(/[A-Za-z0-9]+/g) ?? [];

  return (words.length ? words : [displayName])
    .slice(0, 2)
    .map((word) => word.slice(0, 1))
    .join("")
    .toUpperCase();
};
