"use server";

import { createClient } from "@/lib/supabase/server";
import { type Auth } from "@/types/api";

export const getClaims = async () => {
  const supabase = await createClient();
  const { data, error } = await supabase.auth.getClaims();
  return { data, error };
};

export const logIn = async (auth: Auth) => {
  const supabase = await createClient();
  const { data, error } = await supabase.auth.signInWithPassword(auth);
  return { data, error };
};

export const signUp = async (auth: Auth) => {
  const supabase = await createClient();
  const { data, error } = await supabase.auth.signUp(auth);
  return { data, error };
};

export const signOut = async () => {
  const supabase = await createClient();
  const { error } = await supabase.auth.signOut();
  return { error };
};
