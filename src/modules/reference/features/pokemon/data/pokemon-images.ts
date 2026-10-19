/*
 * Which picture of a form: its HOME sprite, small (lists, pickers and
 * avatars, shown up to 80px) or medium (cards and stickers, up to about
 * 190px), or its official art (headers and large portraits, 475px).
 */
export type PokemonImageSize = "art" | "md" | "sm";

/*
 * The voydex-assets site's address, without a trailing slash. Null when it
 * isn't configured: Pokémon then show their placeholders instead of breaking
 * the page. Written out in full so Next.js inlines it into browser code.
 */
const getAssetsBaseUrl = () => {
  const url = process.env.NEXT_PUBLIC_ASSETS_URL?.trim();

  return url ? url.replace(/\/+$/, "") : null;
};

type PokemonImageForm = {
  name: string;
  slug: string | null;
  sprite_url?: string | null;
};

const getPokemonImagePath = (size: PokemonImageSize, shiny: boolean) => {
  if (size === "art") {
    return shiny ? "art/shiny" : "art/normal";
  }

  return `${shiny ? "home-shiny" : "home"}/${size}`;
};

const buildPokemonImageUrl = (
  slug: string | null,
  size: PokemonImageSize,
  shiny: boolean,
) => {
  const baseUrl = getAssetsBaseUrl();

  if (!slug || !baseUrl) {
    return null;
  }

  return `${baseUrl}/pokemon/${getPokemonImagePath(size, shiny)}/${slug}.webp`;
};

export const getPokemonFormImageUrl = (
  form: PokemonImageForm | null,
  size: PokemonImageSize = "md",
) => {
  if (!form) return null;

  if (form.sprite_url) {
    return form.sprite_url;
  }

  return buildPokemonImageUrl(form.slug, size, false);
};

export const getPokemonFormShinyImageUrl = (
  form: PokemonImageForm | null,
  size: PokemonImageSize = "md",
) => {
  return buildPokemonImageUrl(form?.slug ?? null, size, true);
};

export const getPokemonFormImageAlt = (form: PokemonImageForm | null) => {
  return form ? `${form.name} artwork` : "";
};
