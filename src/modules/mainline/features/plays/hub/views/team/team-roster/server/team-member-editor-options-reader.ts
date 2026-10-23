import { resolveAbilityEffects } from "@/modules/reference/features/pokemon/data/ability-effects";
import {
  getChangeableFormIds,
  resolveFormClasses,
} from "@/modules/reference/features/pokemon/domain/form-classes";
import {
  readFormClassById,
  readHeldItemForms,
} from "@/modules/reference/features/pokemon/server/form-class-reader";
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
  readPokeBallOptions,
  readMoveOptions,
} from "@/modules/mainline/shared/server/build-option-readers";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type {
  EditorFormOption,
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
    playId,
    speciesId,
    versionGroupId,
  }: {
    formId: number;
    gameId: number;
    generationId: number;
    mechanics: GameMechanicsProfile;
    playId: string;
    speciesId: number;
    versionGroupId: number;
  },
): Promise<TeamMemberEditorOptions> => {
  const hasAbilities = supportsGameMechanic(mechanics, gameMechanics.abilities);
  const hasNatures = supportsGameMechanic(mechanics, gameMechanics.natures);
  const hasHeldItems = supportsGameMechanic(mechanics, gameMechanics.heldItems);
  const hasTerastal = supportsGameMechanic(mechanics, gameMechanics.terastal);
  const [
    attributesResult,
    naturesResult,
    learnsets,
    edgesResult,
    speciesFormsResult,
    formClassById,
    teraTypesResult,
    contentScopesResult,
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
    readFormClassById(supabase, [speciesId]),
    hasTerastal
      ? supabase
          .schema("reference")
          .from("tera_types")
          .select("id, name, introduced_version_group_id")
          .order("sort_order", { ascending: true })
      : null,
    /* The add-ons the Play includes: their items, balls and Stellar. */
    supabase
      .schema("gameplay")
      .from("mainline_play_optional_content_scopes")
      .select("version_group_id")
      .eq("play_id", playId),
  ]);

  if (
    attributesResult.error ||
    naturesResult?.error ||
    edgesResult.error ||
    speciesFormsResult.error ||
    teraTypesResult?.error ||
    contentScopesResult.error
  ) {
    throw new Error("Unable to load what this Pokémon can record.");
  }

  const playVersionGroupIds = [
    versionGroupId,
    ...(contentScopesResult.data ?? []).map((scope) => scope.version_group_id),
  ];
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
  const speciesForms = speciesFormsResult.data ?? [];
  const changeableFormIds = getChangeableFormIds(
    speciesForms,
    resolveFormClasses(speciesForms, formClassById),
    formId,
  );
  const targetFormIds = [
    ...new Set([...edges.map((edge) => edge.to_form_id), ...changeableFormIds]),
  ];

  const [
    abilitiesResult,
    abilityAttributesResult,
    versionGroupsResult,
    balls,
    heldItems,
    moves,
    targetFormsResult,
    targetAttributesResult,
    typesResult,
    heldItemForms,
  ] = await Promise.all([
    abilityIds.length
      ? supabase
          .schema("reference")
          .from("abilities")
          .select("id, name")
          .in("id", abilityIds)
      : null,
    abilityIds.length
      ? supabase
          .schema("reference")
          .from("ability_attributes")
          .select("ability_id, version_group_start_id, effect_summary")
          .in("ability_id", abilityIds)
      : null,
    abilityIds.length
      ? supabase
          .schema("reference")
          .from("version_groups")
          .select("id, sort_order")
      : null,
    readPokeBallOptions(supabase, {
      gameIds: [gameId],
      versionGroupIds: playVersionGroupIds,
    }),
    hasHeldItems
      ? readHeldItemOptions(supabase, {
          gameIds: [gameId],
          versionGroupIds: playVersionGroupIds,
        })
      : [],
    readMoveOptions(supabase, {
      generationId,
      learnedBy: { formId, gameIds: [gameId], versionGroupId },
      moveIds,
    }),
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
          .select(
            "form_id, generation_start_id, primary_type_id, secondary_type_id",
          )
          .in("form_id", targetFormIds)
          .lte("generation_start_id", generationId)
      : null,
    targetFormIds.length
      ? supabase.schema("reference").from("types").select("id, name, slug")
      : null,
    readHeldItemForms(supabase, {
      formIds: changeableFormIds,
      generationId,
      versionGroupId,
    }),
  ]);

  if (
    abilitiesResult?.error ||
    abilityAttributesResult?.error ||
    versionGroupsResult?.error ||
    targetFormsResult?.error ||
    targetAttributesResult?.error ||
    typesResult?.error
  ) {
    throw new Error("Unable to load what this Pokémon can record.");
  }

  /* Each target's attributes in this generation, newest first. */
  const attributeByFormId = new Map(
    newestFirst(targetAttributesResult?.data ?? [])
      .toReversed()
      .map((row) => [row.form_id, row]),
  );
  const typeById = new Map(
    (typesResult?.data ?? []).map((type) => [type.id, type]),
  );
  /*
   * A form a held item selects can't be picked: it says which item, and the
   * default of such a Pokémon follows its held item too.
   */
  const followsHeldItem = (targetFormId: number) => {
    const items = heldItemForms.get(targetFormId);

    if (items?.length) {
      return `Hold ${items.join(" or ")}`;
    }

    return heldItemForms.size && !formClassById.has(targetFormId)
      ? "Follows its held item"
      : null;
  };
  const toFormOption = (form: {
    id: number;
    name: string;
    species_id: number;
    slug: string | null;
  }): EditorFormOption => {
    const attribute = attributeByFormId.get(form.id);

    return {
      formId: form.id,
      heldItemNote:
        form.species_id === speciesId ? followsHeldItem(form.id) : null,
      imageUrl: getPokemonFormImageUrl(form, "sm"),
      name: form.name,
      speciesId: form.species_id,
      types: [attribute?.primary_type_id, attribute?.secondary_type_id].flatMap(
        (typeId) => {
          const type = typeId ? typeById.get(typeId) : undefined;

          return type ? [{ name: type.name, slug: type.slug }] : [];
        },
      ),
    };
  };
  const targetForms = (targetFormsResult?.data ?? []).filter((form) =>
    attributeByFormId.has(form.id),
  );
  const abilityById = new Map(
    (abilitiesResult?.data ?? []).map((ability) => [ability.id, ability]),
  );
  const abilityEffects = resolveAbilityEffects(
    abilityAttributesResult?.data ?? [],
    versionGroupId,
    versionGroupsResult?.data ?? [],
  );

  return {
    abilities: abilityIds.flatMap((id) => {
      const ability = abilityById.get(id);
      return ability
        ? [{ ...ability, effect: abilityEffects.get(id) ?? null }]
        : [];
    }),
    balls,
    evolutions: edges.flatMap((edge) => {
      const form = targetForms.find((item) => item.id === edge.to_form_id);
      return form ? [toFormOption(form)] : [];
    }),
    forms: changeableFormIds.flatMap((id) => {
      const form = targetForms.find((item) => item.id === id);

      return form ? [toFormOption(form)] : [];
    }),
    heldItems,
    moves,
    natures: (naturesResult?.data ?? []).map((nature) => ({
      decreased: nature.decreased_stat,
      id: nature.id,
      increased: nature.increased_stat,
      name: nature.name,
    })),
    /* Stellar only when the Play includes The Indigo Disk. */
    teraTypes: (teraTypesResult?.data ?? [])
      .filter(
        (teraType) =>
          teraType.introduced_version_group_id === versionGroupId ||
          (contentScopesResult.data ?? []).some(
            (scope) =>
              scope.version_group_id === teraType.introduced_version_group_id,
          ),
      )
      .map(({ id, name }) => ({ id, name })),
  };
};
