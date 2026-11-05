import { getReferenceAssetUrl } from "@/modules/reference/shared/data/reference-assets";

/*
 * An opponent's portrait on the assets site, by its `sprite_slug`. The slug is
 * set only where a portrait exists, so a trainer without one (and every
 * Pokémon opponent) reads null and keeps its stand-in.
 */
export const getTrainerPortraitUrl = (
  spriteSlug: string | null | undefined,
): string | null =>
  spriteSlug ? getReferenceAssetUrl(`trainers/${spriteSlug}.webp`) : null;
