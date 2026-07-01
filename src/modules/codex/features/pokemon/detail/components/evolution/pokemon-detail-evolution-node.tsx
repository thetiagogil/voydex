import Link from "next/link";

import { PokemonDetailActionPortrait } from "@/modules/codex/features/pokemon/detail/components/portrait/pokemon-detail-action-portrait";
import { getPokemonDetailEvolutionDisplayForm } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-display";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionSpeciesSummary,
  PokemonForm,
  PokemonTypePair,
} from "@/modules/codex/shared/types";
import { getPokemonTypeCssVariables } from "@/shared/components/pokemon/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/shared/domain/pokemon/constants";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

export type PokemonDetailEvolutionNodeLinkScope = {
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  activeVersionGroupSlug: string | null;
};

type PokemonDetailEvolutionNodeProps = {
  activeFormId: number | null;
  activeSpeciesId: number;
  linkScope: PokemonDetailEvolutionNodeLinkScope;
  pokemon: PokemonEvolutionSpeciesSummary;
  scopedEdges: PokemonEvolutionEdgeSummary[];
};

type EvolutionNodeTypeSlug = PokemonTypeSlug | null;

const getEvolutionNodeDisplayTypeSlug = ({
  displayForm,
  pokemon,
}: {
  displayForm: PokemonForm | null;
  pokemon: PokemonEvolutionSpeciesSummary;
}): EvolutionNodeTypeSlug => {
  const displayFormTypePair =
    displayForm &&
    pokemon.forms.find((formSummary) => {
      return formSummary.form.id === displayForm.id;
    })?.typePair;
  const typePair: PokemonTypePair = displayFormTypePair ?? pokemon.typePair;
  const typeSlug = typePair.primaryType?.slug;

  return typeSlug && isPokemonTypeSlug(typeSlug) ? typeSlug : null;
};

export const PokemonDetailEvolutionNode = ({
  activeFormId,
  activeSpeciesId,
  linkScope,
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
  const typeSlug = getEvolutionNodeDisplayTypeSlug({
    displayForm,
    pokemon,
  });
  const style = getPokemonTypeCssVariables(typeSlug);
  const nationalNumber = formatPokemonNationalNumber(
    pokemon.species.national_number,
  );
  const href = getPokemonDetailScopeHref(pokemon.species.slug, {
    form: displayForm?.is_default ? undefined : displayForm?.slug,
    game: linkScope.activeGameSlug ?? undefined,
    generation: linkScope.activeGenerationSlug,
    versionGroup: linkScope.activeVersionGroupSlug ?? undefined,
  });
  const isActive =
    pokemon.species.id === activeSpeciesId &&
    (!activeFormId || !displayForm || displayForm.id === activeFormId);

  return (
    <article
      aria-label={`${nationalNumber} ${pokemon.species.name}`}
      className="min-w-0"
    >
      <Link
        href={href}
        aria-label={`Open ${nationalNumber} ${pokemon.species.name}`}
        style={style}
        className="group focus-visible:ring-primary focus-visible:ring-offset-background block rounded-full focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none"
      >
        <PokemonDetailActionPortrait
          alt={imageAlt}
          imageUrl={imageUrl}
          isActive={isActive}
          type={typeSlug}
        />
      </Link>
    </article>
  );
};
