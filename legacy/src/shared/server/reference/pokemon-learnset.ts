"use server";

import { createClient } from "@/lib/supabase/server";

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

  return { data: result, error: null };
};
