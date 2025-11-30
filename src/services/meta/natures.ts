"use server";

import { createClient } from "@/lib/supabase/server";

export const getNatures = async () => {
  const supabase = await createClient();
  const { data, error } = await supabase
    .schema("meta")
    .from("natures")
    .select("*")
    .order("name");
  return { data, error };
};
