"use server";

import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export const signOut = async () => {
  const supabase = await createServerSupabaseClient();
  await supabase.auth.signOut();
  redirect(appRoutes.login);
};
