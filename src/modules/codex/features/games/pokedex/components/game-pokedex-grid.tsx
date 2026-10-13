import Link from "next/link";
import { memo } from "react";

import { appRoutes } from "@/config/routes";
import { formatLocalPokedexNumber } from "@/modules/codex/features/games/pokedex/data/game-pokedex-browser-model";
import { PokemonCard } from "@/modules/reference/features/pokemon/components/pokemon-card";
import type { GamePokedexPokemon } from "@/modules/reference/types";

type GamePokedexGridProps = {
  gameName: string;
  gameSlug: string;
  pokemon: GamePokedexPokemon[];
};

/*
 * One plain Pokémon card per entry, numbered the way the game lists them,
 * each opening the Pokémon's entry for this exact game. Nothing here is
 * owned, so no stickers. Cards off screen skip rendering until reached.
 */
const GamePokedexGridCard = memo(
  ({
    gameName,
    gameSlug,
    pokemon,
  }: Omit<GamePokedexGridProps, "pokemon"> & {
    pokemon: GamePokedexPokemon;
  }) => {
    return (
      <Link
        href={appRoutes.codexPokemonGameSpecies(gameSlug, pokemon.species.slug)}
        aria-label={`Open ${pokemon.species.name} in ${gameName}`}
        className="block min-w-0 rounded-lg"
      >
        <PokemonCard
          state="plain"
          className="[contain-intrinsic-size:auto_128px_auto_172px] [content-visibility:auto]"
          imageAlt=""
          imageUrl={pokemon.imageUrl}
          name={pokemon.species.name}
          number={`#${formatLocalPokedexNumber(pokemon.entry.pokedex_number)}`}
          types={[
            pokemon.typePair.primaryType,
            pokemon.typePair.secondaryType,
          ].filter((type) => type !== null)}
        />
      </Link>
    );
  },
);

GamePokedexGridCard.displayName = "GamePokedexGridCard";

export const GamePokedexGrid = ({
  gameName,
  gameSlug,
  pokemon,
}: GamePokedexGridProps) => {
  return (
    <div className="grid grid-cols-3 gap-2 sm:grid-cols-[repeat(auto-fill,minmax(128px,1fr))] sm:gap-3">
      {pokemon.map((entry) => (
        <GamePokedexGridCard
          key={`${entry.entry.pokedex_id}-${entry.entry.pokedex_number}-${entry.entry.species_id}`}
          gameName={gameName}
          gameSlug={gameSlug}
          pokemon={entry}
        />
      ))}
    </div>
  );
};
