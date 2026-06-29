import {
  byId,
  resolveTypePair,
  selectLatestAttributes,
} from "@/modules/codex/shared/data/query-utils";
import type {
  EvolutionMethod,
  Generation,
  PokemonAttributes,
  PokemonEvolutionEdge,
  PokemonEvolutionFormSummary,
  PokemonEvolutionFamilySummary,
  PokemonForm,
  PokemonSpecies,
  Type,
} from "@/modules/codex/shared/types";

type PokemonEvolutionFamilyParams = {
  attributes: PokemonAttributes[];
  edges: PokemonEvolutionEdge[];
  forms: PokemonForm[];
  generationById: Map<number, Generation>;
  methods: EvolutionMethod[];
  species: PokemonSpecies[];
  typeById: Map<number, Type>;
};

const groupFormsBySpeciesId = (forms: PokemonForm[]) => {
  const formsBySpeciesId = new Map<number, PokemonForm[]>();

  for (const form of forms) {
    const currentForms = formsBySpeciesId.get(form.species_id) ?? [];

    currentForms.push(form);
    formsBySpeciesId.set(form.species_id, currentForms);
  }

  return formsBySpeciesId;
};

const buildEvolutionFormSummaries = ({
  forms,
  latestAttributesByFormId,
  typeById,
}: {
  forms: PokemonForm[];
  latestAttributesByFormId: Map<number, PokemonAttributes>;
  typeById: Map<number, Type>;
}): PokemonEvolutionFormSummary[] => {
  return forms.map((form) => {
    const latestAttributes = latestAttributesByFormId.get(form.id) ?? null;

    return {
      form,
      latestAttributes,
      typePair: resolveTypePair(latestAttributes, typeById),
    };
  });
};

export const buildPokemonEvolutionFamily = ({
  attributes,
  edges,
  forms,
  generationById,
  methods,
  species,
  typeById,
}: PokemonEvolutionFamilyParams): PokemonEvolutionFamilySummary => {
  const defaultFormBySpeciesId = new Map<number, PokemonForm>();
  const latestAttributesByFormId = selectLatestAttributes(attributes);
  const formById = byId(forms);
  const formsBySpeciesId = groupFormsBySpeciesId(forms);
  const methodById = byId(methods);
  const speciesById = byId(species);

  for (const form of forms) {
    if (form.is_default || !defaultFormBySpeciesId.has(form.species_id)) {
      defaultFormBySpeciesId.set(form.species_id, form);
    }
  }

  return {
    edges: edges.map((edge) => ({
      edge,
      fromForm: formById.get(edge.from_form_id) ?? null,
      fromSpecies: speciesById.get(edge.from_species_id) ?? null,
      introducedGeneration:
        generationById.get(edge.introduced_generation_id) ?? null,
      method: methodById.get(edge.evolution_method_id) ?? null,
      toForm: formById.get(edge.to_form_id) ?? null,
      toSpecies: speciesById.get(edge.to_species_id) ?? null,
    })),
    species: species.map((pokemonSpecies) => {
      const defaultForm = defaultFormBySpeciesId.get(pokemonSpecies.id) ?? null;
      const pokemonForms = formsBySpeciesId.get(pokemonSpecies.id) ?? [];
      const latestAttributes = defaultForm
        ? (latestAttributesByFormId.get(defaultForm.id) ?? null)
        : null;

      return {
        defaultForm,
        forms: buildEvolutionFormSummaries({
          forms: pokemonForms,
          latestAttributesByFormId,
          typeById,
        }),
        introducedGeneration:
          generationById.get(pokemonSpecies.introduced_generation_id) ?? null,
        latestAttributes,
        species: pokemonSpecies,
        typePair: resolveTypePair(latestAttributes, typeById),
      };
    }),
  };
};
