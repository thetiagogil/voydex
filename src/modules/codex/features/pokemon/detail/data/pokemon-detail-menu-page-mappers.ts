import {
  getDefaultFormsBySpeciesId,
  getEffectiveAttributes,
  getSelectedGenerationForGame,
  groupAttributesByFormId,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-attribute-selectors";
import { getPokemonMenuRowBySpeciesId } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-row-builders";
import type { PokemonMenuSpeciesRow } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-row-builders";
import { byId, resolveTypePair } from "@/modules/reference/reference-data";
import type {
  Generation,
  PokemonAttributes,
  PokemonDetailMenuPage,
  PokemonForm,
  Type,
} from "@/modules/reference/types";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";

type BuildPokemonDetailMenuPageParams = {
  attributes: PokemonAttributes[];
  defaultForms: PokemonForm[];
  generationId: number;
  generations: Generation[];
  offset: number;
  speciesRows: PokemonMenuSpeciesRow[];
  total: number;
  types: Type[];
};

export const buildPokemonDetailMenuPage = ({
  attributes,
  defaultForms,
  generationId,
  generations,
  offset,
  speciesRows,
  total,
  types,
}: BuildPokemonDetailMenuPageParams): PokemonDetailMenuPage => {
  const rowBySpeciesId = getPokemonMenuRowBySpeciesId(speciesRows);
  const defaultFormBySpeciesId = getDefaultFormsBySpeciesId(defaultForms);
  const { generation: selectedGeneration, generationById } =
    getSelectedGenerationForGame(generations, generationId);
  const attributesByFormId = groupAttributesByFormId(attributes);
  const typeById = byId(types);
  const pokemon = speciesRows.map(({ species }) => {
    const defaultForm = defaultFormBySpeciesId.get(species.id) ?? null;
    const menuRow = rowBySpeciesId.get(species.id) ?? null;
    const formAttributes = defaultForm
      ? (attributesByFormId.get(defaultForm.id) ?? [])
      : [];
    const typePair = resolveTypePair(
      getEffectiveAttributes(
        formAttributes,
        selectedGeneration,
        generationById,
      ),
      typeById,
    );

    return {
      id: species.id,
      imageAlt: getPokemonFormImageAlt(defaultForm),
      imageUrl: getPokemonFormImageUrl(defaultForm),
      name: species.name,
      nationalNumber: species.national_number,
      pokedexGroup: menuRow?.pokedexGroup ?? null,
      pokedexNumber: menuRow?.pokedexNumber ?? null,
      primaryType: typePair.primaryType
        ? {
            id: typePair.primaryType.id,
            name: typePair.primaryType.name,
            slug: typePair.primaryType.slug,
          }
        : null,
      secondaryType: typePair.secondaryType
        ? {
            id: typePair.secondaryType.id,
            name: typePair.secondaryType.name,
            slug: typePair.secondaryType.slug,
          }
        : null,
      slug: species.slug,
    };
  });

  return {
    nextOffset:
      offset + pokemon.length < total ? offset + pokemon.length : null,
    pokemon,
    total,
  };
};
