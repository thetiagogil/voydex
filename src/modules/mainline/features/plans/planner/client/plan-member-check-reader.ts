import {
  getOfferedFormIdsBySpecies,
  listPlannerPokedexes,
  placePlannerExtras,
  placePlannerSpecies,
  type PlannerExtraAvailabilityRow,
} from "@/modules/mainline/features/plans/planner/data/planner-offered-forms";
import {
  isDerivedAvailabilityMethod,
  isInGameAvailabilityMethod,
} from "@/modules/reference/features/games/domain/version-exclusives";
import type { PlanMemberCheckRows } from "@/modules/mainline/features/plans/planner/utils/plan-member-check";
import type { PlanMember } from "@/modules/mainline/features/plans/types";
import {
  getLearnableMoveIds,
  readFormLearnsetRows,
  readHeldItemOptions,
} from "@/modules/mainline/shared/client/build-option-readers";
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
 * expansions, base first). The forms the family offers follow the Planner's
 * own rule (`listPlannerPokedexes`, `placePlannerSpecies`,
 * `placePlannerExtras` and `getOfferedFormIdsBySpecies`); moves use the
 * same learnset rule as the slot sheet's options.
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

  const [pokedexesResult, membersSpeciesResult] = await Promise.all([
    reference
      .from("pokedex")
      .select(
        "id, is_completion_relevant, pokedex_kind, sort_order, version_group_id",
      )
      .in("version_group_id", familyVersionGroupIds),
    reference
      .from("pokemon_species")
      .select("evolution_family_id")
      .in("id", speciesIds),
  ]);

  if (pokedexesResult.error || membersSpeciesResult.error) {
    throw new Error(readFailure);
  }

  /* The members' whole evolution families: what roots a Pokémon beyond the Pokédexes. */
  const speciesResult = await reference
    .from("pokemon_species")
    .select("id, name, national_number, evolution_family_id")
    .in(
      "evolution_family_id",
      uniqueNumberIds(
        membersSpeciesResult.data.map((row) => row.evolution_family_id),
      ),
    );

  if (speciesResult.error) {
    throw new Error(readFailure);
  }

  const familySpeciesIds = speciesResult.data.map((row) => row.id);

  const pokedexes = listPlannerPokedexes(
    pokedexesResult.data ?? [],
    familyVersionGroupIds,
  );

  const [
    entries,
    formsResult,
    attributesResult,
    items,
    natures,
    battleFormIds,
    formClassById,
    cosmeticFormIds,
    availableForms,
    methods,
  ] = await Promise.all([
    loadChunkedReferenceRows<
      Pick<
        PokedexEntry,
        "display_form_id" | "pokedex_id" | "pokedex_number" | "species_id"
      >
    >(
      /* Every Pokédex of the family: a species in any of them is placed. */
      pokedexesResult.data.map((pokedex) => pokedex.id),
      (ids, from, to) =>
        reference
          .from("pokedex_entries")
          .select("display_form_id, pokedex_id, pokedex_number, species_id")
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
    /* Every form of the members' families: which form leads depends on them all. */
    loadChunkedReferenceRows<PlannerExtraAvailabilityRow>(
      familySpeciesIds,
      (ids, from, to) =>
        supabase
          .schema("views")
          .from("reference_resolved_pokemon_availability")
          .select(
            "availability_method_id, form_id, species_id, target_version_group_id",
          )
          .in("species_id", ids)
          .in("target_version_group_id", familyVersionGroupIds)
          .order("id")
          .range(from, to),
      readFailure,
    ),
    reference.from("availability_methods").select("id, slug"),
  ]);

  if (
    formsResult.error ||
    attributesResult.error ||
    methods.error ||
    natures?.error
  ) {
    throw new Error(readFailure);
  }

  const speciesForms = (formsResult.data ?? []).filter(
    (form) => !battleFormIds.has(form.id),
  );
  /* Each listed species in its first Pokédex, with the form it shows there. */
  const { displayFormIdBySpecies, speciesIdsByPokedexId } = placePlannerSpecies(
    pokedexes,
    entries,
  );
  /* And what the family hands out beyond every Pokédex of it, as the Planner lists it. */
  const extras = placePlannerExtras({
    availability: availableForms,
    cosmeticFormIds,
    derivedMethodIds: new Set(
      methods.data
        .filter(isDerivedAvailabilityMethod)
        .map((method) => method.id),
    ),
    familyOrder: familyVersionGroupIds,
    formClassById,
    forms: speciesForms,
    inGameMethodIds: new Set(
      methods.data
        .filter(isInGameAvailabilityMethod)
        .map((method) => method.id),
    ),
    placedSpeciesIds: new Set(entries.map((entry) => entry.species_id)),
    species: speciesResult.data,
  });
  const listedSpeciesIds = [
    ...new Set([...speciesIdsByPokedexId.values()].flat()),
    ...[...extras.speciesIdsByVersionGroupId.values()].flat(),
  ];

  const offeredFormIdsBySpecies = getOfferedFormIdsBySpecies({
    availableFormIds: new Set(
      availableForms.flatMap((row) =>
        row.form_id === null ? [] : [row.form_id],
      ),
    ),
    cosmeticFormIds,
    displayFormIdBySpecies: new Map([
      ...displayFormIdBySpecies,
      ...extras.displayFormIdBySpecies,
    ]),
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
      listedSpeciesIds.flatMap(
        (speciesId) => offeredFormIdsBySpecies.get(speciesId) ?? [],
      ),
    ),
    speciesIdByFormId: new Map(
      speciesForms.map((form) => [form.id, form.species_id]),
    ),
    versionGroupName,
  };
};
