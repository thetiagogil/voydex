import { getAssetUrl } from "@/shared/utils/asset-url";

/*
 * An address on the voydex-assets site, which serves Voydex's reference images
 * (Pokémon, game covers, items, trainers and badges). `getAssetUrl` reads the site's address; null when
 * it isn't configured.
 */
export const getReferenceAssetUrl = (path: string): string | null =>
  getAssetUrl(path);
