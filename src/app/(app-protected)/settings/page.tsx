import { SettingsPage as SettingsPageView } from "@/features/settings/components/settings-page";
import { getOptionalUserEmail } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";

export default async function SettingsPage() {
  const supabase = await createServerSupabaseClient();
  const userEmail = (await getOptionalUserEmail(supabase)) ?? "Account";

  return <SettingsPageView userEmail={userEmail} />;
}
