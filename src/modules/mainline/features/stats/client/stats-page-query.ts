import { buildTrainerPokemonEntries } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { getSignedInTrainerId } from "@/modules/mainline/shared/client/signed-in-trainer";
import { readTrainerPokemonRows } from "@/modules/mainline/shared/client/trainer-pokemon-reader";
import {
  buildStatsModel,
  type StatsModel,
} from "@/modules/mainline/features/stats/data/stats-model";
import { getLocalQueryClient } from "@/platform/local-db/open-local-db";
import type { MainlinePageRead } from "@/modules/mainline/shared/client/use-local-page-data";

/* Statistics read what the Collection reads, added up. */
export const getStatsPageData = async (): Promise<StatsModel> => {
  const supabase = await getLocalQueryClient();
  const userId = await getSignedInTrainerId(supabase);
  const rows = await readTrainerPokemonRows(supabase, userId);

  return buildStatsModel(rows, buildTrainerPokemonEntries(rows));
};

/* The Statistics page's read. */
export const statsPageRead: MainlinePageRead<StatsModel> = {
  key: "stats",
  read: getStatsPageData,
};
