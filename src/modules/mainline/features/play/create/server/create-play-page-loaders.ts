import type { ServerSupabaseClient } from "@/lib/supabase/server";
import type {
  Game,
  GamePlatform,
  Generation,
  Platform,
  Region,
  VersionGroup,
} from "@/modules/codex/shared/types";
import type {
  MainlinePlayStatus,
  ProductFamily,
} from "@/modules/mainline/shared/types/mainline.types";

export type CreateMainlinePlaySetupRows = {
  gamePlatforms: GamePlatform[];
  games: Game[];
  generations: Generation[];
  platforms: Platform[];
  regions: Region[];
  statuses: MainlinePlayStatus[];
  versionGroups: VersionGroup[];
};

export const loadMainlineProductFamily = async (
  supabase: ServerSupabaseClient,
): Promise<ProductFamily | null> => {
  const productFamilyResult = await supabase
    .schema("reference")
    .from("product_families")
    .select("*")
    .eq("slug", "mainline")
    .maybeSingle();

  if (productFamilyResult.error) {
    throw new Error("Unable to load Mainline product family.");
  }

  return productFamilyResult.data ?? null;
};

export const loadCreateMainlinePlaySetupRows = async (
  supabase: ServerSupabaseClient,
  productFamilyId: number,
): Promise<CreateMainlinePlaySetupRows> => {
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
      .eq("product_family_id", productFamilyId)
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

  return {
    gamePlatforms: gamePlatformsResult.data ?? [],
    games: gamesResult.data ?? [],
    generations: generationsResult.data ?? [],
    platforms: platformsResult.data ?? [],
    regions: regionsResult.data ?? [],
    statuses: statusesResult.data ?? [],
    versionGroups: versionGroupsResult.data ?? [],
  };
};
