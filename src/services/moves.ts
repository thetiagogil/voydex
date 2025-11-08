"use server";

import { createClient } from "@/lib/supabase/server";

export const getMoves = async () => {
  const supabase = await createClient();
  const { data, error } = await supabase
    .schema("dex")
    .from("moves")
    .select("*");
  return { data, error };
};
