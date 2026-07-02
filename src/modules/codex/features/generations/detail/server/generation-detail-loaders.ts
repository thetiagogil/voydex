import type { ServerSupabaseClient } from "@/lib/supabase/server";
import type {
  Game,
  Generation,
  PokemonSpecies,
  Region,
  VersionGroup,
} from "@/modules/codex/shared/types";

export type GenerationDetailRows = {
  games: Game[];
  generation: Generation;
  introducedSpecies: PokemonSpecies[];
  regions: Region[];
  versionGroups: VersionGroup[];
};

export const loadGenerationDetailRows = async (
  supabase: ServerSupabaseClient,
  identifier: string,
): Promise<GenerationDetailRows | null> => {
  const numericId = Number(identifier);
  const generationQuery = supabase
    .schema("reference")
    .from("generations")
    .select("*");
  const generationResult = Number.isInteger(numericId)
    ? await generationQuery.eq("id", numericId).maybeSingle()
    : await generationQuery.eq("slug", identifier).maybeSingle();

  if (generationResult.error) {
    throw new Error("Unable to load generation.");
  }

  if (!generationResult.data) {
    return null;
  }

  const generation = generationResult.data;
  const [gamesResult, versionGroupsResult, speciesResult, regionsResult] =
    await Promise.all([
      supabase
        .schema("reference")
        .from("games")
        .select("*")
        .eq("generation_id", generation.id)
        .order("sort_order", { ascending: true }),
      supabase
        .schema("reference")
        .from("version_groups")
        .select("*")
        .eq("generation_id", generation.id)
        .order("sort_order", { ascending: true }),
      supabase
        .schema("reference")
        .from("pokemon_species")
        .select("*")
        .eq("introduced_generation_id", generation.id)
        .order("national_number", { ascending: true }),
      supabase
        .schema("reference")
        .from("regions")
        .select("*")
        .order("sort_order", { ascending: true }),
    ]);

  if (
    gamesResult.error ||
    versionGroupsResult.error ||
    speciesResult.error ||
    regionsResult.error
  ) {
    throw new Error("Unable to load generation detail data.");
  }

  return {
    games: gamesResult.data ?? [],
    generation,
    introducedSpecies: speciesResult.data ?? [],
    regions: regionsResult.data ?? [],
    versionGroups: versionGroupsResult.data ?? [],
  };
};
