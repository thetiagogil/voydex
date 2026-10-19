import type { PokemonDetailGenerationForm } from "@/modules/codex/features/pokemon/detail/types";
import type { PokemonGenerationFormSummary } from "@/modules/reference/types";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
  type PokemonImageSize,
} from "@/modules/reference/features/pokemon/data/pokemon-images";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import type { SegmentedControlOption } from "@/shared/components/segmented-control";

export const getPokemonDetailFormTypeSlug = (
  form: PokemonGenerationFormSummary | null,
) => {
  const typeSlug = form?.typePair.primaryType?.slug;

  return typeSlug && isPokemonTypeSlug(typeSlug) ? typeSlug : null;
};

export const getPokemonDetailFormImageUrl = (
  form: PokemonGenerationFormSummary | null,
  size?: PokemonImageSize,
) => {
  return getPokemonFormImageUrl(form?.form ?? null, size);
};

export const getPokemonDetailFormShinyImageUrl = (
  form: PokemonGenerationFormSummary | null,
  size?: PokemonImageSize,
) => {
  return getPokemonFormShinyImageUrl(form?.form ?? null, size);
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

/*
 * Each form of the generation, linked in the group you're reading when it is
 * found there, else in the first group that has it (Hisuian Arcanine opens
 * in Legends: Arceus).
 */
export const getPokemonDetailFormSwitchOptions = ({
  forms,
  speciesName,
  speciesSlug,
}: {
  forms: PokemonDetailGenerationForm[];
  speciesName: string;
  speciesSlug: string;
}): SegmentedControlOption<string>[] => {
  return forms.map(({ form, versionGroupSlug }) => ({
    href: getPokemonDetailScopeHref(speciesSlug, {
      form: form.form.is_default ? undefined : form.form.slug,
      versionGroup: versionGroupSlug,
    }),
    label: getPokemonDetailFormSwitchLabel(form.form.name, speciesName),
    value: form.form.slug,
  }));
};
