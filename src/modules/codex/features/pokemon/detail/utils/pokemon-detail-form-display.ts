import type { PokemonGenerationFormSummary } from "@/modules/reference/types";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";

export const getPokemonDetailFormTypeSlug = (
  form: PokemonGenerationFormSummary | null,
) => {
  const typeSlug = form?.typePair.primaryType?.slug;

  return typeSlug && isPokemonTypeSlug(typeSlug) ? typeSlug : null;
};

export const getPokemonDetailFormImageUrl = (
  form: PokemonGenerationFormSummary | null,
) => {
  return getPokemonFormImageUrl(form?.form ?? null);
};

export const getPokemonDetailFormShinyImageUrl = (
  form: PokemonGenerationFormSummary | null,
) => {
  return getPokemonFormShinyImageUrl(form?.form ?? null);
};

export const getPokemonDetailFormImageAlt = (
  form: PokemonGenerationFormSummary | null,
  fallbackName = "Pokémon",
) => {
  return (
    getPokemonFormImageAlt(form?.form ?? null) || `${fallbackName} artwork`
  );
};

/*
 * A form's name in the form switch, which sits under the species' name:
 * "Arceus (Fairy)" reads as "Fairy"; "Hisuian Arcanine" stays whole.
 */
export const getPokemonDetailFormSwitchLabel = (
  formName: string,
  speciesName: string,
) => {
  const prefix = `${speciesName} (`;

  return formName.startsWith(prefix) && formName.endsWith(")")
    ? formName.slice(prefix.length, -1)
    : formName;
};

/* Each form of the generation, linked in the game and generation you're reading. */
export const getPokemonDetailFormSwitchItems = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  speciesName,
  speciesSlug,
}: {
  activeForm: PokemonGenerationFormSummary | null;
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  forms: PokemonGenerationFormSummary[];
  speciesName: string;
  speciesSlug: string;
}) => {
  return forms.map((form) => ({
    href: getPokemonDetailScopeHref(speciesSlug, {
      form: form.form.is_default ? undefined : form.form.slug,
      game: activeGameSlug ?? undefined,
      generation: activeGenerationSlug,
    }),
    id: form.form.id,
    isActive: form.form.id === activeForm?.form.id,
    label: getPokemonDetailFormSwitchLabel(form.form.name, speciesName),
  }));
};
