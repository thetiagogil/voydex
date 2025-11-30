"use server";

import { createClient } from "@/lib/supabase/server";

const PAGE_SIZE = 50;

export const getAbilities = async (page = 0, limit = PAGE_SIZE) => {
  const supabase = await createClient();
  const from = page * limit;
  const to = from + limit - 1;

  const { data, error, count } = await supabase
    .schema("meta")
    .from("abilities")
    .select("*", { count: "exact" })
    .order("name")
    .range(from, to);

  return {
    data,
    error,
    hasMore: count ? to < count - 1 : false,
    total: count || 0,
  };
};
