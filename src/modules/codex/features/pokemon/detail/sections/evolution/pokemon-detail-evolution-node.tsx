import Link from "next/link";

import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import type { PokemonDetailEvolutionTreeNode } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-tree";
import { PokemonCard } from "@/modules/reference/features/pokemon/components/pokemon-card";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { formatPokemonNationalNumber } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";

export type PokemonDetailEvolutionLinkScope = {
  activeFormId: number | null;
  activeSpeciesId: number;
  activeVersionGroupSlug: string;
};

type PokemonDetailEvolutionNodeProps = {
  linkScope: PokemonDetailEvolutionLinkScope;
  node: PokemonDetailEvolutionTreeNode;
};

/* The stage's types, from the form it shows when it shows one. */
const getNodeTypes = ({
  displayForm,
  pokemon,
}: PokemonDetailEvolutionTreeNode) => {
  const typePair =
    (displayForm
      ? pokemon.forms.find((formSummary) => {
          return formSummary.form.id === displayForm.id;
        })?.typePair
      : null) ?? pokemon.typePair;

  return [typePair.primaryType, typePair.secondaryType].flatMap((type) =>
    type ? [{ name: type.name, slug: type.slug }] : [],
  );
};

/*
 * A stage of the line as the one Pokémon card the Codex lists use (number,
 * art on its type circle, name, type dots), the Pokémon you're reading
 * picked like a chosen card elsewhere. Every stage opens its own entry.
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
    versionGroup: linkScope.activeVersionGroupSlug,
  });

  return (
    <Link
      href={href}
      aria-current={isActive ? "page" : undefined}
      className="focus-visible:outline-focus block w-28 shrink-0 rounded-lg outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid sm:w-32"
    >
      <PokemonCard
        state="plain"
        picked={isActive}
        imageAlt=""
        imageUrl={getPokemonFormImageUrl(displayForm)}
        name={name}
        number={formatPokemonNationalNumber(pokemon.species.national_number)}
        size="fluid"
        types={getNodeTypes(node)}
      />
    </Link>
  );
};
