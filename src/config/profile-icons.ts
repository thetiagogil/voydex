import type { CSSProperties } from "react";

import type { PublicTypeSlug } from "@/config/public-art";

/*
 * The Pokémon a trainer can pick as their icon: the starters that have a
 * Legends: Z-A icon, in the order the picker shows them (generation, then
 * grass, fire and water). Each is a form slug (`reference.pokemon_forms.slug`)
 * with its type, which tints the disc behind its icon; the icon is
 * `pokemon/icons/<slug>.webp` on the voydex-assets site. Pikachu and Eevee are
 * the Yellow and Let's Go partners. The rest of the starters join when an
 * icon set that has them does.
 */
export const profileIcons = [
  { slug: "bulbasaur", type: "grass" },
  { slug: "charmander", type: "fire" },
  { slug: "squirtle", type: "water" },
  { slug: "pikachu", type: "electric" },
  { slug: "eevee", type: "normal" },
  { slug: "chikorita", type: "grass" },
  { slug: "totodile", type: "water" },
  { slug: "treecko", type: "grass" },
  { slug: "torchic", type: "fire" },
  { slug: "mudkip", type: "water" },
  { slug: "tepig", type: "fire" },
  { slug: "chespin", type: "grass" },
  { slug: "fennekin", type: "fire" },
  { slug: "froakie", type: "water" },
] as const satisfies readonly { slug: string; type: PublicTypeSlug }[];

export type ProfileIconSlug = (typeof profileIcons)[number]["slug"];

export const profileIconSlugs: readonly ProfileIconSlug[] = profileIcons.map(
  (icon) => icon.slug,
);

export const isProfileIconSlug = (value: unknown): value is ProfileIconSlug =>
  typeof value === "string" &&
  (profileIconSlugs as readonly string[]).includes(value);

/* The Pokémon's type, which tints the disc behind its icon. */
export const getProfileIconType = (slug: ProfileIconSlug): PublicTypeSlug =>
  profileIcons.find((icon) => icon.slug === slug)?.type ?? "normal";

/* Where an icon sits on the assets site. */
export const getProfileIconPath = (slug: ProfileIconSlug) =>
  `pokemon/icons/${slug}.webp`;

/*
 * The disc behind an icon: with the `type-tint` class, a pale wash of the
 * Pokémon's type (the same tint a team's portraits wear).
 */
export const getProfileIconTintStyle = (
  type: PublicTypeSlug,
): CSSProperties & { "--t": string } => ({ "--t": `var(--type-${type})` });
