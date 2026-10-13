import { getOptionalUserEmail } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type SiteVisitor = {
  isAuthenticated: boolean;
};

/* Whether the visitor is signed in, so a front door offers Continue instead of Sign up. */
export const getSiteVisitor = async (): Promise<SiteVisitor> => {
  const supabase = await createServerSupabaseClient();
  const userEmail = await getOptionalUserEmail(supabase);

  return {
    isAuthenticated: Boolean(userEmail),
  };
};
