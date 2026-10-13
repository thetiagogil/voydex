export type NotFoundPokemon = {
  artUrl: string;
  name: string;
};

/* v3's not-found sentence: the Pokémon that looked, then why the page is gone. */
export const getNotFoundDescription = (
  pokemon: NotFoundPokemon | undefined,
  reason: string,
) => {
  return pokemon
    ? `${pokemon.name} looked everywhere and couldn't find it. ${reason}`
    : reason;
};
