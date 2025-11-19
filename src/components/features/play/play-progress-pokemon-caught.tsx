import { SquareCheckbox } from "@/components/shared/square-checkbox";
import { TypeBadge } from "@/components/shared/type-badge";
import { Input } from "@/components/ui/input";
import { Search, X } from "lucide-react";
import { useMemo, useState } from "react";

export const PlayProgressPokemonCaught = ({
  pokemonCaught,
}: {
  pokemonCaught: PlayPokemonCaught[];
}) => {
  const [searchQuery, setSearchQuery] = useState("");

  const filteredPokemon = useMemo(() => {
    if (!searchQuery.trim()) return pokemonCaught;

    const query = searchQuery.toLowerCase().trim();

    return pokemonCaught.filter((pokemon) => {
      // Search by species name
      if (pokemon.species.name.toLowerCase().includes(query)) return true;

      // Search by form name
      if (pokemon.form?.name?.toLowerCase().includes(query)) return true;

      // Search by regional number
      if (pokemon.regional_number.toString().includes(query)) return true;

      // Search by type
      if (
        pokemon.types?.some((type: any) =>
          type.name.toLowerCase().includes(query),
        )
      )
        return true;

      return false;
    });
  }, [pokemonCaught, searchQuery]);

  return (
    <>
      <div className="relative mt-1">
        <Search className="text-muted-foreground absolute top-1/2 left-3 h-4 w-4 -translate-y-1/2" />
        <Input
          type="text"
          placeholder="Search by name, number or type..."
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
          className="pl-9"
        />
        {searchQuery && (
          <X
            onClick={() => setSearchQuery("")}
            className="text-muted-foreground absolute top-1/2 right-3 h-4 w-4 -translate-y-1/2"
          />
        )}
      </div>

      <div className="grid gap-4 sm:grid-cols-2">
        {filteredPokemon.map((pokemon: PlayPokemonCaught) => {
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
                    <TypeBadge key={type.id} type={type.name as Type} />
                  ))}
                </div>
              )}
            </SquareCheckbox>
          );
        })}
      </div>
    </>
  );
};
