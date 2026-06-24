import { appRoutes } from "@/config/routes";
import { CodexResourceCard } from "@/modules/codex/components/codex-browse";
import { PokemonTypeList } from "@/modules/codex/components/pokemon-type-list";
import type { PokedexPokemonCard as PokedexPokemonCardData } from "@/modules/codex/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Badge } from "@/shared/components/ui/badge";
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

export const PokedexPokemonCard = ({
  pokemon,
  priority = false,
}: PokedexPokemonCardProps) => {
  const primaryTypeSlug = pokemon.typePair.primaryType?.slug;
  const portraitType =
    primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
      ? primaryTypeSlug
      : null;

  return (
    <CodexResourceCard
      href={appRoutes.codexPokemonSpecies(pokemon.species.slug)}
      description={formatNationalNumber(pokemon.species.national_number)}
      title={pokemon.species.name}
      media={
        <PokemonPortrait
          alt={getPokemonFormImageAlt(pokemon.defaultForm)}
          imageUrl={getPokemonFormImageUrl(pokemon.defaultForm)}
          priority={priority}
          type={portraitType}
          className="mx-auto aspect-square max-w-44"
        />
      }
      contentClassName="gap-4"
    >
      <PokemonTypeList
        primaryType={pokemon.typePair.primaryType}
        secondaryType={pokemon.typePair.secondaryType}
      />

      <div className="flex flex-wrap gap-2">
        {pokemon.introducedGeneration ? (
          <Badge variant="outline">{pokemon.introducedGeneration.name}</Badge>
        ) : null}
        {pokemon.species.is_legendary ? (
          <Badge variant="secondary">Legendary</Badge>
        ) : null}
        {pokemon.species.is_mythical ? (
          <Badge variant="secondary">Mythical</Badge>
        ) : null}
      </div>
    </CodexResourceCard>
  );
};
