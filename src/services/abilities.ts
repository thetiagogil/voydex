"use server";

import { createClient } from "@/lib/supabase/server";

export async function getAbilities() {
  const supabase = await createClient();
  const { data, error } = await supabase
    .schema("dex")
    .from("abilities")
    .select("*");
  return { data, error };
}
