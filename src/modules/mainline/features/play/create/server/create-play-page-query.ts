import { createServerSupabaseClient } from "@/lib/supabase/server";
import { buildCreatePlayGameOptions } from "@/modules/mainline/features/play/create/data/create-play-game-option-mappers";
import {
  loadCreateMainlinePlaySetupRows,
  loadMainlineProductFamily,
} from "@/modules/mainline/features/play/create/server/create-play-page-loaders";
import type { CreateMainlinePlayPageData } from "@/modules/mainline/features/play/types";

export const getCreateMainlinePlayPageData =
  async (): Promise<CreateMainlinePlayPageData> => {
    const supabase = await createServerSupabaseClient();
    const productFamily = await loadMainlineProductFamily(supabase);

    if (!productFamily) {
      return {
        defaultStatusId: null,
        games: [],
        statuses: [],
      };
    }

    const rows = await loadCreateMainlinePlaySetupRows(
      supabase,
      productFamily.id,
    );
    const defaultStatus =
      rows.statuses.find((status) => status.slug === "in_progress") ??
      rows.statuses.find((status) => !status.is_terminal) ??
      rows.statuses[0] ??
      null;

    return {
      defaultStatusId: defaultStatus?.id ?? null,
      games: buildCreatePlayGameOptions(rows.games, {
        gamePlatforms: rows.gamePlatforms,
        generations: rows.generations,
        platforms: rows.platforms,
        regions: rows.regions,
        versionGroups: rows.versionGroups,
      }),
      statuses: rows.statuses,
    };
  };
