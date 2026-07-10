import { redirect } from "next/navigation";
import { AppShell } from "@/features/app-shell/components/app-shell";
import { getActiveModuleKeyFromCookies } from "@/features/app-shell/server/active-module";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export default async function ProtectedLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
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
}
