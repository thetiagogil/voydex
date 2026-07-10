import { getOptionalUserEmail } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

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
