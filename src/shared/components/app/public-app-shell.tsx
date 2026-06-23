import { AppShell } from "@/shared/components/app/app-shell";
import type { ModuleKey } from "@/config/modules";
import { getOptionalUserEmail } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";

type PublicAppShellProps = {
  activeModuleKey?: ModuleKey;
  children: React.ReactNode;
};

export async function PublicAppShell({
  activeModuleKey,
  children,
}: PublicAppShellProps) {
  const supabase = await createServerSupabaseClient();
  const userEmail = await getOptionalUserEmail(supabase);

  return (
    <AppShell activeModuleKey={activeModuleKey} userEmail={userEmail}>
      {children}
    </AppShell>
  );
}
