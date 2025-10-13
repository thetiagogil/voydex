import { createClient } from "@/lib/supabase/server";
import { redirect } from "next/navigation";
import { type ReactNode } from "react";

export default async function AuthLayout({
  children,
}: {
  children: ReactNode;
}) {
  const supabase = await createClient();
  const { data: isAuth, error } = await supabase.auth.getClaims();

  if (isAuth || error) {
    redirect("/gens");
  }

  return (
    <>
      <div>{children}</div>
    </>
  );
}
