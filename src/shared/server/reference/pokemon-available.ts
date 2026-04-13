"use server";

import { createClient } from "@/lib/supabase/server";

export const getAvailablePokemon = async (
  versionGroupId: number,
  gameId?: number,
) => {
  const supabase = await createClient();

  let query = supabase
    .schema("reference")
    .from("pokemon_availability")
    .select(
      `
      species_id,
      form_id,
      availability_context,
      pokemon_species!inner(id, slug, name, national_number),
      pokemon_forms!inner(id, slug, name, pokemondb_sprite_slug, is_default)
    `,
    )
    .eq("version_group_id", versionGroupId);

  if (gameId) {
    query = query.or(`game_id.is.null,game_id.eq.${gameId}`);
  }

  const { data, error } = await query.order("species_id");

  if (error) {
    const message =
      error?.message ||
      (typeof error === "object" ? JSON.stringify(error) : String(error));
    return { data: null, error: new Error(message) };
  }

  const seen = new Set<string>();
  const deduplicated = (data || []).filter((entry: any) => {
    const key = `${entry.species_id}-${entry.form_id}`;
    if (seen.has(key)) return false;
    seen.add(key);
    return true;
  });

  const result = deduplicated.map((entry: any) => ({
    speciesId: entry.species_id,
    formId: entry.form_id,
    context: entry.availability_context,
    species: {
      id: entry.pokemon_species.id,
      slug: entry.pokemon_species.slug,
      name: entry.pokemon_species.name,
      nationalNumber: entry.pokemon_species.national_number,
    },
    form: {
      id: entry.pokemon_forms.id,
      slug: entry.pokemon_forms.slug,
      name: entry.pokemon_forms.name,
      pokemonDbSpriteSlug: entry.pokemon_forms.pokemondb_sprite_slug,
      isDefault: entry.pokemon_forms.is_default,
    },
  }));

  return { data: result, error: null };
};
