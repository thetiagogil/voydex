import { getOptionalUserEmail } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";

export type HomePageData = {
  isAuthenticated: boolean;
};

export const getHomePageData = async (): Promise<HomePageData> => {
  const supabase = await createServerSupabaseClient();
  const userEmail = await getOptionalUserEmail(supabase);

  return {
    isAuthenticated: Boolean(userEmail),
  };
};
