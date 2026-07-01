import Link from "next/link";
import { memo } from "react";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import { PokemonTypeList } from "@/modules/codex/shared/components/pokemon-type-list";
import type { PokedexPokemonBrowseCard } from "@/modules/codex/shared/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { getPokemonTypeBackgroundImageUrl } from "@/shared/components/pokemon/pokemon-type-backgrounds";
import {
  getPokemonTypeCssVariables,
  pokemonTypeCardSurfaceClassName,
} from "@/shared/components/pokemon/pokemon-type-styles";
import { Badge } from "@/shared/components/ui/badge";
import { Card, CardContent } from "@/shared/components/ui/card";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import { getPokemonCategoryLabel } from "@/shared/domain/pokemon/pokemon-categories";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

type PokedexPokemonCardProps = {
  pokemon: PokedexPokemonBrowseCard;
  priority?: boolean;
};

const getPokemonMetadata = (pokemon: PokedexPokemonBrowseCard) => {
  const nationalNumber = formatPokemonNationalNumber(pokemon.nationalNumber);

  if (!pokemon.introducedGeneration) {
    return nationalNumber;
  }

  return `${nationalNumber} \u00b7 ${pokemon.introducedGeneration.name}`;
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
    const categoryLabel = getPokemonCategoryLabel(pokemon);

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
        <Card className="h-full border-0 bg-transparent py-0 shadow-none ring-0 backdrop-blur-none [contain-intrinsic-size:22rem] [content-visibility:auto]">
          <PokemonPortrait
            alt={pokemon.imageAlt}
            backgroundImageClassName="scale-105 opacity-55 saturate-75 contrast-90 brightness-90 blur-[0.5px]"
            backgroundImageUrl={portraitBackgroundImageUrl}
            backgroundOverlayClassName="bg-card/30"
            imageUrl={pokemon.imageUrl}
            priority={priority}
            type={portraitType}
            className="border-app-surface-border/50 aspect-4/3 w-full max-w-none rounded-t-xl rounded-b-none border-x-0 border-t-0"
            imageClassName="p-3"
          />

          <CardContent className="relative z-10 flex flex-col gap-3 p-3">
            <div className="flex min-w-0 items-start justify-between gap-2">
              <div className="min-w-0">
                <div className="text-muted-foreground truncate text-xs leading-5 font-medium">
                  {getPokemonMetadata(pokemon)}
                </div>
                <h2 className="text-card-foreground truncate text-base leading-6 font-semibold">
                  {pokemon.name}
                </h2>
              </div>
              {categoryLabel ? (
                <Badge variant="secondary" className="mt-0.5">
                  {categoryLabel}
                </Badge>
              ) : null}
            </div>

            <PokemonTypeList
              primaryType={pokemon.primaryType}
              secondaryType={pokemon.secondaryType}
              badgeSize="sm"
              className="gap-1.5"
            />
          </CardContent>
        </Card>
      </Link>
    );
  },
);

PokedexPokemonCard.displayName = "PokedexPokemonCard";
