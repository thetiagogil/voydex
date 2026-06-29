import Link from "next/link";
import type { CSSProperties } from "react";

import { getPokemonDetailEvolutionDisplayForm } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-display";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionSpeciesSummary,
  PokemonForm,
  PokemonTypePair,
} from "@/modules/codex/shared/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
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
  linkScope: PokemonDetailEvolutionNodeLinkScope;
  pokemon: PokemonEvolutionSpeciesSummary;
  scopedEdges: PokemonEvolutionEdgeSummary[];
};

type EvolutionNodeTypeSlug = string | null;

const getEvolutionNodeDisplayTypeSlug = ({
  displayForm,
  pokemon,
}: {
  displayForm: PokemonForm | null;
  pokemon: PokemonEvolutionSpeciesSummary;
}) => {
  const displayFormTypePair =
    displayForm &&
    pokemon.forms.find((formSummary) => {
      return formSummary.form.id === displayForm.id;
    })?.typePair;
  const typePair: PokemonTypePair = displayFormTypePair ?? pokemon.typePair;
  const typeSlug = typePair.primaryType?.slug;

  return typeSlug && isPokemonTypeSlug(typeSlug) ? typeSlug : null;
};

const getEvolutionNodeStyle = (typeSlug: EvolutionNodeTypeSlug) => {
  const colorValue = typeSlug ? `var(--type-${typeSlug})` : "var(--primary)";

  return {
    "--pokemon-evolution-node-color": colorValue,
    "--pokemon-evolution-node-background": `color-mix(in oklch, ${colorValue}, transparent 82%)`,
    "--pokemon-evolution-node-shadow": `0 0 20px color-mix(in oklch, ${colorValue}, transparent 68%)`,
  } as CSSProperties;
};

export const PokemonDetailEvolutionNode = ({
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
  const style = getEvolutionNodeStyle(typeSlug);
  const nationalNumber = formatPokemonNationalNumber(
    pokemon.species.national_number,
  );
  const href = getPokemonDetailScopeHref(pokemon.species.slug, {
    form: displayForm?.is_default ? undefined : displayForm?.slug,
    game: linkScope.activeGameSlug ?? undefined,
    generation: linkScope.activeGenerationSlug,
    versionGroup: linkScope.activeVersionGroupSlug ?? undefined,
  });

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
        <PokemonPortrait
          alt={imageAlt}
          imageUrl={imageUrl}
          type={typeSlug}
          fallbackOnError
          className="border-app-surface-border/70 bg-background/30 size-16 rounded-full transition-all duration-200 group-hover:border-(--pokemon-evolution-node-color) group-hover:bg-(--pokemon-evolution-node-background) group-hover:shadow-(--pokemon-evolution-node-shadow) group-focus-visible:border-(--pokemon-evolution-node-color) group-focus-visible:bg-(--pokemon-evolution-node-background) group-focus-visible:shadow-(--pokemon-evolution-node-shadow) sm:size-18"
          glowClassName="opacity-20 transition-opacity duration-200 group-hover:opacity-35 group-focus-visible:opacity-35"
          imageClassName="p-2"
        />
      </Link>
    </article>
  );
};
