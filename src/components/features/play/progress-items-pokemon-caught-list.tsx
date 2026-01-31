import { Icon } from "@/components/shared/icon";
import { SquareCheckbox } from "@/components/shared/square-checkbox";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import {
  useCheckPlayPokemonCaught,
  useCheckPlayPokemonCaughtBulk,
} from "@/hooks/gameplay/usePlayPokemonCaughtCheck";
import {
  useUncheckPlayPokemonCaught,
  useUncheckPlayPokemonCaughtBulk,
} from "@/hooks/gameplay/usePlayPokemonCaughtUncheck";
import { useMemo, useState } from "react";

interface ProgressItemsPokemonCaughtListProps {
  playId: string;
  pokemonCaught: PlayPokemonCaught[];
}

export const ProgressItemsPokemonCaughtList = ({
  playId,
  pokemonCaught,
}: ProgressItemsPokemonCaughtListProps) => {
  const [searchQuery, setSearchQuery] = useState("");
  const checkCaught = useCheckPlayPokemonCaught();
  const uncheckCaught = useUncheckPlayPokemonCaught();
  const checkBulk = useCheckPlayPokemonCaughtBulk();
  const uncheckBulk = useUncheckPlayPokemonCaughtBulk();

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

      return false;
    });
  }, [pokemonCaught, searchQuery]);

  const handleToggle = (pokemon: PlayPokemonCaught, checked: boolean) => {
    if (checked) {
      checkCaught.mutate({
        playId,
        speciesId: pokemon.species_id,
        formId: pokemon.form_id || 0,
      });
    } else {
      uncheckCaught.mutate({
        playId,
        speciesId: pokemon.species_id,
        formId: pokemon.form_id || 0,
      });
    }
  };

  const handleSelectAll = () => {
    const pokemonToCheck = filteredPokemon
      .filter((pokemon) => !pokemon.caught)
      .map((pokemon) => ({
        speciesId: pokemon.species_id,
        formId: pokemon.form_id || 0,
      }));

    if (pokemonToCheck.length > 0) {
      checkBulk.mutate({
        playId,
        pokemon: pokemonToCheck,
      });
    }
  };

  const handleUnselectAll = () => {
    const speciesIdsToUncheck = filteredPokemon
      .filter((pokemon) => pokemon.caught)
      .map((pokemon) => pokemon.species_id);

    if (speciesIdsToUncheck.length > 0) {
      uncheckBulk.mutate({
        playId,
        speciesIds: speciesIdsToUncheck,
      });
    }
  };

  return (
    <>
      <div className="relative mt-1">
        <Icon
          name="search"
          className="text-muted-foreground absolute top-1/2 left-3 -translate-y-1/2"
        />
        <Input
          type="text"
          placeholder="Search by name, number or type..."
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
          className="pl-9"
        />
        {searchQuery && (
          <Icon
            name="x"
            onClick={() => setSearchQuery("")}
            className="text-muted-foreground hover:text-foreground absolute top-1/2 right-3 -translate-y-1/2 cursor-pointer transition-colors"
          />
        )}
      </div>

      <div className="flex justify-end gap-2">
        <Button variant="outline-secondary" onClick={handleSelectAll}>
          Select All
        </Button>
        <Button variant="outline-secondary" onClick={handleUnselectAll}>
          Unselect All
        </Button>
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
              onCheckedChange={(checked) => handleToggle(pokemon, checked)}
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
            </SquareCheckbox>
          );
        })}
      </div>
    </>
  );
};
