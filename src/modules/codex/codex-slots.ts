import type { ReactNode } from "react";

/*
 * The Codex's slots for signed-in pieces another module owns, such as
 * Mainline's "Add to a Play" or "Your Plays". The Codex can't import Mainline,
 * so its routes fill these and pass them in, as the public pages take their
 * art. Every slot is optional: left empty, the page reads as it does signed
 * out.
 */

/* The Pokémon an entry is showing, as the route's pieces need it. */
export type CodexPokemonEntrySlotContext = {
  /* The shown form; its slug is null for the default form. */
  formId: number | null;
  formSlug: string | null;
  imageUrl: string | null;
  /* The shown form's name, such as "Hisuian Arcanine". */
  pokemonName: string;
  speciesId: number;
  speciesName: string;
  speciesSlug: string;
  /* The base version group the entry is read in. */
  versionGroupSlug: string;
};

export type CodexPokemonEntrySlots = {
  /*
   * The hero's first action, before Favourite: "Your Plays (N)", the page's
   * main button, a jump to the In your Plays section at the end.
   */
  heroActions?: (entry: CodexPokemonEntrySlotContext) => ReactNode;
  /*
   * v3's "In your Plays" section card (with its own empty state and the
   * Add to a Play menu), the page's last section. Render a
   * `DetailSectionCard`.
   */
  inYourPlays?: (entry: CodexPokemonEntrySlotContext) => ReactNode;
};

/* The version group page and the game picked in its version switch. */
export type CodexVersionGroupSlotContext = {
  /* "Pokémon Sword". */
  gameName: string;
  /* "Sword", for "Start a Sword Play". */
  gameShortName: string;
  gameSlug: string;
  /* Every game in the group, for "Your Plays" across the pair. */
  versionGameSlugs: string[];
  versionGroupSlug: string;
};

export type CodexVersionGroupSlots = {
  /*
   * "Your Plays", the page's last section: your Plays of these games, with
   * Start a {Version} Play and Plan a team in line with the title. The head
   * carries no actions. Render a `DetailSectionCard`.
   */
  yourPlays?: (context: CodexVersionGroupSlotContext) => ReactNode;
};
