"use server";

import { createClient } from "@/lib/supabase/server";

export const getMoves = async (page?: number, limit?: number) => {
  const supabase = await createClient();

  if (page !== undefined && limit !== undefined) {
    // Paginated query
    const from = page * limit;
    const to = from + limit - 1;

    const { data, error, count } = await supabase
      .schema("reference")
      .from("moves")
      .select("*", { count: "exact" })
      .order("name")
      .range(from, to);

    return {
      data,
      error,
      hasMore: count ? to < count - 1 : false,
      total: count || 0,
    };
  } else {
    // Fetch all data
    const { data, error } = await supabase
      .schema("reference")
      .from("moves")
      .select("*")
      .order("name");

    return { data, error };
  }
};
