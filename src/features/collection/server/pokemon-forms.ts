"use server";

import { createClient } from "@/lib/supabase/server";

interface PokemonFormRow {
  id: number;
  slug: string;
  name: string;
  pokemondb_sprite_slug: string | null;
  species_id: number;
  is_default: boolean;
}

export const getAllPokemonForms = async () => {
  const supabase = await createClient();
  const batchSize = 1000;
  let from = 0;
  let allData: PokemonFormRow[] = [];

  while (true) {
    const { data, error } = await supabase
      .schema("reference")
      .from("pokemon_forms")
      .select("id, slug, name, pokemondb_sprite_slug, species_id, is_default")
      .order("species_id")
      .order("is_default", { ascending: false })
      .range(from, from + batchSize - 1);

    if (error) return { data: null, error };
    if (!data || data.length === 0) break;

    allData = allData.concat(data as PokemonFormRow[]);
    if (data.length < batchSize) break;
    from += batchSize;
  }

  const transformed = allData.map((form) => ({
    id: form.id,
    slug: form.slug,
    name: form.name,
    pokemonDbSpriteSlug: form.pokemondb_sprite_slug,
    speciesId: form.species_id,
    isDefault: form.is_default,
  }));

  return { data: transformed, error: null };
};
