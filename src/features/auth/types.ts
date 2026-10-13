export type AuthPokemonForm = {
  name: string;
  sprite_slug: string;
};

/*
 * The renders of the Pokémon peeking over the Log in card. The reference
 * module owns how they resolve, and a global feature can't import a module,
 * so the route passes its helper in.
 */
export type AuthArt = {
  pokemon: (form: AuthPokemonForm) => string | null;
};
