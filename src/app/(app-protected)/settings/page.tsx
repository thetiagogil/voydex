import { signOut } from "@/features/app-shell/server/sign-out-action";
import { SettingsPage as SettingsPageView } from "@/features/settings/components/settings-page";
import { getUserEmailClaim } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export default async function SettingsPage() {
  const supabase = await createServerSupabaseClient();
  const userEmail = await getUserEmailClaim(supabase);

  return <SettingsPageView signOutAction={signOut} userEmail={userEmail} />;
}
