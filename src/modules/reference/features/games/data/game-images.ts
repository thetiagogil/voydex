import { getReferenceAssetUrl } from "@/modules/reference/shared/data/reference-assets";
import type { ReferenceRow } from "@/shared/types/database-helpers";

type Game = ReferenceRow<"games">;

/* A game's cover on the voydex-assets site, by its slug. */
export const getGameCoverImageUrlBySlug = (gameSlug: string): string | null =>
  getReferenceAssetUrl(`games/covers/${gameSlug}.webp`);

export const getGameCoverImageUrl = (game: Game): string | null =>
  getGameCoverImageUrlBySlug(game.slug);
