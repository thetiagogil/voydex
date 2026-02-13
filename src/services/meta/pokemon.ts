"use server";

import { createClient } from "@/lib/supabase/server";

export const getPokemonSpecies = async (generationId?: number) => {
  const supabase = await createClient();
  let query = supabase
    .schema("meta")
    .from("pokemon_species")
    .select("id, slug, name, national_number, introduced_generation_id")
    .order("national_number");

  if (generationId) {
    query = query.lte("introduced_generation_id", generationId);
  }

  const { data, error } = await query;
  return { data, error };
};

export const getPokemonForms = async (speciesId: number) => {
  const supabase = await createClient();
  const { data, error } = await supabase
    .schema("meta")
    .from("pokemon_forms")
    .select("id, slug, name, sprite_url, species_id, is_default")
    .eq("species_id", speciesId)
    .order("is_default", { ascending: false });

  if (error) return { data: null, error };

  const transformed = data?.map((form) => ({
    id: form.id,
    slug: form.slug,
    name: form.name,
    spriteUrl: form.sprite_url,
    speciesId: form.species_id,
    isDefault: form.is_default,
  }));

  return { data: transformed, error: null };
};
