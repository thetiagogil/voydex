import { createClient } from "@/lib/supabase/server";
import { redirect } from "next/navigation";
import { type ReactNode } from "react";

export default async function ProtectedLayout({
  children,
}: {
  children: ReactNode;
}) {
  const supabase = await createClient();
  const { data: claims, error } = await supabase.auth.getClaims();

  if (!claims || error) {
    redirect("/");
  }

  return (
    <>
      <div>{children}</div>
    </>
  );
}
