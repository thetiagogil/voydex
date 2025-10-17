"use server";

import { createClient } from "@/lib/supabase/server";

export async function getMoves() {
  const supabase = await createClient();
  const { data, error } = await supabase
    .schema("dex")
    .from("moves_latest")
    .select("*");
  return { data, error };
}
