import { SettingsPage as SettingsPageView } from "@/features/settings/components/settings-page";
import { getOptionalUserEmail } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export default async function SettingsPage() {
  const supabase = await createServerSupabaseClient();
  const userEmail = (await getOptionalUserEmail(supabase)) ?? "Account";

  return <SettingsPageView userEmail={userEmail} />;
}
