import { createServerSupabaseClient } from "@/lib/supabase/server";
import {
  buildGameOptions,
  getMainlineProductFamily,
} from "@/modules/mainline/features/play/data/create-play-options";
import type { CreateMainlinePlayPageData } from "@/modules/mainline/features/play/types";

export const getCreateMainlinePlayPageData =
  async (): Promise<CreateMainlinePlayPageData> => {
    const supabase = await createServerSupabaseClient();
    const productFamily = await getMainlineProductFamily(supabase);

    if (!productFamily) {
      return {
        defaultStatusId: null,
        games: [],
        statuses: [],
      };
    }

    const [
      gamesResult,
      generationsResult,
      regionsResult,
      versionGroupsResult,
      gamePlatformsResult,
      platformsResult,
      statusesResult,
    ] = await Promise.all([
      supabase
        .schema("reference")
        .from("games")
        .select("*")
        .eq("product_family_id", productFamily.id)
        .order("sort_order", { ascending: true }),
      supabase
        .schema("reference")
        .from("generations")
        .select("*")
        .order("sort_order", { ascending: true }),
      supabase
        .schema("reference")
        .from("regions")
        .select("*")
        .order("sort_order", { ascending: true }),
      supabase
        .schema("reference")
        .from("version_groups")
        .select("*")
        .order("sort_order", { ascending: true }),
      supabase
        .schema("reference")
        .from("game_platforms")
        .select("*")
        .order("sort_order", { ascending: true }),
      supabase
        .schema("reference")
        .from("platforms")
        .select("*")
        .order("sort_order", { ascending: true }),
      supabase
        .schema("gameplay")
        .from("mainline_play_statuses")
        .select("*")
        .order("sort_order", { ascending: true }),
    ]);

    if (
      gamesResult.error ||
      generationsResult.error ||
      regionsResult.error ||
      versionGroupsResult.error ||
      gamePlatformsResult.error ||
      platformsResult.error ||
      statusesResult.error
    ) {
      throw new Error("Unable to load Mainline play setup data.");
    }

    const statuses = statusesResult.data ?? [];
    const defaultStatus =
      statuses.find((status) => status.slug === "in_progress") ??
      statuses.find((status) => !status.is_terminal) ??
      statuses[0] ??
      null;

    return {
      defaultStatusId: defaultStatus?.id ?? null,
      games: buildGameOptions(gamesResult.data ?? [], {
        gamePlatforms: gamePlatformsResult.data ?? [],
        generations: generationsResult.data ?? [],
        platforms: platformsResult.data ?? [],
        regions: regionsResult.data ?? [],
        versionGroups: versionGroupsResult.data ?? [],
      }),
      statuses,
    };
  };
