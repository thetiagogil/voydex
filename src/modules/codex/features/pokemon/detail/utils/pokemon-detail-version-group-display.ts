/*
 * A version group as v3 names it in a section's aside: "Sword · Shield". The
 * stored name's slash would read like the head's crumb separator.
 */
export const formatPokemonDetailVersionGroupName = (name: string) => {
  return name.replaceAll(" / ", " · ");
};
