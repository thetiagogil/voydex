import { formatPokemonNationalNumber } from "@/modules/reference/features/pokemon/display/pokemon-formatters";

type PokemonDetailSpeciesSelectorPokemon = {
  name: string;
  nationalNumber: number;
};

type PokemonDetailSpeciesSelectorLabelProps = {
  pokemon: PokemonDetailSpeciesSelectorPokemon;
};

export const PokemonDetailSpeciesSelectorLabel = ({
  pokemon,
}: PokemonDetailSpeciesSelectorLabelProps) => {
  return (
    <span className="min-w-0 truncate">
      {formatPokemonNationalNumber(pokemon.nationalNumber)} {pokemon.name}
    </span>
  );
};
