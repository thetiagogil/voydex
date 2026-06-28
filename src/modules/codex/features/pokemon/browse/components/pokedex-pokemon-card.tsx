import Link from "next/link";
import { memo, type CSSProperties } from "react";

import { appRoutes } from "@/config/routes";
import { PokemonTypeList } from "@/modules/codex/shared/components/pokemon-type-list";
import type { PokedexPokemonBrowseCard } from "@/modules/codex/shared/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Badge } from "@/shared/components/ui/badge";
import { Card, CardContent } from "@/shared/components/ui/card";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/shared/domain/pokemon/constants";
import { getPokemonCategoryLabel } from "@/shared/domain/pokemon/pokemon-categories";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

type PokedexPokemonCardProps = {
  pokemon: PokedexPokemonBrowseCard;
  priority?: boolean;
};

type PokemonCardStyle = CSSProperties & {
  "--pokemon-card-hover-border": string;
  "--pokemon-card-hover-ring": string;
  "--pokemon-card-hover-shadow": string;
  "--pokemon-card-hover-wash": string;
};

const getPokemonCardStyle = (
  type: PokemonTypeSlug | null,
): PokemonCardStyle => {
  const accent = type ? `var(--type-${type})` : "var(--primary)";

  return {
    "--pokemon-card-hover-border": `color-mix(in oklch, ${accent}, transparent 30%)`,
    "--pokemon-card-hover-ring": `color-mix(in oklch, ${accent}, transparent 55%)`,
    "--pokemon-card-hover-shadow": `0 22px 56px -32px color-mix(in oklch, ${accent}, transparent 20%)`,
    "--pokemon-card-hover-wash": `color-mix(in oklch, ${accent}, transparent 88%)`,
  };
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
    const categoryLabel = getPokemonCategoryLabel(pokemon);

    return (
      <Link
        href={appRoutes.codexPokemonGameSpecies(
          pokemon.detailGameSlug,
          pokemon.slug,
        )}
        className="group focus-visible:ring-ring focus-visible:ring-offset-background block h-full rounded-xl [contain-intrinsic-size:22rem] [content-visibility:auto] focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none"
      >
        <Card
          style={getPokemonCardStyle(portraitType)}
          className="bg-card/82 group-hover:bg-card/94 group-focus-visible:bg-card/94 relative isolate h-full border border-transparent py-0 transition-[background-color,box-shadow] duration-300 ease-out group-hover:shadow-(--pokemon-card-hover-shadow) group-hover:ring-(--pokemon-card-hover-ring) group-focus-visible:shadow-(--pokemon-card-hover-shadow) group-focus-visible:ring-(--pokemon-card-hover-ring)"
        >
          <div
            aria-hidden
            className="pointer-events-none absolute inset-0 z-20 rounded-xl border border-transparent transition-colors duration-300 group-hover:border-(--pokemon-card-hover-border) group-focus-visible:border-(--pokemon-card-hover-border)"
          />

          <div
            aria-hidden
            className="pointer-events-none absolute inset-0 z-0 bg-(--pokemon-card-hover-wash) opacity-0 transition-opacity duration-300 group-hover:opacity-100 group-focus-visible:opacity-100"
          />

          <PokemonPortrait
            alt={pokemon.imageAlt}
            imageUrl={pokemon.imageUrl}
            priority={priority}
            type={portraitType}
            className="relative z-10 aspect-4/3 w-full max-w-none rounded-t-xl rounded-b-none border-x-0 border-t-0 border-transparent transition-[background-color,border-color] duration-300 group-hover:border-(--pokemon-card-hover-border) group-focus-visible:border-(--pokemon-card-hover-border) [&_img]:p-3"
            glowClassName="transition-opacity duration-300 group-hover:opacity-30 group-focus-visible:opacity-30"
            imageClassName="transition-transform duration-300 ease-out motion-safe:group-hover:-translate-y-1 motion-safe:group-hover:scale-105 motion-safe:group-focus-visible:-translate-y-1 motion-safe:group-focus-visible:scale-105"
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
