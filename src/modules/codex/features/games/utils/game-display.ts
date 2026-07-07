export const getGameInitials = (name: string) => {
  const displayName = name.replace(/^Pokémon\s+/i, "");
  const words = displayName.match(/[A-Za-z0-9]+/g) ?? [];

  return (words.length ? words : [displayName])
    .slice(0, 2)
    .map((word) => word.slice(0, 1))
    .join("")
    .toUpperCase();
};
