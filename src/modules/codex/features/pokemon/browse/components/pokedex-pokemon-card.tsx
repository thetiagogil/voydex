import Link from "next/link";
import { memo } from "react";

import { appRoutes } from "@/config/routes";
import { cn } from "@/shared/utils/cn";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import type { PokedexPokemonBrowseCard } from "@/modules/reference/types";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import {
  getPokemonTypeCssVariables,
  pokemonTypeCardSurfaceClassName,
} from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { formatPokemonNationalNumber } from "@/modules/reference/features/pokemon/display/pokemon-formatters";

type PokedexPokemonCardProps = {
  pokemon: PokedexPokemonBrowseCard;
  priority?: boolean;
};

export const PokedexPokemonCard = memo(
  ({ pokemon, priority = false }: PokedexPokemonCardProps) => {
    const primaryTypeSlug = pokemon.primaryType?.slug;
    const portraitType =
      primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
        ? primaryTypeSlug
        : null;

    return (
      <Link
        href={appRoutes.codexPokemonGameSpecies(
          pokemon.detailGameSlug,
          pokemon.slug,
        )}
        aria-label={`Open ${pokemon.name} field guide`}
        style={getPokemonTypeCssVariables(portraitType)}
        className={cn(
          "group focus-visible:ring-ring focus-visible:ring-offset-background block h-full rounded-xl border focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none",
          pokemonTypeCardSurfaceClassName,
        )}
      >
        <article className="flex h-full flex-col overflow-hidden rounded-[inherit] [contain-intrinsic-size:15rem] [content-visibility:auto]">
          <PokemonPortrait
            alt={pokemon.imageAlt}
            imageUrl={pokemon.imageUrl}
            priority={priority}
            type={portraitType}
            sizes="(min-width: 1280px) 25vw, (min-width: 768px) 33vw, 50vw"
            className="aspect-4/3 w-full rounded-none border-0 bg-transparent"
            glowClassName="inset-8 opacity-10 transition-opacity duration-200 group-hover:opacity-16"
            imageClassName="object-contain p-4 sm:p-5"
          />

          <div className="flex flex-1 items-end justify-between gap-1 px-2.5 pb-2.5 sm:px-4 sm:pb-4">
            <div className="min-w-0">
              <p className="text-muted-foreground truncate text-[0.68rem] leading-4 font-semibold tracking-[0.08em] uppercase">
                {formatPokemonNationalNumber(pokemon.nationalNumber)}
              </p>
              <h3 className="text-foreground truncate font-serif text-sm leading-snug font-semibold sm:text-base lg:text-lg">
                {pokemon.name}
              </h3>
            </div>

            <PokemonTypeList
              primaryType={pokemon.primaryType}
              secondaryType={pokemon.secondaryType}
              badgeDisplay="icon-label"
              badgeSize="sm"
              badgeVariant="field-guide"
              className="shrink-0 flex-col items-end gap-1 lg:flex-row lg:gap-1.5"
            />
          </div>
        </article>
      </Link>
    );
  },
);

PokedexPokemonCard.displayName = "PokedexPokemonCard";
