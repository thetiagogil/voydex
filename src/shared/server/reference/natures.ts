"use server";

import { createClient } from "@/lib/supabase/server";

export const getNaturesWithStats = async () => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("reference")
    .from("natures")
    .select("id, slug, name, increased_stat, decreased_stat")
    .order("name");

  if (error) return { data: null, error };

  const result = (data || []).map((nature) => ({
    id: nature.id,
    slug: nature.slug,
    name: nature.name,
    increasedStat: nature.increased_stat,
    decreasedStat: nature.decreased_stat,
  }));

  return { data: result, error: null };
};
