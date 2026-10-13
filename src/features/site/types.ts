import type { CSSProperties } from "react";

export type SitePokemonForm = {
  name: string;
  sprite_slug: string;
};

/*
 * The art the public pages draw: Pokémon renders, game covers and a game's
 * colour. The reference module owns how each resolves, and a global feature
 * can't import a module, so the route passes the reference helpers in.
 */
export type SiteArt = {
  gameColour: (gameSlug: string) => CSSProperties;
  gameCover: (gameSlug: string) => string | null;
  pokemon: (form: SitePokemonForm) => string | null;
};

export type SiteTypeSlug =
  | "bug"
  | "dark"
  | "dragon"
  | "electric"
  | "fairy"
  | "fighting"
  | "fire"
  | "flying"
  | "ghost"
  | "grass"
  | "ground"
  | "ice"
  | "normal"
  | "poison"
  | "psychic"
  | "rock"
  | "steel"
  | "water";

/* A Pokémon the public pages show: its name, render and type colour. */
export type SitePokemon = SitePokemonForm & {
  type: SiteTypeSlug;
};

/* What a moment's medallion holds: a gym badge, a note or a Pokémon. */
export type SiteMoment =
  | { kind: "badge"; type: SiteTypeSlug }
  | { kind: "note" }
  | { kind: "pokemon"; pokemon: SitePokemon };
