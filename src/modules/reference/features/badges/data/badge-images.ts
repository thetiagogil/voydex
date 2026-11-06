import { getReferenceAssetUrl } from "@/modules/reference/shared/data/reference-assets";

/*
 * A gym badge's picture on the assets site, by its `sprite_slug`
 * (`badges/<slug>.webp`). Null without a slug or when the site isn't set up;
 * the badge then wears its type's icon.
 */
export const getBadgeImageUrl = (
  spriteSlug: string | null | undefined,
): string | null =>
  spriteSlug ? getReferenceAssetUrl(`badges/${spriteSlug}.webp`) : null;
