import Link from "next/link";
import { memo } from "react";

import { appRoutes } from "@/config/routes";
import { cn } from "@/shared/utils/cn";
import { PokemonTypeList } from "@/modules/codex/shared/components/pokemon-type-list";
import type { PokedexPokemonBrowseCard } from "@/modules/codex/shared/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { getPokemonTypeBackgroundImageUrl } from "@/shared/components/pokemon/pokemon-type-backgrounds";
import {
  getPokemonTypeCssVariables,
  pokemonTypeCardSurfaceClassName,
} from "@/shared/components/pokemon/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

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
    const portraitBackgroundImageUrl =
      getPokemonTypeBackgroundImageUrl(portraitType);

    return (
      <Link
        href={appRoutes.codexPokemonGameSpecies(
          pokemon.detailGameSlug,
          pokemon.slug,
        )}
        style={getPokemonTypeCssVariables(portraitType)}
        className={cn(
          "border-app-surface-border/70 focus-visible:ring-ring focus-visible:ring-offset-background block h-full rounded-xl border focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none",
          pokemonTypeCardSurfaceClassName,
        )}
      >
        <article className="relative isolate aspect-square h-full overflow-hidden rounded-[inherit] [contain-intrinsic-size:18rem] [content-visibility:auto]">
          <PokemonPortrait
            alt={pokemon.imageAlt}
            backgroundImageClassName="scale-110 opacity-60 saturate-75 contrast-90 brightness-90 blur-[0.5px]"
            backgroundImageUrl={portraitBackgroundImageUrl}
            backgroundOverlayClassName="bg-card/18"
            imageUrl={pokemon.imageUrl}
            priority={priority}
            type={portraitType}
            sizes="(min-width: 1280px) 25vw, (min-width: 1024px) 33vw, (min-width: 640px) 50vw, 100vw"
            className="absolute inset-0 aspect-auto h-full w-full max-w-none rounded-[inherit] border-0 bg-transparent"
            imageClassName="object-contain p-5 pb-16"
          />

          <div
            aria-hidden
            className="via-background/0 to-background/92 absolute inset-0 bg-linear-to-b from-transparent"
          />
          <div
            aria-hidden
            className="absolute inset-x-0 bottom-0 h-2/3 bg-linear-to-t from-black/84 via-black/38 to-transparent"
          />

          <div className="relative z-10 flex h-full items-end justify-between gap-3 p-4">
            <div className="min-w-0">
              <p className="text-foreground/86 truncate text-xs leading-5 font-medium drop-shadow">
                {formatPokemonNationalNumber(pokemon.nationalNumber)}
              </p>
              <h2 className="text-foreground truncate text-base leading-snug font-semibold drop-shadow">
                {pokemon.name}
              </h2>
            </div>

            <PokemonTypeList
              primaryType={pokemon.primaryType}
              secondaryType={pokemon.secondaryType}
              badgeDisplay="icon-label"
              badgeSize="sm"
              className="shrink-0 justify-end gap-1.5"
            />
          </div>
        </article>
      </Link>
    );
  },
);

PokedexPokemonCard.displayName = "PokedexPokemonCard";
