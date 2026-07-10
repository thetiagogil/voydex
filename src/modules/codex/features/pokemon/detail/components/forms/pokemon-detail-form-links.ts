import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import type { PokemonGenerationFormSummary } from "@/modules/reference/types";

export type PokemonDetailFormSelectorScope = {
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  speciesSlug: string;
};

type PokemonDetailFormHrefParams = PokemonDetailFormSelectorScope & {
  form: PokemonGenerationFormSummary;
};

export const getPokemonDetailFormHref = ({
  activeGameSlug,
  activeGenerationSlug,
  form,
  speciesSlug,
}: PokemonDetailFormHrefParams) => {
  return getPokemonDetailScopeHref(speciesSlug, {
    form: form.form.is_default ? undefined : form.form.slug,
    game: activeGameSlug ?? undefined,
    generation: activeGenerationSlug,
  });
};
