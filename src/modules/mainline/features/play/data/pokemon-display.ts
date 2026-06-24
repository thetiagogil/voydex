import type {
  PokemonAttributes,
  PokemonForm,
  Type,
} from "@/modules/codex/types";
import {
  byId,
  type ServerSupabaseClient,
} from "@/modules/mainline/features/play/data/query-utils";
import type { MainlinePokemonDisplayMetadata } from "@/modules/mainline/features/play/types";
import { getPokemonFormImageUrl } from "@/shared/domain/pokemon/pokemon-images";

const buildAttributeByFormId = (
  attributes: PokemonAttributes[],
): Map<number, PokemonAttributes> => {
  const attributeByFormId = new Map<number, PokemonAttributes>();

  for (const attribute of attributes) {
    const current = attributeByFormId.get(attribute.form_id);

    if (
      !current ||
      attribute.generation_start_id > current.generation_start_id
    ) {
      attributeByFormId.set(attribute.form_id, attribute);
    }
  }

  return attributeByFormId;
};

export const loadPokemonDisplayMetadata = async (
  supabase: ServerSupabaseClient,
  formIds: number[],
  generationId: number | null,
): Promise<Map<number, MainlinePokemonDisplayMetadata>> => {
  const displayByFormId = new Map<number, MainlinePokemonDisplayMetadata>();

  if (!formIds.length) {
    return displayByFormId;
  }

  const [formsResult, attributesResult, typesResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_forms")
      .select("*")
      .in("id", formIds),
    supabase
      .schema("reference")
      .from("pokemon_attributes")
      .select("*")
      .in("form_id", formIds)
      .lte("generation_start_id", generationId ?? 99),
    supabase.schema("reference").from("types").select("*"),
  ]);

  if (formsResult.error || attributesResult.error || typesResult.error) {
    throw new Error("Unable to load Pokemon display metadata.");
  }

  const formById = byId((formsResult.data ?? []) as PokemonForm[]);
  const typeById = byId((typesResult.data ?? []) as Type[]);
  const attributeByFormId = buildAttributeByFormId(
    (attributesResult.data ?? []) as PokemonAttributes[],
  );

  for (const formId of formIds) {
    const form = formById.get(formId) ?? null;
    const attribute = attributeByFormId.get(formId) ?? null;

    displayByFormId.set(formId, {
      imageUrl: getPokemonFormImageUrl(form),
      primaryType: attribute
        ? (typeById.get(attribute.primary_type_id) ?? null)
        : null,
      secondaryType: attribute?.secondary_type_id
        ? (typeById.get(attribute.secondary_type_id) ?? null)
        : null,
    });
  }

  return displayByFormId;
};

export const getEmptyPokemonDisplay = (): MainlinePokemonDisplayMetadata => {
  return {
    imageUrl: null,
    primaryType: null,
    secondaryType: null,
  };
};
