import type { PlanMemberCheckRows } from "@/modules/mainline/features/plans/planner/utils/plan-member-check";
import type { PlanMember } from "@/modules/mainline/features/plans/types";
import {
  getLearnableMoveIds,
  readFormLearnsetRows,
  readHeldItemOptions,
} from "@/modules/mainline/shared/server/build-option-readers";
import { loadChunkedReferenceRows } from "@/modules/reference/reference-rows";
import type { PokedexEntry } from "@/modules/reference/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

const readFailure = "Unable to check the Plan's Pokémon right now.";

/*
 * The reference rows `assertPlanMembersFitVersionGroup` reads for the
 * Pokémon being saved, in one version group family (the group and its
 * expansions). Moves use the same learnset rule as the slot sheet's options.
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
  ] = await Promise.all([
    loadChunkedReferenceRows<Pick<PokedexEntry, "species_id">>(
      (pokedexesResult.data ?? []).map((pokedex) => pokedex.id),
      (ids, from, to) =>
        reference
          .from("pokedex_entries")
          .select("species_id")
          .in("pokedex_id", ids)
          .in("species_id", speciesIds)
          .order("pokedex_id")
          .order("pokedex_number")
          .range(from, to),
      readFailure,
    ),
    reference.from("pokemon_forms").select("id, species_id").in("id", formIds),
    reference.from("pokemon_species").select("id, name").in("id", speciesIds),
    reference
      .from("pokemon_attributes")
      .select(
        "form_id, generation_start_id, primary_ability_id, secondary_ability_id, hidden_ability_id",
      )
      .in("form_id", formIds)
      .lte("generation_start_id", generationId),
    heldItemIds.length
      ? readHeldItemOptions(supabase, { gameIds, versionGroupId })
      : [],
    natureIds.length
      ? reference
          .from("natures")
          .select("id")
          .in("id", natureIds)
          .lte("introduced_generation_id", generationId)
      : null,
  ]);

  if (
    formsResult.error ||
    speciesResult.error ||
    attributesResult.error ||
    natures?.error
  ) {
    throw new Error(readFailure);
  }

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
    natureIds: new Set((natures?.data ?? []).map((nature) => nature.id)),
    poolSpeciesIds: new Set(entries.map((entry) => entry.species_id)),
    speciesIdByFormId: new Map(
      (formsResult.data ?? []).map((form) => [form.id, form.species_id]),
    ),
    speciesNameById: new Map(
      (speciesResult.data ?? []).map((species) => [species.id, species.name]),
    ),
    versionGroupName,
  };
};
