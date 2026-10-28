import { getAssetUrl } from "@/shared/utils/asset-url";

/*
 * An address on the voydex-assets site, which serves Voydex's reference images
 * (Pokémon and game covers). `getAssetUrl` reads the site's address; null when
 * it isn't configured.
 */
export const getReferenceAssetUrl = (path: string): string | null =>
  getAssetUrl(path);
