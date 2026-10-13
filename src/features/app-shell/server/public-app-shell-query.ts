import { getOptionalUserEmail } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type PublicAppShellData = {
  userEmail: string | null;
};

/* A public page shows the signed-in bar when someone is signed in. */
export const getPublicAppShellData = async (): Promise<PublicAppShellData> => {
  const supabase = await createServerSupabaseClient();

  return { userEmail: await getOptionalUserEmail(supabase) };
};
