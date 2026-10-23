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
  getBattleFormMechanicNote,
  type BattleFormLink,
} from "@/modules/reference/features/pokemon/data/battle-mechanics";
import {
  formClassHeadings,
  type FormClass,
} from "@/modules/reference/features/pokemon/domain/form-classes";

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
  /* "Mega Evolution" for a battle form whose name doesn't say it. */
  description?: string;
  /* The class heading it sits under: Variants, Forms or Battle forms. */
  group?: string;
  href: string;
  imageUrl: string | null;
  label: string;
  /* The full form name, for the art's stand-in. */
  name: string;
  typeSlug: string | null;
  value: string;
};

const classOrder: (FormClass | null)[] = [null, "variant", "form", "battle"];

/*
 * Each form of the generation, linked in the group you're reading when it is
 * found there, else in the first group that has it (Hisuian Arcanine opens
 * in Legends: Arceus), grouped by class: variants, forms, then battle forms
 * with the mechanic that reaches them. A default with only battle forms
 * leads under no heading.
 */
export const getPokemonDetailFormOptions = ({
  battleForms,
  formClassById,
  forms,
  speciesName,
  speciesSlug,
}: {
  battleForms: BattleFormLink[];
  formClassById: Record<number, FormClass | null>;
  forms: PokemonDetailGenerationForm[];
  speciesName: string;
  speciesSlug: string;
}): PokemonDetailFormOption[] => {
  const mechanicOf = (formId: number) =>
    battleForms.find((link) => link.formId === formId)?.mechanic ?? null;
  const options = forms.map(({ form, versionGroupSlug }) => {
    const mechanic = mechanicOf(form.form.id);
    const formClass = formClassById[form.form.id] ?? null;
    const label = getPokemonDetailFormSwitchLabel(form.form.name, speciesName);

    return {
      formClass,
      option: {
        description: mechanic
          ? getBattleFormMechanicNote({ label, mechanic })
          : undefined,
        group: formClass ? formClassHeadings[formClass] : undefined,
        href: getPokemonDetailScopeHref(speciesSlug, {
          form: form.form.is_default ? undefined : form.form.slug,
          versionGroup: versionGroupSlug,
        }),
        imageUrl: getPokemonFormImageUrl(form.form, "sm"),
        label,
        name: form.form.name,
        typeSlug: getPokemonDetailFormTypeSlug(form),
        value: form.form.slug,
      },
    };
  });

  return classOrder.flatMap((formClass) =>
    options
      .filter((item) => item.formClass === formClass)
      .map(({ option }) => option),
  );
};
