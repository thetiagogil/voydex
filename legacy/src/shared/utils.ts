export const formatTime = (dateString: string): string => {
  const date = new Date(dateString);
  const now = new Date();
  const diffInSeconds = Math.floor((now.getTime() - date.getTime()) / 1000);

  if (diffInSeconds < 60) return "Just now";
  if (diffInSeconds < 3600) return `${Math.floor(diffInSeconds / 60)}m ago`;
  if (diffInSeconds < 86400) return `${Math.floor(diffInSeconds / 3600)}h ago`;
  if (diffInSeconds < 604800)
    return `${Math.floor(diffInSeconds / 86400)}d ago`;
  return date.toLocaleDateString();
};

export const getPokemonSpriteUrl = (
  isShiny: boolean,
  speciesSlug: string,
): string => {
  const SPRITE_BASE_URL = "https://img.pokemondb.net/sprites/home/";
  return `${SPRITE_BASE_URL}${isShiny ? "shiny" : "normal"}/${speciesSlug}.png`;
};
