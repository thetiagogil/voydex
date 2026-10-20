"use server";

import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export type PlannerGameSwitchCheck =
  | { missingSpeciesIds: number[]; status: "success"; versionGroupName: string }
  | { message: string; status: "error" };

const checkFailure = "Unable to check that game right now. Try again.";

/*
 * Before the Planner switches game: which of the team's species aren't in
 * the new version group's Pokédexes (its expansions' included), so the
 * switch can say what it would drop.
 */
export const checkPlannerGameSwitchAction = async (input: {
  speciesIds: unknown;
  versionGroupSlug: unknown;
}): Promise<PlannerGameSwitchCheck> => {
  const speciesIds = Array.isArray(input.speciesIds)
    ? uniqueNumberIds(
        input.speciesIds.filter(
          (id): id is number => Number.isInteger(id) && id > 0,
        ),
      ).slice(0, 6)
    : [];

  if (typeof input.versionGroupSlug !== "string" || !input.versionGroupSlug) {
    return { message: "Pick a game for the Plan.", status: "error" };
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);

  if (!claimsResult?.data?.claims?.sub) {
    return { message: "Log in to plan a team.", status: "error" };
  }

  const reference = supabase.schema("reference");
  const groupResult = await reference
    .from("version_groups")
    .select("id, name")
    .eq("slug", input.versionGroupSlug)
    .is("parent_version_group_id", null)
    .maybeSingle();

  if (groupResult.error || !groupResult.data) {
    return { message: checkFailure, status: "error" };
  }

  const group = groupResult.data;

  if (!speciesIds.length) {
    return {
      missingSpeciesIds: [],
      status: "success",
      versionGroupName: group.name,
    };
  }

  const expansionsResult = await reference
    .from("version_groups")
    .select("id")
    .eq("parent_version_group_id", group.id);
  const pokedexesResult = expansionsResult.error
    ? null
    : await reference
        .from("pokedex")
        .select("id")
        .in("version_group_id", [
          group.id,
          ...(expansionsResult.data ?? []).map((expansion) => expansion.id),
        ]);

  if (!pokedexesResult || pokedexesResult.error) {
    return { message: checkFailure, status: "error" };
  }

  const entriesResult = await reference
    .from("pokedex_entries")
    .select("species_id")
    .in(
      "pokedex_id",
      (pokedexesResult.data ?? []).map((pokedex) => pokedex.id),
    )
    .in("species_id", speciesIds);

  if (entriesResult.error) {
    return { message: checkFailure, status: "error" };
  }

  const found = new Set(
    (entriesResult.data ?? []).map((entry) => entry.species_id),
  );

  return {
    missingSpeciesIds: speciesIds.filter((id) => !found.has(id)),
    status: "success",
    versionGroupName: group.name,
  };
};
