/*
 * An address on the voydex-assets site, which serves Voydex's images (Pokémon,
 * game covers, items and the trainer icons). Null when the site isn't
 * configured: images then show their letter fallback instead of breaking the
 * page. The variable is written out in full so Next.js inlines it into
 * browser code.
 */
export const getAssetUrl = (path: string): string | null => {
  const baseUrl = process.env.NEXT_PUBLIC_ASSETS_URL?.trim().replace(
    /\/+$/,
    "",
  );

  return baseUrl ? `${baseUrl}/${path.replace(/^\/+/, "")}` : null;
};
