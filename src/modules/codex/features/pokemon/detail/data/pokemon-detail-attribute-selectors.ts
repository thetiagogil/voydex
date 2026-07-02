import { byId } from "@/modules/codex/shared/data/reference-data-utils";
import type {
  Generation,
  PokemonAttributes,
  PokemonForm,
} from "@/modules/codex/shared/types";

const getGenerationSortOrder = (
  generationId: number,
  generationById: Map<number, Generation>,
) => {
  return generationById.get(generationId)?.sort_order ?? generationId;
};

export const getEffectiveAttributes = (
  attributes: PokemonAttributes[],
  generation: Generation | null,
  generationById: Map<number, Generation>,
) => {
  if (!generation) {
    return null;
  }

  return (
    attributes
      .filter((attribute) => {
        return (
          getGenerationSortOrder(
            attribute.generation_start_id,
            generationById,
          ) <= generation.sort_order
        );
      })
      .sort((a, b) => {
        return (
          getGenerationSortOrder(b.generation_start_id, generationById) -
          getGenerationSortOrder(a.generation_start_id, generationById)
        );
      })[0] ?? null
  );
};

export const getDefaultFormsBySpeciesId = (forms: PokemonForm[]) => {
  const defaultFormBySpeciesId = new Map<number, PokemonForm>();

  for (const form of forms) {
    if (form.is_default || !defaultFormBySpeciesId.has(form.species_id)) {
      defaultFormBySpeciesId.set(form.species_id, form);
    }
  }

  return defaultFormBySpeciesId;
};

export const getSelectedGenerationForGame = (
  generations: Generation[],
  generationId: number,
) => {
  const generationById = byId(generations);

  return {
    generation:
      generationById.get(generationId) ??
      generations.find((currentGeneration) => {
        return currentGeneration.id === generationId;
      }) ??
      null,
    generationById,
  };
};

export const groupAttributesByFormId = (attributes: PokemonAttributes[]) => {
  const attributesByFormId = new Map<number, PokemonAttributes[]>();

  for (const attribute of attributes) {
    const current = attributesByFormId.get(attribute.form_id) ?? [];

    current.push(attribute);
    attributesByFormId.set(attribute.form_id, current);
  }

  return attributesByFormId;
};
