const SPRITE_BASE_URL =
  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork";

export const getPokemonSpriteUrl = (
  formId: number,
  spriteUrl: string | null,
): string => {
  if (spriteUrl) return spriteUrl;
  return `${SPRITE_BASE_URL}/${formId}.png`;
};
