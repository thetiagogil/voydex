"use server";

import { createClient } from "@/lib/supabase/server";

export const getPokemonAbilities = async (
  speciesId: number,
  formId: number,
  generationId: number,
) => {
  const supabase = await createClient();

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

  if (attrs.ability1)
    abilities.push({ ...(attrs.ability1 as any), slot: "primary" });
  if (attrs.ability2)
    abilities.push({ ...(attrs.ability2 as any), slot: "secondary" });
  if (attrs.hidden_ability)
    abilities.push({ ...(attrs.hidden_ability as any), slot: "hidden" });

  return { data: abilities, error: null };
};
