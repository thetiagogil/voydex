import { clsx, type ClassValue } from "clsx";
import { twMerge } from "tailwind-merge";
import { ENV_VARS } from "./constants/env";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export const hasEnvVars = ENV_VARS.SUPABASE_URL! && ENV_VARS.SUPABASE_KEY!;
