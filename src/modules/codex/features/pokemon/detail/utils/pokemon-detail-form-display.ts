import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";

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

export const isPokemonDetailFormEqual = (
  firstForm: PokemonGenerationFormSummary | null,
  secondForm: PokemonGenerationFormSummary | null,
) => {
  return firstForm?.form.id === secondForm?.form.id;
};
