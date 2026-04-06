"use server";

import { createClient } from "@/lib/supabase/server";

// =============================================================================
// GET POKEMON AVAILABLE IN A GAME (game-scoped via pokemon_availability)
// =============================================================================

export const getAvailablePokemon = async (
  versionGroupId: number,
  gameId?: number,
) => {
  const supabase = await createClient();

  // Get available species/forms for this version group
  // game_id IS NULL = available in all games of the VG
  // game_id = gameId = version exclusive to this game
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
    // Get VG-wide + game-specific entries
    query = query.or(`game_id.is.null,game_id.eq.${gameId}`);
  }

  const { data, error } = await query.order("species_id");

  if (error) {
    const message =
      error?.message ||
      (typeof error === "object" ? JSON.stringify(error) : String(error));
    return { data: null, error: new Error(message) };
  }

  // Deduplicate by species_id+form_id (a form may appear in both VG-wide and game-specific)
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

// =============================================================================
// GET POKEMON FORM ABILITIES (gen-aware from pokemon_attributes timeline)
// =============================================================================

export const getPokemonAbilities = async (
  speciesId: number,
  formId: number,
  generationId: number,
) => {
  const supabase = await createClient();

  // Get the latest pokemon_attributes for this species/form at or before this generation
  const { data: attrs, error } = await supabase
    .schema("reference")
    .from("pokemon_attributes")
    .select(
      `
      ability1_id,
      ability2_id,
      hidden_ability_id,
      ability1:abilities!pokemon_attributes_ability1_id_fkey(id, slug, name),
      ability2:abilities!pokemon_attributes_ability2_id_fkey(id, slug, name),
      hidden_ability:abilities!pokemon_attributes_hidden_ability_id_fkey(id, slug, name)
    `,
    )
    .eq("species_id", speciesId)
    .eq("form_id", formId)
    .lte("generation_start_id", generationId)
    .order("generation_start_id", { ascending: false })
    .limit(1)
    .maybeSingle();

  if (error) return { data: null, error };
  if (!attrs) return { data: [], error: null };

  const abilities: Array<{
    id: number;
    slug: string;
    name: string;
    slot: string;
  }> = [];

  if (attrs.ability1) {
    abilities.push({
      ...(attrs.ability1 as any),
      slot: "primary",
    });
  }
  if (attrs.ability2) {
    abilities.push({
      ...(attrs.ability2 as any),
      slot: "secondary",
    });
  }
  if (attrs.hidden_ability) {
    abilities.push({
      ...(attrs.hidden_ability as any),
      slot: "hidden",
    });
  }

  return { data: abilities, error: null };
};

// =============================================================================
// GET POKEMON LEARNSET (game-scoped moves for a specific species/form)
// =============================================================================

export const getPokemonLearnset = async (
  speciesId: number,
  formId: number,
  versionGroupId: number,
) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("learnset_detail")
    .select("*")
    .eq("species_id", speciesId)
    .eq("form_id", formId)
    .eq("version_group_id", versionGroupId)
    .order("learn_method_slug")
    .order("level_learned_at", { ascending: true, nullsFirst: false });

  if (error) return { data: null, error };

  const result = (data || []).map((entry: any) => ({
    moveId: entry.move_id,
    moveName: entry.move_name,
    moveSlug: entry.move_slug,
    learnMethod: entry.learn_method_slug,
    learnMethodName: entry.learn_method_name,
    levelLearnedAt: entry.level_learned_at,
  }));

  // Deduplicate (a move learned by multiple methods should show once per method)
  return { data: result, error: null };
};

// =============================================================================
// GET NATURES WITH STAT INFO
// =============================================================================

export const getNaturesWithStats = async () => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("reference")
    .from("natures")
    .select("id, slug, name, increased_stat, decreased_stat")
    .order("name");

  if (error) return { data: null, error };

  const result = (data || []).map((nature: any) => ({
    id: nature.id,
    slug: nature.slug,
    name: nature.name,
    increasedStat: nature.increased_stat,
    decreasedStat: nature.decreased_stat,
  }));

  return { data: result, error: null };
};
