"use server";

import { createClient } from "@/lib/supabase/server";

export const getTypes = async () => {
  const supabase = await createClient();
  const { data, error } = await supabase
    .schema("meta")
    .from("types")
    .select("id, slug, name")
    .order("name");

  return { data, error };
};
