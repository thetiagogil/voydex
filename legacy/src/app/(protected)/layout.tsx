import { createClient } from "@/lib/supabase/server";
import { redirect } from "next/navigation";
import { type ReactNode } from "react";

export default async function ProtectedLayout({
  children,
}: {
  children: ReactNode;
}) {
  const supabase = await createClient();

  try {
    const { data: isAuth, error } = await supabase.auth.getClaims();
    if (!isAuth || error) redirect("/");
  } catch {
    redirect("/");
  }

  return <>{children}</>;
}
