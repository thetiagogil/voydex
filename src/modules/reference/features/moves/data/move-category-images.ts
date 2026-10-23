import type { MoveCategorySlug } from "@/modules/reference/features/moves/domain/move-categories";
import { getReferenceAssetUrl } from "@/modules/reference/shared/data/reference-assets";

/* A move category's icon on the voydex-assets site; null without the site. */
export const getMoveCategoryImageUrl = (slug: MoveCategorySlug) =>
  getReferenceAssetUrl(`moves/categories/${slug}.webp`);
