/*
 * A card's name where it shows less than it means: the species' name on
 * screen ("Raichu") and the form's full name ("Alolan Raichu") read in its
 * place, so assistive tech and a find by name still tell two forms apart.
 * Without `readAs`, or when it matches, the name reads as it shows.
 */
export const PokemonShownName = ({
  name,
  readAs,
}: {
  name: string;
  readAs?: string | null;
}) =>
  readAs && readAs !== name ? (
    <>
      <span aria-hidden>{name}</span>
      <span className="sr-only">{readAs}</span>
    </>
  ) : (
    name
  );
