import { getReferenceAssetUrl } from "@/modules/reference/shared/data/reference-assets";

/*
 * An item's sprite on the voydex-assets site (`items/<slug>.webp`): held
 * items and Poké Balls. Null without a slug or when the site isn't set up;
 * a missing sprite falls back to the item's stand-in icon.
 */
export const getItemImageUrl = (slug: string | null | undefined) =>
  slug ? getReferenceAssetUrl(`items/${slug}.webp`) : null;
