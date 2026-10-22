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
import {
  battleFormMechanicNames,
  type BattleFormLink,
} from "@/modules/reference/features/pokemon/data/battle-mechanics";

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

/* One entry in the form menu: where it opens, and what the menu shows. */
export type PokemonDetailFormOption = {
  /* "In battle · Mega Evolution" for a battle form. */
  description?: string;
  href: string;
  imageUrl: string | null;
  label: string;
  /* The full form name, for the art's stand-in. */
  name: string;
  typeSlug: string | null;
  value: string;
};

/*
 * Each form of the generation, linked in the group you're reading when it is
 * found there, else in the first group that has it (Hisuian Arcanine opens
 * in Legends: Arceus). Battle forms come last, each saying how it is
 * reached.
 */
export const getPokemonDetailFormOptions = ({
  battleForms,
  forms,
  speciesName,
  speciesSlug,
}: {
  battleForms: BattleFormLink[];
  forms: PokemonDetailGenerationForm[];
  speciesName: string;
  speciesSlug: string;
}): PokemonDetailFormOption[] => {
  const mechanicOf = (formId: number) =>
    battleForms.find((link) => link.formId === formId)?.mechanic ?? null;
  const options = forms.map(({ form, versionGroupSlug }) => {
    const mechanic = mechanicOf(form.form.id);

    return {
      isBattle: mechanic !== null,
      option: {
        description: mechanic
          ? `In battle · ${battleFormMechanicNames[mechanic]}`
          : undefined,
        href: getPokemonDetailScopeHref(speciesSlug, {
          form: form.form.is_default ? undefined : form.form.slug,
          versionGroup: versionGroupSlug,
        }),
        imageUrl: getPokemonFormImageUrl(form.form, "sm"),
        label: getPokemonDetailFormSwitchLabel(form.form.name, speciesName),
        name: form.form.name,
        typeSlug: getPokemonDetailFormTypeSlug(form),
        value: form.form.slug,
      },
    };
  });

  return [
    ...options.filter(({ isBattle }) => !isBattle),
    ...options.filter(({ isBattle }) => isBattle),
  ].map(({ option }) => option);
};
