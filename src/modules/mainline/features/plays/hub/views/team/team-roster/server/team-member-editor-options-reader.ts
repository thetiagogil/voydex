import { withoutBattleForms } from "@/modules/reference/features/pokemon/data/battle-forms";
import { readBattleFormIds } from "@/modules/reference/features/pokemon/server/battle-form-reader";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import {
  getLearnableMoveIds,
  readFormLearnsetRows,
  readHeldItemOptions,
  readMoveOptions,
} from "@/modules/mainline/shared/server/build-option-readers";
import { loadPagedReferenceRows } from "@/modules/reference/reference-rows";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type {
  EditorFormOption,
  EditorOption,
  TeamMemberEditorOptions,
} from "../utils/team-member-editor-model";

const newestFirst = <T extends { generation_start_id: number }>(rows: T[]) =>
  rows.toSorted(
    (left, right) => right.generation_start_id - left.generation_start_id,
  );

export const readTeamMemberEditorOptions = async (
  supabase: ServerSupabaseClient,
  {
    formId,
    gameId,
    generationId,
    mechanics,
    speciesId,
    versionGroupId,
  }: {
    formId: number;
    gameId: number;
    generationId: number;
    mechanics: GameMechanicsProfile;
    speciesId: number;
    versionGroupId: number;
  },
): Promise<TeamMemberEditorOptions> => {
  const hasAbilities = supportsGameMechanic(mechanics, gameMechanics.abilities);
  const hasNatures = supportsGameMechanic(mechanics, gameMechanics.natures);
  const hasHeldItems = supportsGameMechanic(mechanics, gameMechanics.heldItems);
  const [
    attributesResult,
    naturesResult,
    ballCategoryResult,
    learnsets,
    edgesResult,
    speciesFormsResult,
    battleFormIds,
  ] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_attributes")
      .select(
        "generation_start_id, primary_ability_id, secondary_ability_id, hidden_ability_id",
      )
      .eq("form_id", formId)
      .lte("generation_start_id", generationId),
    hasNatures
      ? supabase
          .schema("reference")
          .from("natures")
          .select("id, name, increased_stat, decreased_stat")
          .lte("introduced_generation_id", generationId)
          .order("name", { ascending: true })
      : null,
    supabase
      .schema("reference")
      .from("item_categories")
      .select("id")
      .eq("slug", "poke_ball")
      .maybeSingle(),
    readFormLearnsetRows(supabase, { formId, versionGroupId }),
    supabase
      .schema("reference")
      .from("pokemon_evolution_edges")
      .select("to_form_id, to_species_id, version_group_id")
      .eq("from_form_id", formId)
      .lte("introduced_generation_id", generationId),
    supabase
      .schema("reference")
      .from("pokemon_forms")
      .select("id, name, slug, species_id")
      .eq("species_id", speciesId)
      .order("form_order", { ascending: true }),
    readBattleFormIds(supabase),
  ]);

  if (
    attributesResult.error ||
    naturesResult?.error ||
    ballCategoryResult.error ||
    edgesResult.error ||
    speciesFormsResult.error
  ) {
    throw new Error("Unable to load what this Pokémon can record.");
  }

  const attribute = newestFirst(attributesResult.data ?? [])[0];
  const abilityIds =
    hasAbilities && attribute
      ? [
          attribute.primary_ability_id,
          attribute.secondary_ability_id,
          attribute.hidden_ability_id,
        ].filter((id): id is number => id !== null)
      : [];
  const moveIds = getLearnableMoveIds(learnsets, [gameId]);
  const edges = (edgesResult.data ?? []).filter(
    (edge) =>
      edge.version_group_id === null ||
      edge.version_group_id === versionGroupId,
  );
  const targetFormIds = [
    ...new Set([
      ...edges.map((edge) => edge.to_form_id),
      ...withoutBattleForms(speciesFormsResult.data ?? [], battleFormIds).map(
        (form) => form.id,
      ),
    ]),
  ];

  const [
    abilitiesResult,
    balls,
    heldItems,
    moves,
    targetFormsResult,
    targetAttributesResult,
  ] = await Promise.all([
    abilityIds.length
      ? supabase
          .schema("reference")
          .from("abilities")
          .select("id, name")
          .in("id", abilityIds)
      : null,
    ballCategoryResult.data
      ? loadPagedReferenceRows<EditorOption>(
          (from, to) =>
            supabase
              .schema("reference")
              .from("items")
              .select("id, name")
              .eq("primary_category_id", ballCategoryResult.data?.id ?? -1)
              .lte("introduced_generation_id", generationId)
              .order("name", { ascending: true })
              .range(from, to),
          "Unable to load Poké Balls.",
        )
      : [],
    hasHeldItems ? readHeldItemOptions(supabase, generationId) : [],
    readMoveOptions(supabase, { generationId, moveIds }),
    targetFormIds.length
      ? supabase
          .schema("reference")
          .from("pokemon_forms")
          .select("id, name, slug, species_id")
          .in("id", targetFormIds)
      : null,
    targetFormIds.length
      ? supabase
          .schema("reference")
          .from("pokemon_attributes")
          .select("form_id")
          .in("form_id", targetFormIds)
          .lte("generation_start_id", generationId)
      : null,
  ]);

  if (
    abilitiesResult?.error ||
    targetFormsResult?.error ||
    targetAttributesResult?.error
  ) {
    throw new Error("Unable to load what this Pokémon can record.");
  }

  const formsInGeneration = new Set(
    (targetAttributesResult?.data ?? []).map((row) => row.form_id),
  );
  const toFormOption = (form: {
    id: number;
    name: string;
    species_id: number;
    slug: string | null;
  }): EditorFormOption => ({
    formId: form.id,
    imageUrl: getPokemonFormImageUrl(form),
    name: form.name,
    speciesId: form.species_id,
  });
  const targetForms = (targetFormsResult?.data ?? []).filter((form) =>
    formsInGeneration.has(form.id),
  );
  const abilityById = new Map(
    (abilitiesResult?.data ?? []).map((ability) => [ability.id, ability]),
  );

  return {
    abilities: abilityIds.flatMap((id) => {
      const ability = abilityById.get(id);
      return ability ? [ability] : [];
    }),
    balls,
    evolutions: edges.flatMap((edge) => {
      const form = targetForms.find((item) => item.id === edge.to_form_id);
      return form ? [toFormOption(form)] : [];
    }),
    forms: targetForms
      .filter((form) => form.species_id === speciesId && form.id !== formId)
      .map(toFormOption),
    heldItems,
    moves,
    natures: (naturesResult?.data ?? []).map((nature) => ({
      decreased: nature.decreased_stat,
      id: nature.id,
      increased: nature.increased_stat,
      name: nature.name,
    })),
  };
};
