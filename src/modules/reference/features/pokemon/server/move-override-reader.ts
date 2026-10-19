import type { MoveVersionGroupAttribute } from "@/modules/reference/shared/database-types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/* The version-group move overrides for these moves; a failed read throws. */
export const readMoveVersionGroupOverrides = async (
  supabase: ServerSupabaseClient,
  {
    moveIds,
    versionGroupId,
  }: { moveIds: number[]; versionGroupId?: number | null },
): Promise<MoveVersionGroupAttribute[]> => {
  if (!moveIds.length || versionGroupId === null) {
    return [];
  }

  let query = supabase
    .schema("reference")
    .from("move_version_group_attributes")
    .select("*")
    .in("move_id", moveIds);

  if (versionGroupId !== undefined) {
    query = query.eq("version_group_id", versionGroupId);
  }

  const result = await query;

  if (result.error) {
    throw new Error("Unable to load version-specific move details.");
  }

  return result.data ?? [];
};
