"use server";

import { createClient } from "@/lib/supabase/server";
import { type Auth } from "@/types/api";

export async function getClaims() {
  const supabase = await createClient();
  const { data, error } = await supabase.auth.getClaims();
  return { data, error };
}

export async function logIn(auth: Auth) {
  const supabase = await createClient();
  const { data, error } = await supabase.auth.signInWithPassword(auth);
  return { data, error };
}

export async function signUp(auth: Auth) {
  const supabase = await createClient();
  const { data, error } = await supabase.auth.signUp(auth);
  return { data, error };
}

export async function signOut() {
  const supabase = await createClient();
  const { error } = await supabase.auth.signOut();
  return { error };
}
