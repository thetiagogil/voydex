import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { getDefaultFormsBySpeciesId } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-attribute-selectors";
import type { PokemonMenuSpeciesRow } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-row-builders";
import { loadChunkedReferenceRows } from "@/modules/reference/reference-rows";
import type { PokemonAttributes, PokemonForm } from "@/modules/reference/types";

export type PokemonMenuPageRows = {
  attributes: PokemonAttributes[];
  defaultForms: PokemonForm[];
};

export const loadPokemonMenuPageRows = async ({
  speciesRows,
  supabase,
}: {
  speciesRows: PokemonMenuSpeciesRow[];
  supabase: ServerSupabaseClient;
}): Promise<PokemonMenuPageRows> => {
  const speciesIds = speciesRows.map((row) => row.species.id);

  if (!speciesIds.length) {
    return {
      attributes: [],
      defaultForms: [],
    };
  }

  const defaultForms = await loadChunkedReferenceRows<PokemonForm>(
    speciesIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_forms")
        .select("*")
        .in("species_id", ids)
        .eq("is_default", true)
        .order("species_id", { ascending: true })
        .order("form_order", { ascending: true })
        .range(from, to),
    "Unable to load game Pokemon form data.",
  );
  const defaultFormIds = [
    ...getDefaultFormsBySpeciesId(defaultForms).values(),
  ].map((form) => form.id);
  const attributes = defaultFormIds.length
    ? await loadChunkedReferenceRows<PokemonAttributes>(
        defaultFormIds,
        (ids, from, to) =>
          supabase
            .schema("reference")
            .from("pokemon_attributes")
            .select("*")
            .in("form_id", ids)
            .order("species_id", { ascending: true })
            .order("generation_start_id", { ascending: false })
            .range(from, to),
        "Unable to load game Pokemon attribute data.",
      )
    : [];

  return {
    attributes,
    defaultForms,
  };
};
