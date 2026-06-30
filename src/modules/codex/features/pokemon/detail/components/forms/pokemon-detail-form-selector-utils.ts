import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";

export type PokemonDetailFormSelectorScope = {
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  speciesSlug: string;
};

type PokemonDetailFormHrefParams = PokemonDetailFormSelectorScope & {
  form: PokemonGenerationFormSummary;
};

export const getPokemonDetailFormSearchValue = (
  form: PokemonGenerationFormSummary,
) => {
  return [
    form.form.name,
    form.typePair.primaryType?.name,
    form.typePair.secondaryType?.name,
  ]
    .filter(Boolean)
    .join(" ");
};

export const getPokemonDetailFormItemValue = (
  form: PokemonGenerationFormSummary,
) => {
  return form.form.slug;
};

export const getFilteredPokemonDetailForms = (
  forms: PokemonGenerationFormSummary[],
  inputValue: string,
) => {
  const normalizedInputValue = inputValue.trim().toLowerCase();

  if (!normalizedInputValue) {
    return forms;
  }

  return forms.filter((form) => {
    return getPokemonDetailFormSearchValue(form)
      .toLowerCase()
      .includes(normalizedInputValue);
  });
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
