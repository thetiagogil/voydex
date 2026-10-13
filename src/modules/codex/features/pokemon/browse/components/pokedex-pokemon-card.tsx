import Link from "next/link";
import { memo } from "react";

import { appRoutes } from "@/config/routes";
import { PokemonCard } from "@/modules/reference/features/pokemon/components/pokemon-card";
import { formatPokemonNationalNumber } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type { PokedexPokemonBrowseCard } from "@/modules/reference/types";

type PokedexPokemonCardProps = {
  pokemon: PokedexPokemonBrowseCard;
};

/*
 * A Codex Pokémon: the one Pokémon card, plain (nothing here is owned), that
 * opens the Pokémon's entry. The link reads as its number, name and types, so
 * the art beside the name is decorative. Cards off screen skip rendering
 * until reached.
 */
export const PokedexPokemonCard = memo(
  ({ pokemon }: PokedexPokemonCardProps) => {
    return (
      <Link
        href={appRoutes.codexPokemonGameSpecies(
          pokemon.detailGameSlug,
          pokemon.slug,
        )}
        className="block min-w-0 rounded-lg"
      >
        <PokemonCard
          state="plain"
          className="[contain-intrinsic-size:auto_128px_auto_172px] [content-visibility:auto]"
          imageAlt=""
          imageUrl={pokemon.imageUrl}
          name={pokemon.name}
          number={formatPokemonNationalNumber(pokemon.nationalNumber)}
          types={[pokemon.primaryType, pokemon.secondaryType].filter(
            (type) => type !== null,
          )}
        />
      </Link>
    );
  },
);

PokedexPokemonCard.displayName = "PokedexPokemonCard";
