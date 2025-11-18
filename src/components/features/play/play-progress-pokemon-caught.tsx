import { SquareCheckbox } from "@/components/shared/square-checkbox";

export const PlayProgressPokemonCaught = ({
  pokemonCaught,
}: {
  pokemonCaught: PlayPokemonCaught[];
}) => {
  return (
    <div className="grid gap-3 pb-4 sm:grid-cols-2">
      {pokemonCaught.map((pokemon: PlayPokemonCaught) => {
        const isCaught = pokemon.caught;
        return (
          <SquareCheckbox
            key={`${pokemon.species_id}-${pokemon.form_id}`}
            title={
              <span className="text-muted-foreground text-xs font-medium">
                #{pokemon.regional_number.toString().padStart(3, "0")}
              </span>
            }
            id={`pokemon-${pokemon.species_id}-${pokemon.form_id}`}
            checked={isCaught}
            className="flex flex-col items-center justify-center gap-2 text-center"
          >
            {/* Regional number badge */}

            {/* Pokemon sprite */}
            {pokemon.form?.sprite_url ? (
              <img
                src={pokemon.form.sprite_url}
                alt={pokemon.species.name}
                className="h-16 object-contain"
              />
            ) : (
              <div className="bg-muted border-accent flex h-16 w-16 items-center justify-center rounded-full border">
                <span className="text-muted-foreground text-xs"></span>
              </div>
            )}

            {/* Pokemon name */}
            <div className="flex-1">
              <h4 className="text-sm font-medium">{pokemon.species.name}</h4>
              {pokemon.form && pokemon.form.name !== pokemon.species.name && (
                <p className="text-muted-foreground text-xs">
                  {pokemon.form.name}
                </p>
              )}
            </div>

            {/* Types */}
            {pokemon.types && pokemon.types.length > 0 && (
              <div className="flex gap-1">
                {pokemon.types.map((type: any) => (
                  <span
                    key={type.id}
                    className="bg-muted text-muted-foreground rounded px-2 py-0.5 text-xs"
                  >
                    {type.name}
                  </span>
                ))}
              </div>
            )}
          </SquareCheckbox>
        );
      })}
    </div>
  );
};
