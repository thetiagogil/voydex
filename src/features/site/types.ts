import type { CSSProperties, ReactNode } from "react";

export type SitePokemonForm = {
  name: string;
  sprite_slug: string;
};

/*
 * The art the public pages draw: Pokémon renders, the game cover, a game's
 * colour, the one Pokémon card and the type icon. The reference module owns
 * each, and a global feature can't import a module, so the route passes them
 * in and the public pages draw what the app draws.
 */
export type SiteArt = {
  gameColour: (gameSlug: string) => CSSProperties;
  gameCover: (props: {
    className?: string;
    game: { name: string; slug: string };
  }) => ReactNode;
  pokemon: (form: SitePokemonForm) => string | null;
  pokemonCard: (props: {
    className?: string;
    number: string;
    pokemon: SitePokemonForm;
    /* `sm` fits three cards in a narrow card; `fluid` grows from `sm` up. */
    size?: "fluid" | "sm";
    state: "caught" | "missing" | "plain" | "seen";
    types: readonly SiteTypeSlug[];
  }) => ReactNode;
  /* A type's white icon, for a badge or a dot drawn on its colour. */
  typeIcon: (props: { className?: string; type: SiteTypeSlug }) => ReactNode;
};

/* An earned gym badge stamp at its resting tilt, as the Play's stamp card draws it. */
export type SiteBadgeStamp = (props: {
  tilt: number;
  type: SiteTypeSlug;
}) => ReactNode;

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
