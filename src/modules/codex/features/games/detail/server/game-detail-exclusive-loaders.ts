import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  getVersionExclusives,
  isInGameAvailabilityMethod,
  type VersionExclusive,
  type VersionExclusiveAvailabilityRow,
} from "@/modules/reference/features/games/domain/version-exclusives";
import { loadPagedReferenceRows } from "@/modules/reference/reference-rows";
import type {
  Game,
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
  Type,
  VersionGroup,
} from "@/modules/reference/types";

export type VersionExclusiveRows = {
  attributes: PokemonAttributes[];
  /* Each game's exclusive forms, by game id. */
  exclusivesByGameId: Map<number, VersionExclusive[]>;
  forms: PokemonForm[];
  species: PokemonSpecies[];
  types: Type[];
};

const emptyExclusiveRows = (games: Game[]): VersionExclusiveRows => ({
  attributes: [],
  exclusivesByGameId: new Map(games.map((game) => [game.id, []])),
  forms: [],
  species: [],
  types: [],
});

type ResolvedAvailabilityRow = {
  availability_method_id: number | null;
  form_id: number | null;
  game_id: number | null;
  species_id: number | null;
};

/*
 * The base game's version exclusives (expansions aside): its resolved
 * availability, the methods that count as in the game itself, then the
 * exclusive forms with their species, attributes and types.
 */
export const loadVersionExclusiveRows = async (
  supabase: ServerSupabaseClient,
  versionGroup: VersionGroup,
  games: Game[],
): Promise<VersionExclusiveRows> => {
  if (games.length < 2) {
    return emptyExclusiveRows(games);
  }

  const [methodsResult, availabilityRows] = await Promise.all([
    supabase
      .schema("reference")
      .from("availability_methods")
      .select("id, slug"),
    loadPagedReferenceRows<ResolvedAvailabilityRow>(
      (from, to) =>
        supabase
          .schema("views")
          .from("reference_resolved_pokemon_availability")
          .select("availability_method_id, form_id, game_id, species_id")
          .eq("target_version_group_id", versionGroup.id)
          .order("id", { ascending: true })
          .range(from, to),
      "Unable to load version exclusives.",
    ),
  ]);

  if (methodsResult.error) {
    throw new Error("Unable to load version exclusives.");
  }

  const rows = availabilityRows.flatMap(
    (row): VersionExclusiveAvailabilityRow[] =>
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
  );
  const exclusivesByGameId = getVersionExclusives({
    gameIds: games.map((game) => game.id),
    inGameMethodIds: new Set(
      methodsResult.data
        .filter(isInGameAvailabilityMethod)
        .map((method) => method.id),
    ),
    rows,
  });
  const exclusives = [...exclusivesByGameId.values()].flat();

  if (!exclusives.length) {
    return { ...emptyExclusiveRows(games), exclusivesByGameId };
  }

  const formIds = [...new Set(exclusives.map((exclusive) => exclusive.formId))];
  const speciesIds = [
    ...new Set(exclusives.map((exclusive) => exclusive.speciesId)),
  ];
  const [formsResult, speciesResult, attributesResult, typesResult] =
    await Promise.all([
      supabase
        .schema("reference")
        .from("pokemon_forms")
        .select("*")
        .in("id", formIds),
      supabase
        .schema("reference")
        .from("pokemon_species")
        .select("*")
        .in("id", speciesIds),
      supabase
        .schema("reference")
        .from("pokemon_attributes")
        .select("*")
        .in("form_id", formIds),
      supabase.schema("reference").from("types").select("*"),
    ]);

  if (
    formsResult.error ||
    speciesResult.error ||
    attributesResult.error ||
    typesResult.error
  ) {
    throw new Error("Unable to load version exclusives.");
  }

  return {
    attributes: attributesResult.data,
    exclusivesByGameId,
    forms: formsResult.data,
    species: speciesResult.data,
    types: typesResult.data,
  };
};
