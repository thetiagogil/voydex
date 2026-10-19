import type { ReactNode } from "react";

/*
 * The contract between the modules' public art and the global features that
 * draw it: `PublicArt` is filled by `@/modules/reference/public-art` and
 * `PublicPlayArt` by `@/modules/mainline/public-play-art`. A global feature
 * can't import a module, so its route passes the art in, and the feature
 * types it with this contract.
 */

export type PublicTypeSlug =
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

/* A Pokémon form, as its render resolves: its name and sprite slug. */
export type PublicPokemonForm = {
  name: string;
  slug: string;
};

export type PublicGame = {
  name: string;
  slug: string;
};

export type PublicPokemonCardProps = {
  className?: string;
  number: string;
  pokemon: PublicPokemonForm;
  /* `sm` fits three cards in a narrow card; `fluid` grows from `sm` up. */
  size?: "fluid" | "sm";
  state: "caught" | "missing" | "plain" | "seen";
  types: readonly PublicTypeSlug[];
};

export type PublicArt = {
  /* A game's cover, decorative: the words beside it name the game. */
  gameCover: (props: { className?: string; game: PublicGame }) => ReactNode;
  /* A Pokémon's render URL, or null when there is none. */
  pokemon: (form: PublicPokemonForm) => string | null;
  /* The one Pokémon card, decorative. */
  pokemonCard: (props: PublicPokemonCardProps) => ReactNode;
};

/* A Pokémon the public pages show: its name, render and type colour. */
export type PublicPokemon = PublicPokemonForm & {
  type: PublicTypeSlug;
};

/* What a moment's medallion holds: a gym badge, a note or a Pokémon. */
export type PublicMoment =
  | { kind: "badge"; type: PublicTypeSlug }
  | { kind: "note" }
  | { kind: "pokemon"; pokemon: PublicPokemon };

/* The example Play the public pages show, as its header reads it. */
export type PublicSamplePlay = {
  game: PublicGame & { generation: string; region: string };
  name: string;
  playtimeMinutes: number;
  startedOn: string;
  status: string;
  tabs: readonly string[];
  trainer: string;
};

/*
 * The Play's own pieces the public pages draw: the medallion, the record row,
 * a badge stamp and the Play header, so the public pages draw what a Play
 * draws.
 */
export type PublicPlayArt = {
  /* An earned gym badge stamp at its resting tilt, decorative. */
  badgeStamp: (props: { tilt: number; type: PublicTypeSlug }) => ReactNode;
  /* A moment's medallion, decorative; `lg` is the Intro's partner. */
  medallion: (props: {
    className?: string;
    moment: PublicMoment;
    size?: "lg" | "md";
  }) => ReactNode;
  /* The Play header for the example Play, its tabs drawn still. */
  playHeader: (play: PublicSamplePlay) => ReactNode;
  /* One moment as the Play's history lists it. */
  recordRow: (props: {
    description?: ReactNode;
    headline: ReactNode;
    kicker: ReactNode;
    moment: PublicMoment;
  }) => ReactNode;
};
