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
      fromSpecies: speciesById.get(edge.from_species_id) ?? null,
      introducedGeneration:
        generationById.get(edge.introduced_generation_id) ?? null,
      method: methodById.get(edge.evolution_method_id) ?? null,
      toSpecies: speciesById.get(edge.to_species_id) ?? null,
    })),
    species: species.map((pokemonSpecies) => {
      const defaultForm = defaultFormBySpeciesId.get(pokemonSpecies.id) ?? null;
      const latestAttributes = defaultForm
        ? (latestAttributesByFormId.get(defaultForm.id) ?? null)
        : null;

      return {
        defaultForm,
        introducedGeneration:
          generationById.get(pokemonSpecies.introduced_generation_id) ?? null,
        latestAttributes,
        species: pokemonSpecies,
        typePair: resolveTypePair(latestAttributes, typeById),
      };
    }),
  };
};
