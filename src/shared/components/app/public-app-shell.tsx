import { AppShell } from "@/shared/components/app/app-shell";
import { getOptionalUserEmail } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";

type PublicAppShellProps = {
  children: React.ReactNode;
};

export async function PublicAppShell({ children }: PublicAppShellProps) {
  const supabase = await createServerSupabaseClient();
  const userEmail = await getOptionalUserEmail(supabase);

  return <AppShell userEmail={userEmail}>{children}</AppShell>;
}
