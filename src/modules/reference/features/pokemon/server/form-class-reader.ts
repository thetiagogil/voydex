import {
  isFormClass,
  type FormClass,
} from "@/modules/reference/features/pokemon/domain/form-classes";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import type { ReferenceRow } from "@/shared/types/database-helpers";

/*
 * The class of every non-default form of these species, by form id; a
 * default form has none. A failed read throws.
 */
export const readFormClassById = async (
  supabase: ServerSupabaseClient,
  speciesIds: readonly number[],
): Promise<Map<number, FormClass>> => {
  if (!speciesIds.length) {
    return new Map();
  }

  const result = await supabase
    .schema("reference")
    .from("pokemon_form_rules")
    .select("form_id, form_class, pokemon_forms!inner(species_id)")
    .in("pokemon_forms.species_id", [...speciesIds]);

  if (result.error) {
    throw new Error("Unable to load Pokémon forms.");
  }

  return new Map(
    (result.data ?? []).flatMap((rule) =>
      isFormClass(rule.form_class) ? [[rule.form_id, rule.form_class]] : [],
    ),
  );
};

/* Whether an item rule for a form holds in this game. */
export const formItemRuleAppliesHere = (
  row: Pick<
    ReferenceRow<"pokemon_form_item_requirements">,
    | "generation_end_id"
    | "generation_start_id"
    | "version_group_end_id"
    | "version_group_start_id"
  >,
  generationId: number,
  versionGroupId: number,
) =>
  row.generation_start_id <= generationId &&
  (row.generation_end_id === null || row.generation_end_id >= generationId) &&
  (row.version_group_start_id === null ||
    row.version_group_start_id <= versionGroupId) &&
  (row.version_group_end_id === null ||
    row.version_group_end_id >= versionGroupId);

/*
 * The forms of these that follow a held item in this game, with the items
 * that select each (Arceus (Fire): Flame Plate, or Firium Z in Sun and
 * Moon). Saving the held item sets the form, so they are never picked by
 * hand. A failed read throws.
 */
export const readHeldItemForms = async (
  supabase: ServerSupabaseClient,
  {
    formIds,
    generationId,
    versionGroupId,
  }: {
    formIds: readonly number[];
    generationId: number;
    versionGroupId: number;
  },
): Promise<Map<number, string[]>> => {
  if (!formIds.length) {
    return new Map();
  }

  const result = await supabase
    .schema("reference")
    .from("pokemon_form_item_requirements")
    .select(
      "form_id, generation_start_id, generation_end_id, version_group_start_id, version_group_end_id, items!inner(name)",
    )
    .in("form_id", [...formIds])
    .in("requirement_kind", ["required_held_item", "alternative_held_item"]);

  if (result.error) {
    throw new Error("Unable to load Pokémon forms.");
  }

  const itemsByFormId = new Map<number, string[]>();

  for (const row of result.data ?? []) {
    if (formItemRuleAppliesHere(row, generationId, versionGroupId)) {
      itemsByFormId.set(row.form_id, [
        ...(itemsByFormId.get(row.form_id) ?? []),
        row.items.name,
      ]);
    }
  }

  return itemsByFormId;
};
