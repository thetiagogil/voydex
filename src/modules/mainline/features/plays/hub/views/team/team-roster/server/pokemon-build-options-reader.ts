import { resolveAbilityEffects } from "@/modules/reference/features/pokemon/data/ability-effects";
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
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type { TeamMemberEditorOptions } from "../utils/team-member-editor-model";

/* A Pokémon's build in the Play's game: what Add's More details and Edit offer. */
export type PokemonBuildOptions = Pick<
  TeamMemberEditorOptions,
  "abilities" | "heldItems" | "moves" | "natures"
>;

const newestFirst = <T extends { generation_start_id: number }>(rows: T[]) =>
  rows.toSorted(
    (left, right) => right.generation_start_id - left.generation_start_id,
  );

/*
 * The natures, abilities, held items and moves a form can have in the Play's
 * exact game, each only where the game records it. Held items include the
 * Play's add-ons.
 */
export const readPokemonBuildOptions = async (
  supabase: ServerSupabaseClient,
  {
    formId,
    gameId,
    generationId,
    mechanics,
    playId,
    versionGroupId,
  }: {
    formId: number;
    gameId: number;
    generationId: number;
    mechanics: GameMechanicsProfile;
    playId: string;
    versionGroupId: number;
  },
): Promise<PokemonBuildOptions> => {
  const hasAbilities = supportsGameMechanic(mechanics, gameMechanics.abilities);
  const hasNatures = supportsGameMechanic(mechanics, gameMechanics.natures);
  const hasHeldItems = supportsGameMechanic(mechanics, gameMechanics.heldItems);
  const [attributesResult, naturesResult, learnsets, contentScopesResult] =
    await Promise.all([
      hasAbilities
        ? supabase
            .schema("reference")
            .from("pokemon_attributes")
            .select(
              "generation_start_id, primary_ability_id, secondary_ability_id, hidden_ability_id",
            )
            .eq("form_id", formId)
            .lte("generation_start_id", generationId)
        : null,
      hasNatures
        ? supabase
            .schema("reference")
            .from("natures")
            .select("id, name, increased_stat, decreased_stat")
            .lte("introduced_generation_id", generationId)
            .order("name", { ascending: true })
        : null,
      readFormLearnsetRows(supabase, { formId, versionGroupId }),
      /* The add-ons the Play includes: their held items. */
      hasHeldItems
        ? supabase
            .schema("gameplay")
            .from("mainline_play_optional_content_scopes")
            .select("version_group_id")
            .eq("play_id", playId)
        : null,
    ]);

  if (
    attributesResult?.error ||
    naturesResult?.error ||
    contentScopesResult?.error
  ) {
    throw new Error("Unable to load what this Pokémon can record.");
  }

  const attribute = newestFirst(attributesResult?.data ?? [])[0];
  const abilityIds = attribute
    ? [
        attribute.primary_ability_id,
        attribute.secondary_ability_id,
        attribute.hidden_ability_id,
      ].filter((id): id is number => id !== null)
    : [];
  const [
    abilitiesResult,
    abilityAttributesResult,
    versionGroupsResult,
    heldItems,
    moves,
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
    hasHeldItems
      ? readHeldItemOptions(supabase, {
          gameIds: [gameId],
          versionGroupIds: [
            versionGroupId,
            ...(contentScopesResult?.data ?? []).map(
              (scope) => scope.version_group_id,
            ),
          ],
        })
      : [],
    readMoveOptions(supabase, {
      generationId,
      learnedBy: { formId, gameIds: [gameId], versionGroupId },
      moveIds: getLearnableMoveIds(learnsets, [gameId]),
    }),
  ]);

  if (
    abilitiesResult?.error ||
    abilityAttributesResult?.error ||
    versionGroupsResult?.error
  ) {
    throw new Error("Unable to load what this Pokémon can record.");
  }

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
