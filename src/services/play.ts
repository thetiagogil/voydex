"use server";

import { createClient } from "@/lib/supabase/server";

export const getPlayById = async (id: string) => {
  const supabase = await createClient();
  const { data, error } = await supabase
    .schema("gameplay")
    .from("plays")
    .select("*")
    .eq("id", id)
    .single();
  return { data, error };
};
