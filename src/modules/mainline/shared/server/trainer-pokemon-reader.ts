import type {
  MainlinePlaySummary,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/shared/types";
import {
  loadChunkedReferenceRows,
  loadPagedReferenceRows,
} from "@/modules/reference/reference-rows";
import type {
  Game,
  PokemonAttributes,
  PokemonForm,
  Region,
  Type,
} from "@/modules/reference/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

/* One time a Pokémon was part of a Play: on its roster, in a moment or in a team saved with one. */
export type TrainerPokemonUse = {
  evolution_family_id: number | null;
  form_id: number | null;
  national_number: number | null;
  play_id: string | null;
  species_id: number | null;
  species_name: string | null;
  species_slug: string | null;
  used_at: string | null;
};

/*
 * Everything the trainer's Pokémon pages read: every Play (archived too, so a
 * Pokémon keeps the Play it was in), every Pokémon on those Plays' rosters,
 * every recorded use, and the reference rows that draw them.
 */
export type TrainerPokemonRows = {
  attributes: PokemonAttributes[];
  forms: Pick<
    PokemonForm,
    "id" | "is_default" | "name" | "slug" | "species_id" | "sprite_slug"
  >[];
  games: Game[];
  plays: MainlinePlaySummary[];
  regions: Region[];
  roster: MainlinePlayTeamMember[];
  types: Type[];
  uses: TrainerPokemonUse[];
};

const readTrainerPlays = async (
  supabase: ServerSupabaseClient,
  userId: string,
) => {
  const result = await supabase
    .schema("views")
    .from("mainline_play_summary")
    .select("*")
    .eq("user_id", userId)
    .order("updated_at", { ascending: false });

  if (result.error) {
    throw new Error("Unable to load your Plays.");
  }

  return result.data ?? [];
};

const readTrainerRoster = async (
  supabase: ServerSupabaseClient,
  playIds: string[],
) => {
  if (!playIds.length) {
    return [];
  }

  return loadPagedReferenceRows<MainlinePlayTeamMember>(
    (from, to) =>
      supabase
        .schema("views")
        .from("mainline_play_team_detail")
        .select("*")
        .in("play_id", playIds)
        .order("play_id", { ascending: true })
        .order("play_pokemon_id", { ascending: true })
        .range(from, to),
    "Unable to load the Pokémon on your Plays.",
  );
};

const readTrainerUses = async (
  supabase: ServerSupabaseClient,
  userId: string,
) => {
  return loadPagedReferenceRows<TrainerPokemonUse>(
    (from, to) =>
      supabase
        .schema("views")
        .from("mainline_collection_used_identities")
        .select(
          "evolution_family_id, form_id, national_number, play_id, species_id, species_name, species_slug, used_at",
        )
        .eq("user_id", userId)
        .order("source_row_id", { ascending: true })
        .range(from, to),
    "Unable to load the Pokémon you've used.",
  );
};

const readGamesAndRegions = async (
  supabase: ServerSupabaseClient,
  gameIds: number[],
) => {
  const [gamesResult, regionsResult] = await Promise.all([
    gameIds.length
      ? supabase.schema("reference").from("games").select("*").in("id", gameIds)
      : null,
    supabase
      .schema("reference")
      .from("regions")
      .select("*")
      .order("sort_order", { ascending: true }),
  ]);

  if (gamesResult?.error || regionsResult.error) {
    throw new Error("Unable to load your Plays' games.");
  }

  return {
    games: gamesResult?.data ?? [],
    regions: regionsResult.data ?? [],
  };
};

const readTypes = async (supabase: ServerSupabaseClient) => {
  const result = await supabase
    .schema("reference")
    .from("types")
    .select("*")
    .order("sort_order", { ascending: true });

  if (result.error) {
    throw new Error("Unable to load Pokémon types.");
  }

  return result.data ?? [];
};

const readForms = async (supabase: ServerSupabaseClient, formIds: number[]) => {
  if (!formIds.length) {
    return { attributes: [], forms: [] };
  }

  const [forms, attributes] = await Promise.all([
    loadChunkedReferenceRows<TrainerPokemonRows["forms"][number]>(
      formIds,
      (ids, from, to) =>
        supabase
          .schema("reference")
          .from("pokemon_forms")
          .select("id, is_default, name, slug, species_id, sprite_slug")
          .in("id", ids)
          .order("id", { ascending: true })
          .range(from, to),
      "Unable to load Pokémon forms.",
    ),
    loadChunkedReferenceRows<PokemonAttributes>(
      formIds,
      (ids, from, to) =>
        supabase
          .schema("reference")
          .from("pokemon_attributes")
          .select("*")
          .in("form_id", ids)
          .order("form_id", { ascending: true })
          .order("generation_start_id", { ascending: false })
          .range(from, to),
      "Unable to load Pokémon types.",
    ),
  ]);

  return { attributes, forms };
};

export const readTrainerPokemonRows = async (
  supabase: ServerSupabaseClient,
  userId: string,
): Promise<TrainerPokemonRows> => {
  const plays = await readTrainerPlays(supabase, userId);
  const playIds = plays.flatMap((play) => (play.play_id ? [play.play_id] : []));
  const [roster, uses, gameRows] = await Promise.all([
    readTrainerRoster(supabase, playIds),
    playIds.length ? readTrainerUses(supabase, userId) : [],
    readGamesAndRegions(
      supabase,
      uniqueNumberIds(plays.map((play) => play.game_id)),
    ),
  ]);
  const formIds = uniqueNumberIds([
    ...roster.map((member) => member.form_id),
    ...uses.map((use) => use.form_id),
  ]);
  const [formRows, types] = await Promise.all([
    readForms(supabase, formIds),
    readTypes(supabase),
  ]);

  return {
    ...formRows,
    ...gameRows,
    plays,
    roster,
    types,
    uses,
  };
};
