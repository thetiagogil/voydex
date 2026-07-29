import { byId, resolveTypePair } from "@/modules/reference/reference-data";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";
import type {
  Generation,
  PokemonAttributes,
  PokemonForm,
} from "@/modules/reference/types";

import type {
  MainlinePlayPokedexEntry,
  MainlinePlayPokedexSourceRows,
  MainlinePlayPokedexScope,
  MainlinePlayProgressPokedexData,
  PokedexProgressState,
} from "../types";

const getProgressState = ({
  isCaught,
  isSeen,
}: {
  isCaught: boolean | null;
  isSeen: boolean | null;
}): PokedexProgressState => {
  if (isCaught) {
    return "caught";
  }

  return isSeen ? "seen" : "missing";
};

const getGenerationSortOrder = (
  generationId: number,
  generationById: Map<number, Generation>,
) => generationById.get(generationId)?.sort_order ?? generationId;

const selectGenerationAttributes = ({
  attributes,
  generationById,
  generationId,
}: {
  attributes: PokemonAttributes[];
  generationById: Map<number, Generation>;
  generationId: number;
}) => {
  const selectedByFormId = new Map<number, PokemonAttributes>();
  const selectedGenerationOrder = getGenerationSortOrder(
    generationId,
    generationById,
  );

  for (const attribute of attributes) {
    const attributeGenerationOrder = getGenerationSortOrder(
      attribute.generation_start_id,
      generationById,
    );

    if (attributeGenerationOrder > selectedGenerationOrder) {
      continue;
    }

    const current = selectedByFormId.get(attribute.form_id);

    if (
      !current ||
      attributeGenerationOrder >
        getGenerationSortOrder(current.generation_start_id, generationById)
    ) {
      selectedByFormId.set(attribute.form_id, attribute);
    }
  }

  return selectedByFormId;
};

const selectDefaultForms = (forms: PokemonForm[]) => {
  const defaultBySpeciesId = new Map<number, PokemonForm>();

  for (const form of forms) {
    const current = defaultBySpeciesId.get(form.species_id);

    if (
      !current ||
      (form.is_default && !current.is_default) ||
      (form.is_default === current.is_default &&
        form.form_order < current.form_order)
    ) {
      defaultBySpeciesId.set(form.species_id, form);
    }
  }

  return defaultBySpeciesId;
};

export const buildMainlinePlayPokedexData = ({
  gameName,
  gameSlug,
  generationId,
  rows,
}: {
  gameName: string;
  gameSlug: string;
  generationId: number;
  rows: MainlinePlayPokedexSourceRows;
}): MainlinePlayProgressPokedexData => {
  const generationById = byId(rows.generations);

  if (!generationById.has(generationId)) {
    throw new Error("Unable to resolve the Play generation.");
  }

  const formById = byId(rows.forms);
  const defaultFormBySpeciesId = selectDefaultForms(rows.forms);
  const typeById = byId(rows.types);
  const attributesByFormId = selectGenerationAttributes({
    attributes: rows.attributes,
    generationById,
    generationId,
  });
  const entriesByPokedexId = new Map<number, MainlinePlayPokedexEntry[]>();

  for (const row of rows.detailRows) {
    if (
      !row.pokedex_id ||
      !row.pokedex_number ||
      !row.species_id ||
      !row.species_name ||
      !row.species_slug
    ) {
      continue;
    }

    const form =
      (row.display_form_id ? formById.get(row.display_form_id) : null) ??
      defaultFormBySpeciesId.get(row.species_id) ??
      null;
    const attribute = form ? (attributesByFormId.get(form.id) ?? null) : null;
    const typePair = resolveTypePair(attribute, typeById);
    const entry: MainlinePlayPokedexEntry = {
      displayFormName: form && !form.is_default ? form.name : null,
      imageAlt: getPokemonFormImageAlt(form),
      imageUrl: getPokemonFormImageUrl(form),
      isIncludedInCompletion: row.is_included_in_completion === true,
      isSourceRequiredForCompletion:
        row.is_source_required_for_completion === true,
      nationalNumber: row.national_number,
      pokedexNumber: row.pokedex_number,
      primaryType: typePair.primaryType,
      secondaryType: typePair.secondaryType,
      speciesId: row.species_id,
      speciesName: row.species_name,
      speciesSlug: row.species_slug,
      state: getProgressState({
        isCaught: row.is_caught,
        isSeen: row.is_seen,
      }),
    };
    const currentEntries = entriesByPokedexId.get(row.pokedex_id) ?? [];
    currentEntries.push(entry);
    entriesByPokedexId.set(row.pokedex_id, currentEntries);
  }

  const scopes = rows.pokedexes.flatMap((pokedex) => {
    const entries = entriesByPokedexId.get(pokedex.id);

    if (!entries?.length) {
      return [];
    }

    return [
      {
        entries: entries.sort(
          (first, second) => first.pokedexNumber - second.pokedexNumber,
        ),
        id: pokedex.id,
        isCompletionRelevant: pokedex.is_completion_relevant,
        kind: pokedex.pokedex_kind,
        name: pokedex.name,
        slug: pokedex.slug,
        sortOrder: pokedex.sort_order,
      } satisfies MainlinePlayPokedexScope,
    ];
  });

  scopes.sort((first, second) => first.sortOrder - second.sortOrder);

  return {
    gameName,
    gameSlug,
    scopes,
  };
};
