import type { Game } from "@/modules/codex/shared/types";

const GAME_COVER_BUCKET = "reference-assets";
const GAME_COVER_PREFIX = "games/covers";
const GAME_COVER_EXTENSION = "webp";

type GameWithOptionalArtwork = Game & {
  cover_image_path?: string | null;
  cover_image_url?: string | null;
  image_path?: string | null;
  image_url?: string | null;
};

const getSupabasePublicStorageUrl = (path: string) => {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;

  if (!supabaseUrl) {
    return null;
  }

  const normalizedSupabaseUrl = supabaseUrl.replace(/\/$/, "");
  const normalizedPath = path.replace(/^\//, "");

  return `${normalizedSupabaseUrl}/storage/v1/object/public/${normalizedPath}`;
};

export const getDefaultGameCoverStoragePath = (gameSlug: string) => {
  return `${GAME_COVER_BUCKET}/${GAME_COVER_PREFIX}/${gameSlug}.${GAME_COVER_EXTENSION}`;
};

export const getGameCoverImageUrl = (game: Game): string | null => {
  const gameWithArtwork = game as GameWithOptionalArtwork;

  if (gameWithArtwork.cover_image_url) {
    return gameWithArtwork.cover_image_url;
  }

  if (gameWithArtwork.image_url) {
    return gameWithArtwork.image_url;
  }

  const storagePath =
    gameWithArtwork.cover_image_path ?? gameWithArtwork.image_path;

  if (storagePath) {
    return getSupabasePublicStorageUrl(storagePath);
  }

  return getSupabasePublicStorageUrl(getDefaultGameCoverStoragePath(game.slug));
};
