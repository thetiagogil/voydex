import { getGenerationSortOrder } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-generation-utils";
import {
  resolveTypePair,
  selectLatestAttributes,
} from "@/modules/codex/shared/data/reference-data-utils";
import type {
  Generation,
  PokemonAttributes,
  PokemonDetailData,
  PokemonForm,
  PokemonFormSummary,
  Type,
} from "@/modules/codex/shared/types";

type PokemonFormSummaryParams = {
  attributes: PokemonAttributes[];
  forms: PokemonForm[];
  generationById: Map<number, Generation>;
  typeById: Map<number, Type>;
};

const groupAttributesByFormId = (attributes: PokemonAttributes[]) => {
  const attributesByFormId = new Map<number, PokemonAttributes[]>();

  for (const attribute of attributes) {
    const current = attributesByFormId.get(attribute.form_id) ?? [];

    current.push(attribute);
    attributesByFormId.set(attribute.form_id, current);
  }

  return attributesByFormId;
};

export const buildPokemonFormSummaries = ({
  attributes,
  forms,
  generationById,
  typeById,
}: PokemonFormSummaryParams): PokemonFormSummary[] => {
  const latestAttributesByFormId = selectLatestAttributes(attributes);
  const attributesByFormId = groupAttributesByFormId(attributes);

  return forms.map((form) => {
    const latestAttributes = latestAttributesByFormId.get(form.id) ?? null;
    const formAttributes = attributesByFormId.get(form.id) ?? [];

    return {
      attributesByGeneration: [...formAttributes].sort((a, b) => {
        return (
          getGenerationSortOrder(a.generation_start_id, generationById) -
          getGenerationSortOrder(b.generation_start_id, generationById)
        );
      }),
      form,
      latestAttributes,
      typePair: resolveTypePair(latestAttributes, typeById),
      introducedGeneration:
        generationById.get(form.introduced_generation_id) ?? null,
    };
  });
};

export const resolveDefaultPokemonForm = (
  data: Pick<PokemonDetailData, "forms">,
) => {
  return (
    data.forms.find((form) => {
      return form.form.is_default;
    }) ??
    data.forms[0] ??
    null
  );
};
