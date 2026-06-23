import { redirect } from "next/navigation";
import { AppShell } from "@/shared/components/app/app-shell";
import { getActiveModuleKeyFromCookies } from "@/lib/modules/active-module";
import { getClaimsWithTimeout } from "@/lib/supabase/auth";
import { createServerSupabaseClient } from "@/lib/supabase/server";
const ProtectedLayout = async ({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  if (!claimsResult || claimsResult.error || !claimsResult.data?.claims?.sub) {
    redirect("/login");
  }
  const email =
    typeof claimsResult.data.claims.email === "string"
      ? claimsResult.data.claims.email
      : "Account";
  const activeModuleKey = await getActiveModuleKeyFromCookies();
  return (
    <AppShell activeModuleKey={activeModuleKey} userEmail={email}>
      {children}
    </AppShell>
  );
};
export default ProtectedLayout;
