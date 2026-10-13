import Link from "next/link";

import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import type { PokemonDetailEvolutionTreeNode } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-tree";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { formatPokemonNationalNumber } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import { cn } from "@/shared/utils/cn";

export type PokemonDetailEvolutionLinkScope = {
  activeFormId: number | null;
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  activeSpeciesId: number;
  activeVersionGroupSlug: string | null;
};

type PokemonDetailEvolutionNodeProps = {
  linkScope: PokemonDetailEvolutionLinkScope;
  node: PokemonDetailEvolutionTreeNode;
};

const getNodeTypeSlug = ({
  displayForm,
  pokemon,
}: PokemonDetailEvolutionTreeNode) => {
  const displayFormTypePair = displayForm
    ? pokemon.forms.find((formSummary) => {
        return formSummary.form.id === displayForm.id;
      })?.typePair
    : null;
  const typeSlug = (displayFormTypePair ?? pokemon.typePair).primaryType?.slug;

  return typeSlug && isPokemonTypeSlug(typeSlug) ? typeSlug : null;
};

/*
 * v3's evolution card: flat on the inset fill, the Pokémon you're reading on
 * its type tint. Every stage opens its own entry.
 */
export const PokemonDetailEvolutionNode = ({
  linkScope,
  node,
}: PokemonDetailEvolutionNodeProps) => {
  const { displayForm, pokemon } = node;
  const name =
    displayForm && !displayForm.is_default
      ? displayForm.name
      : pokemon.species.name;
  const isActive =
    pokemon.species.id === linkScope.activeSpeciesId &&
    (!linkScope.activeFormId ||
      !displayForm ||
      displayForm.id === linkScope.activeFormId);
  const href = getPokemonDetailScopeHref(pokemon.species.slug, {
    form: displayForm?.is_default ? undefined : displayForm?.slug,
    game: linkScope.activeGameSlug ?? undefined,
    generation: linkScope.activeGenerationSlug,
    versionGroup: linkScope.activeVersionGroupSlug ?? undefined,
  });

  return (
    <Link
      href={href}
      aria-current={isActive ? "page" : undefined}
      style={getPokemonTypeCssVariables(getNodeTypeSlug(node))}
      className={cn(
        "focus-visible:outline-focus flex max-w-48 min-w-30 flex-col items-center rounded-xl px-2.5 pt-2.5 pb-3 text-center transition-[transform,background-color] duration-150 outline-none hover:-translate-y-0.5 focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid sm:min-w-37.5 sm:px-4.5 sm:pt-3.5",
        isActive ? "type-tint" : "bg-surface-2 hover:bg-hover",
      )}
    >
      <PokemonPortrait
        alt=""
        imageUrl={getPokemonFormImageUrl(displayForm)}
        fallbackOnError
        sizes="110px"
        className="size-21 rounded-none bg-transparent sm:size-27.5"
        imageClassName="p-0"
      />
      <span className="text-16 mt-1 leading-tight font-extrabold text-balance">
        {name}
      </span>
      <span
        className={cn(
          "text-13 mt-0.5 font-bold tabular-nums",
          isActive ? "text-ink-tint" : "text-ink-2",
        )}
      >
        {formatPokemonNationalNumber(pokemon.species.national_number)}
      </span>
    </Link>
  );
};
