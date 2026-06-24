import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { PokemonTypeList } from "@/modules/codex/components/pokemon-type-list";
import type { PokedexPokemonCard as PokedexPokemonCardData } from "@/modules/codex/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Badge } from "@/shared/components/ui/badge";
import { Card, CardContent } from "@/shared/components/ui/card";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";

type PokedexPokemonCardProps = {
  pokemon: PokedexPokemonCardData;
  priority?: boolean;
};

const formatNationalNumber = (number: number) => {
  return `#${number.toString().padStart(4, "0")}`;
};

const getPokemonRarityLabel = (pokemon: PokedexPokemonCardData) => {
  if (pokemon.species.is_mythical) {
    return "Mythical";
  }
  if (pokemon.species.is_legendary) {
    return "Legendary";
  }
  return null;
};

const getPokemonMetadata = (pokemon: PokedexPokemonCardData) => {
  const nationalNumber = formatNationalNumber(pokemon.species.national_number);
  if (!pokemon.introducedGeneration) {
    return nationalNumber;
  }
  return `${nationalNumber} · ${pokemon.introducedGeneration.name}`;
};

export const PokedexPokemonCard = ({
  pokemon,
  priority = false,
}: PokedexPokemonCardProps) => {
  const primaryTypeSlug = pokemon.typePair.primaryType?.slug;
  const portraitType =
    primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
      ? primaryTypeSlug
      : null;
  const rarityLabel = getPokemonRarityLabel(pokemon);

  return (
    <Link
      href={appRoutes.codexPokemonSpecies(pokemon.species.slug)}
      className="group focus-visible:ring-ring focus-visible:ring-offset-background block h-full rounded-xl focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none"
    >
      <Card className="bg-card/82 group-hover:bg-card/94 group-hover:ring-primary/45 h-full py-0 transition-colors">
        <PokemonPortrait
          alt={getPokemonFormImageAlt(pokemon.defaultForm)}
          imageUrl={getPokemonFormImageUrl(pokemon.defaultForm)}
          priority={priority}
          type={portraitType}
          className="aspect-[4/3] w-full max-w-none rounded-t-xl rounded-b-none border-x-0 border-t-0 [&_img]:p-3"
        />

        <CardContent className="flex flex-col gap-3 p-3">
          <div className="flex min-w-0 items-start justify-between gap-2">
            <div className="min-w-0">
              <div className="text-muted-foreground truncate text-xs leading-5 font-medium">
                {getPokemonMetadata(pokemon)}
              </div>
              <h2 className="text-card-foreground truncate text-base leading-6 font-semibold">
                {pokemon.species.name}
              </h2>
            </div>
            {rarityLabel ? (
              <Badge variant="secondary" className="mt-0.5">
                {rarityLabel}
              </Badge>
            ) : null}
          </div>

          <PokemonTypeList
            primaryType={pokemon.typePair.primaryType}
            secondaryType={pokemon.typePair.secondaryType}
            badgeSize="sm"
            className="gap-1.5"
          />
        </CardContent>
      </Card>
    </Link>
  );
};
