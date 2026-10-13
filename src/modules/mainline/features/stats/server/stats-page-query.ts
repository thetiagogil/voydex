import { buildTrainerPokemonEntries } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import { readTrainerPokemonRows } from "@/modules/mainline/shared/server/trainer-pokemon-reader";
import {
  buildStatsModel,
  type StatsModel,
} from "@/modules/mainline/features/stats/data/stats-model";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/* Statistics read what the Collection reads, added up. */
export const getStatsPageData = async (): Promise<StatsModel> => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);
  const rows = await readTrainerPokemonRows(supabase, userId);

  return buildStatsModel(rows, buildTrainerPokemonEntries(rows));
};
