"use server";

import { createClient } from "@/lib/supabase/server";

export const getAbilities = async () => {
  const supabase = await createClient();
  const { data, error } = await supabase
    .schema("meta")
    .from("abilities")
    .select("*");
  return { data, error };
};
