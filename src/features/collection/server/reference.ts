"use server";

import { createClient } from "@/lib/supabase/server";

export const getTypes = async () => {
  const supabase = await createClient();
  const { data, error } = await supabase
    .schema("reference")
    .from("types")
    .select("id, slug, name")
    .order("name");

  return { data, error };
};

export const getGenerations = async () => {
  const supabase = await createClient();
  const { data, error } = await supabase
    .schema("reference")
    .from("generations")
    .select("id, slug, name")
    .order("id");

  return { data, error };
};
