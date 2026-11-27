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

export type PublicArt = {
  /* A game's cover, decorative: the words beside it name the game. */
  gameCover: (props: { className?: string; game: PublicGame }) => ReactNode;
  /* A Pokémon's render URL, or null when there is none. */
  pokemon: (form: PublicPokemonForm) => string | null;
  /*
   * A Pokémon as the small round portrait a team at a glance is (a Play's
   * card, a Plan's strip), decorative: the words around it name it.
   */
  pokemonAvatar: (props: {
    className?: string;
    pokemon: PublicPokemon;
  }) => ReactNode;
  /* The open slot beside those portraits, decorative. */
  pokemonAvatarSlot: (props: { className?: string }) => ReactNode;
};

/* A Pokémon the public pages show: its name, render and type colour. */
export type PublicPokemon = PublicPokemonForm & {
  type: PublicTypeSlug;
};

/*
 * A gym badge the public pages show: its type and the name of its picture on
 * the assets site (`tracking.mainline_badges.sprite_slug`).
 */
export type PublicBadge = { spriteSlug: string; type: PublicTypeSlug };

/* What a moment's medallion holds: a gym badge, a note or a Pokémon. */
export type PublicMoment =
  | (PublicBadge & { kind: "badge" })
  | { kind: "note" }
  | { kind: "pokemon"; pokemon: PublicPokemon };

/* The example Play the front page shows. */
export type PublicSamplePlay = {
  game: PublicGame & { region: string };
  name: string;
  playtimeMinutes: number;
  status: string;
  trainer: string;
};

/*
 * The Play's own pieces the front page draws: a badge stamp and a history
 * row, so the front page draws what a Play draws.
 */
export type PublicPlayArt = {
  /* An earned gym badge stamp at its resting tilt, decorative. */
  badgeStamp: (props: PublicBadge & { tilt: number }) => ReactNode;
  /* One moment as the Play's history lists it. */
  recordRow: (props: {
    description?: ReactNode;
    headline: ReactNode;
    kicker: ReactNode;
    moment: PublicMoment;
  }) => ReactNode;
};
