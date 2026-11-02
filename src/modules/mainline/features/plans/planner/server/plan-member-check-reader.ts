import { getOfferedFormIdsBySpecies } from "@/modules/mainline/features/plans/planner/data/planner-offered-forms";
import type { PlanMemberCheckRows } from "@/modules/mainline/features/plans/planner/utils/plan-member-check";
import type { PlanMember } from "@/modules/mainline/features/plans/types";
import {
  getLearnableMoveIds,
  readFormLearnsetRows,
  readHeldItemOptions,
} from "@/modules/mainline/shared/server/build-option-readers";
import { readBattleFormIds } from "@/modules/reference/features/pokemon/server/battle-form-reader";
import {
  readCosmeticFormIds,
  readFormClassById,
} from "@/modules/reference/features/pokemon/server/form-class-reader";
import { loadChunkedReferenceRows } from "@/modules/reference/reference-rows";
import type { PokedexEntry } from "@/modules/reference/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

const readFailure = "Unable to check the Plan's Pokémon right now.";

/*
 * The reference rows `assertPlanMembersFitVersionGroup` reads for the
 * Pokémon being saved, in one version group family (the group and its
 * expansions). The forms the family offers follow the Planner's own rule
 * (`getOfferedFormIdsBySpecies`); moves use the same learnset rule as the
 * slot sheet's options.
 */
export const readPlanMemberCheckRows = async (
  supabase: ServerSupabaseClient,
  {
    familyVersionGroupIds,
    gameIds,
    generationId,
    members,
    versionGroupId,
    versionGroupName,
  }: {
    familyVersionGroupIds: number[];
    gameIds: number[];
    generationId: number;
    members: readonly PlanMember[];
    versionGroupId: number;
    versionGroupName: string;
  },
): Promise<PlanMemberCheckRows> => {
  const reference = supabase.schema("reference");
  const speciesIds = uniqueNumberIds(members.map((member) => member.speciesId));
  const formIds = uniqueNumberIds(members.map((member) => member.formId));
  const heldItemIds = uniqueNumberIds(
    members.map((member) => member.heldItemId),
  );
  const natureIds = uniqueNumberIds(members.map((member) => member.natureId));
  const formsWithMoves = uniqueNumberIds(
    members.flatMap((member) =>
      member.moveIds.some((moveId) => moveId !== null) ? [member.formId] : [],
    ),
  );

  const pokedexesResult = await reference
    .from("pokedex")
    .select("id")
    .in("version_group_id", familyVersionGroupIds);

  if (pokedexesResult.error) {
    throw new Error(readFailure);
  }

  const [
    entries,
    formsResult,
    speciesResult,
    attributesResult,
    items,
    natures,
    battleFormIds,
    formClassById,
    cosmeticFormIds,
    availableForms,
  ] = await Promise.all([
    loadChunkedReferenceRows<
      Pick<PokedexEntry, "display_form_id" | "species_id">
    >(
      (pokedexesResult.data ?? []).map((pokedex) => pokedex.id),
      (ids, from, to) =>
        reference
          .from("pokedex_entries")
          .select("display_form_id, species_id")
          .in("pokedex_id", ids)
          .in("species_id", speciesIds)
          .order("pokedex_id")
          .order("pokedex_number")
          .range(from, to),
      readFailure,
    ),
    reference
      .from("pokemon_forms")
      .select("id, species_id, name, is_default, form_order")
      .in("species_id", speciesIds),
    reference.from("pokemon_species").select("id, name").in("id", speciesIds),
    reference
      .from("pokemon_attributes")
      .select(
        "form_id, generation_start_id, primary_ability_id, secondary_ability_id, hidden_ability_id",
      )
      .in("form_id", formIds)
      .lte("generation_start_id", generationId),
    heldItemIds.length
      ? readHeldItemOptions(supabase, {
          gameIds,
          versionGroupIds: familyVersionGroupIds,
        })
      : [],
    natureIds.length
      ? reference
          .from("natures")
          .select("id")
          .in("id", natureIds)
          .lte("introduced_generation_id", generationId)
      : null,
    readBattleFormIds(supabase),
    readFormClassById(supabase, speciesIds),
    readCosmeticFormIds(supabase, speciesIds),
    supabase
      .schema("views")
      .from("reference_resolved_pokemon_availability")
      .select("form_id")
      .in("species_id", speciesIds)
      .in("target_version_group_id", familyVersionGroupIds),
  ]);

  if (
    formsResult.error ||
    speciesResult.error ||
    attributesResult.error ||
    natures?.error ||
    availableForms.error
  ) {
    throw new Error(readFailure);
  }

  /* The Pokédex form of each species the family lists, as the Planner reads it. */
  const displayFormIdBySpecies = new Map<number, number>();
  const listedSpeciesIds = new Set<number>();

  for (const entry of entries) {
    if (!listedSpeciesIds.has(entry.species_id)) {
      listedSpeciesIds.add(entry.species_id);

      if (entry.display_form_id !== null) {
        displayFormIdBySpecies.set(entry.species_id, entry.display_form_id);
      }
    }
  }

  const speciesForms = (formsResult.data ?? []).filter(
    (form) => !battleFormIds.has(form.id),
  );
  const offeredFormIdsBySpecies = getOfferedFormIdsBySpecies({
    availableFormIds: new Set(
      (availableForms.data ?? []).flatMap((row) =>
        row.form_id === null ? [] : [row.form_id],
      ),
    ),
    cosmeticFormIds,
    displayFormIdBySpecies,
    formClassById,
    forms: speciesForms,
  });
  const speciesNameById = new Map(
    (speciesResult.data ?? []).map((species) => [species.id, species.name]),
  );

  const learnsets = await Promise.all(
    formsWithMoves.map(
      async (formId) =>
        [
          formId,
          new Set(
            getLearnableMoveIds(
              await readFormLearnsetRows(supabase, { formId, versionGroupId }),
              gameIds,
            ),
          ),
        ] as const,
    ),
  );

  /* Each form's abilities as of the generation: its newest row that had started. */
  const newestAttributeByFormId = new Map<
    number,
    NonNullable<typeof attributesResult.data>[number]
  >();

  for (const row of attributesResult.data ?? []) {
    const current = newestAttributeByFormId.get(row.form_id);

    if (!current || row.generation_start_id > current.generation_start_id) {
      newestAttributeByFormId.set(row.form_id, row);
    }
  }

  return {
    abilityIdsByFormId: new Map(
      [...newestAttributeByFormId].map(([formId, row]) => [
        formId,
        new Set(
          uniqueNumberIds([
            row.primary_ability_id,
            row.secondary_ability_id,
            row.hidden_ability_id,
          ]),
        ),
      ]),
    ),
    /* The held items this version group has, as the slot sheet offers them. */
    heldItemIds: new Set(items.map((item) => item.id)),
    learnableMoveIdsByFormId: new Map(learnsets),
    nameByFormId: new Map(
      speciesForms.map((form) => [
        form.id,
        form.is_default
          ? (speciesNameById.get(form.species_id) ?? form.name)
          : form.name,
      ]),
    ),
    natureIds: new Set((natures?.data ?? []).map((nature) => nature.id)),
    poolFormIds: new Set(
      [...listedSpeciesIds].flatMap(
        (speciesId) => offeredFormIdsBySpecies.get(speciesId) ?? [],
      ),
    ),
    speciesIdByFormId: new Map(
      speciesForms.map((form) => [form.id, form.species_id]),
    ),
    versionGroupName,
  };
};
