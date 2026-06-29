import { getPokemonDetailEvolutionDisplayForm } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-display";
import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionSpeciesSummary,
} from "@/modules/codex/shared/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

type PokemonDetailEvolutionNodeProps = {
  pokemon: PokemonEvolutionSpeciesSummary;
  scopedEdges: PokemonEvolutionEdgeSummary[];
};

const getEvolutionNodeTypeSlug = (pokemon: PokemonEvolutionSpeciesSummary) => {
  const typeSlug = pokemon.typePair.primaryType?.slug;

  return typeSlug && isPokemonTypeSlug(typeSlug) ? typeSlug : null;
};

export const PokemonDetailEvolutionNode = ({
  pokemon,
  scopedEdges,
}: PokemonDetailEvolutionNodeProps) => {
  const displayForm = getPokemonDetailEvolutionDisplayForm({
    pokemon,
    scopedEdges,
  });
  const imageAlt =
    getPokemonFormImageAlt(displayForm) || `${pokemon.species.name} artwork`;
  const imageUrl = getPokemonFormImageUrl(displayForm);
  const typeSlug = getEvolutionNodeTypeSlug(pokemon);

  return (
    <article
      aria-label={`${formatPokemonNationalNumber(
        pokemon.species.national_number,
      )} ${pokemon.species.name}`}
      className="min-w-0"
    >
      <PokemonPortrait
        alt={imageAlt}
        imageUrl={imageUrl}
        type={typeSlug}
        fallbackOnError
        className="border-app-surface-border/70 bg-background/30 size-16 rounded-full sm:size-18"
        glowClassName="opacity-20"
        imageClassName="p-2"
      />
    </article>
  );
};
