import { loadChunkedReferenceRows } from "@/modules/reference/reference-rows";
import type {
  Generation,
  Pokedex,
  PokemonAttributes,
  PokemonForm,
  Type,
} from "@/modules/reference/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { buildMainlinePlayPokedexData } from "../data/pokedex-progress-mapper";
import type {
  MainlinePlayPokedexDetailRow,
  MainlinePlayProgressPokedexData,
} from "../types";

const PAGE_SIZE = 1000;

const readPokedexDetailRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
) => {
  const rows: MainlinePlayPokedexDetailRow[] = [];

  for (let from = 0; ; from += PAGE_SIZE) {
    const result = await supabase
      .schema("views")
      .from("mainline_play_pokedex_detail")
      .select("*")
      .eq("play_id", playId)
      .order("pokedex_id", { ascending: true })
      .order("pokedex_number", { ascending: true })
      .range(from, from + PAGE_SIZE - 1);

    if (result.error) {
      throw new Error("Unable to load Mainline Pokédex progress.");
    }

    const page = result.data ?? [];
    rows.push(...page);

    if (page.length < PAGE_SIZE) {
      return rows;
    }
  }
};

const readPokemonForms = async (
  supabase: ServerSupabaseClient,
  speciesIds: number[],
) =>
  loadChunkedReferenceRows<PokemonForm>(
    speciesIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_forms")
        .select("*")
        .in("species_id", ids)
        .order("species_id", { ascending: true })
        .order("form_order", { ascending: true })
        .range(from, to),
    "Unable to load Pokédex Pokémon forms.",
  );

const readPokemonAttributes = async (
  supabase: ServerSupabaseClient,
  formIds: number[],
) =>
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
    "Unable to load Pokédex Pokémon attributes.",
  );

export const readMainlinePlayPokedexProgress = async (
  supabase: ServerSupabaseClient,
  {
    gameName,
    gameSlug,
    generationId,
    playId,
  }: {
    gameName: string;
    gameSlug: string;
    generationId: number;
    playId: string;
  },
): Promise<MainlinePlayProgressPokedexData> => {
  const detailRows = await readPokedexDetailRows(supabase, playId);
  const pokedexIds = [
    ...new Set(
      detailRows.flatMap((row) => (row.pokedex_id ? [row.pokedex_id] : [])),
    ),
  ];
  const speciesIds = [
    ...new Set(
      detailRows.flatMap((row) => (row.species_id ? [row.species_id] : [])),
    ),
  ];

  const [forms, generationsResult, pokedexesResult, typesResult] =
    await Promise.all([
      readPokemonForms(supabase, speciesIds),
      supabase
        .schema("reference")
        .from("generations")
        .select("*")
        .order("sort_order", { ascending: true }),
      pokedexIds.length
        ? supabase
            .schema("reference")
            .from("pokedex")
            .select("*")
            .in("id", pokedexIds)
            .order("sort_order", { ascending: true })
        : Promise.resolve({ data: [] as Pokedex[], error: null }),
      supabase
        .schema("reference")
        .from("types")
        .select("*")
        .order("sort_order", { ascending: true }),
    ]);

  if (generationsResult.error || pokedexesResult.error || typesResult.error) {
    throw new Error("Unable to load Mainline Pokédex reference data.");
  }

  const attributes = await readPokemonAttributes(
    supabase,
    forms.map((form) => form.id),
  );

  return buildMainlinePlayPokedexData({
    gameName,
    gameSlug,
    generationId,
    rows: {
      attributes,
      detailRows,
      forms,
      generations: (generationsResult.data ?? []) as Generation[],
      pokedexes: (pokedexesResult.data ?? []) as Pokedex[],
      types: (typesResult.data ?? []) as Type[],
    },
  });
};
