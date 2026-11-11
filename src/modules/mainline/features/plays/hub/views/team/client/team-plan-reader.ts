import type {
  MainlinePlayFollowablePlan,
  MainlinePlayTeamPlanRows,
} from "@/modules/mainline/features/plays/hub/types";
import { getOtherVersionExclusives } from "@/modules/mainline/features/plays/hub/views/team/data/team-plan-exclusives";
import { isInGameAvailabilityMethod } from "@/modules/reference/features/games/domain/version-exclusives";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export const readMainlinePlayTeamPlanRows = async (
  supabase: ServerSupabaseClient,
  userId: string,
  playId: string,
  generationId: number | null,
): Promise<MainlinePlayTeamPlanRows> => {
  const result = await supabase
    .schema("views")
    .from("mainline_play_team_plan_detail")
    .select("*")
    .eq("user_id", userId)
    .eq("play_id", playId)
    .order("slot", { ascending: true });

  if (result.error) {
    throw new Error("Unable to load the Mainline Team Plan summary.");
  }

  const rows = result.data ?? [];
  const formIds = uniqueNumberIds(rows.map((row) => row.target_form_id));

  if (!formIds.length) {
    return { attributes: [], rows, types: [] };
  }

  let attributesQuery = supabase
    .schema("reference")
    .from("pokemon_attributes")
    .select("*")
    .in("form_id", formIds);

  if (generationId) {
    attributesQuery = attributesQuery.lte("generation_start_id", generationId);
  }

  const attributesResult = await attributesQuery
    .order("form_id", { ascending: true })
    .order("generation_start_id", { ascending: false });

  if (attributesResult.error) {
    throw new Error(
      "Unable to load the Mainline Team Plan Pokémon attributes.",
    );
  }

  const attributes = attributesResult.data ?? [];
  const typeIds = uniqueNumberIds(
    attributes.flatMap((attribute) => [
      attribute.primary_type_id,
      attribute.secondary_type_id,
    ]),
  );
  const typesResult = typeIds.length
    ? await supabase
        .schema("reference")
        .from("types")
        .select("*")
        .in("id", typeIds)
    : null;

  if (typesResult?.error) {
    throw new Error("Unable to load the Mainline Team Plan type references.");
  }

  return {
    attributes,
    rows,
    types: typesResult?.data ?? [],
  };
};

/*
 * Your Plans this Play could follow instead: the same version group (a Plan
 * is for either of its games), not archived, the latest changed first.
 */
export const readMainlinePlayFollowablePlans = async (
  supabase: ServerSupabaseClient,
  {
    userId,
    versionGroupId,
  }: {
    userId: string;
    versionGroupId: number | null;
  },
): Promise<MainlinePlayFollowablePlan[]> => {
  if (!versionGroupId) {
    return [];
  }

  const result = await supabase
    .schema("views")
    .from("mainline_team_plan_summary")
    .select(
      "team_plan_id, team_plan_name, member_count, status_slug, updated_at",
    )
    .eq("user_id", userId)
    .eq("version_group_id", versionGroupId)
    .order("updated_at", { ascending: false });

  if (result.error) {
    throw new Error("Unable to load your Plans for this game.");
  }

  return (result.data ?? []).flatMap((row) =>
    row.team_plan_id && row.status_slug !== "archived"
      ? [
          {
            memberCount: row.member_count ?? 0,
            name: row.team_plan_name ?? "Untitled Plan",
            planId: row.team_plan_id,
            updatedAt: row.updated_at,
          },
        ]
      : [],
  );
};

/*
 * The planned forms another game of the Play's version group has to itself,
 * by form id: a Plan is for either game, so this Play checks against its own,
 * with the expansions it tracks (Goodra is Shield-only in the base game, but
 * The Isle of Armor has it in both).
 */
export const readMainlinePlayOtherVersionExclusives = async (
  supabase: ServerSupabaseClient,
  {
    formIds,
    gameId,
    playId,
    versionGroupId,
  }: {
    formIds: number[];
    gameId: number | null;
    playId: string;
    versionGroupId: number | null;
  },
): Promise<Record<number, string>> => {
  if (!gameId || !versionGroupId || !formIds.length) {
    return {};
  }

  const scopesResult = await supabase
    .schema("gameplay")
    .from("mainline_play_optional_content_scopes")
    .select("version_group_id")
    .eq("play_id", playId);

  if (scopesResult.error) {
    throw new Error("Unable to load which game has each planned Pokémon.");
  }

  const reference = supabase.schema("reference");
  const [gamesResult, methodsResult, availabilityResult] = await Promise.all([
    reference
      .from("games")
      .select("id, name")
      .eq("version_group_id", versionGroupId),
    reference.from("availability_methods").select("id, slug"),
    supabase
      .schema("views")
      .from("reference_resolved_pokemon_availability")
      .select("availability_method_id, form_id, game_id, species_id")
      .in("target_version_group_id", [
        versionGroupId,
        ...scopesResult.data.map((scope) => scope.version_group_id),
      ])
      .in("form_id", uniqueNumberIds(formIds)),
  ]);

  if (gamesResult.error || methodsResult.error || availabilityResult.error) {
    throw new Error("Unable to load which game has each planned Pokémon.");
  }

  return getOtherVersionExclusives({
    games: gamesResult.data,
    inGameMethodIds: new Set(
      methodsResult.data
        .filter((method) => isInGameAvailabilityMethod(method))
        .map((method) => method.id),
    ),
    playGameId: gameId,
    rows: availabilityResult.data.flatMap((row) =>
      row.availability_method_id !== null &&
      row.form_id !== null &&
      row.species_id !== null
        ? [
            {
              availability_method_id: row.availability_method_id,
              form_id: row.form_id,
              game_id: row.game_id,
              species_id: row.species_id,
            },
          ]
        : [],
    ),
  });
};
