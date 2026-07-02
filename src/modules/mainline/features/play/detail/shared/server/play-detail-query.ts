import { getClaimsWithTimeout } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";
import { buildMainlinePlayDetailData } from "@/modules/mainline/features/play/detail/shared/data/play-detail-mappers";
import { buildPokemonDisplayMetadataByFormId } from "@/modules/mainline/features/play/detail/shared/data/pokemon-display-mappers";
import {
  loadMainlinePlayDetailRows,
  loadMainlinePlayOverview,
} from "@/modules/mainline/features/play/detail/shared/server/play-detail-loaders";
import { loadPokemonDisplayRows } from "@/modules/mainline/features/play/detail/shared/server/pokemon-display-loaders";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import { uniqueNumberIds } from "@/shared/utils/collections";
import { isUuid } from "@/shared/utils/identifiers";

export const getMainlinePlayDetailData = async (
  playId: string,
): Promise<MainlinePlayDetailData | null> => {
  if (!isUuid(playId)) {
    return null;
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("Unable to load the current account.");
  }

  const overview = await loadMainlinePlayOverview(supabase, playId, userId);

  if (!overview) {
    return null;
  }

  const rows = await loadMainlinePlayDetailRows(
    supabase,
    playId,
    userId,
    overview.game_id,
  );
  const formIds = uniqueNumberIds([
    ...rows.team.map((pokemon) => pokemon.form_id),
    ...rows.pokedexEntries.map((entry) => entry.display_form_id),
  ]);
  const displayRows = await loadPokemonDisplayRows(
    supabase,
    formIds,
    overview.generation_id,
  );
  const displayByFormId = buildPokemonDisplayMetadataByFormId(
    formIds,
    displayRows,
  );

  return buildMainlinePlayDetailData({
    displayByFormId,
    overview,
    rows,
  });
};
