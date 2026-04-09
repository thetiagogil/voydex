/**
 * Environment loader — reads .env.local or .env, validates required vars.
 */

import dotenv from "dotenv";
import fs from "fs";
import path from "path";

// Auto-load on import
(() => {
  const envLocal = path.resolve(process.cwd(), ".env.local");
  const envDefault = path.resolve(process.cwd(), ".env");

  if (fs.existsSync(envLocal)) {
    dotenv.config({ path: envLocal });
  } else if (fs.existsSync(envDefault)) {
    dotenv.config({ path: envDefault });
  }
})();

/**
 * Load and validate required environment variables.
 * @returns {{ SUPABASE_DB_URL: string, SUPABASE_DB_PASSWORD?: string, SUPABASE_SERVICE_ROLE_KEY?: string }}
 */
export function loadEnvironment() {
  const env = {
    SUPABASE_DB_URL: process.env.SUPABASE_DB_URL,
    SUPABASE_DB_PASSWORD: process.env.SUPABASE_DB_PASSWORD,
    SUPABASE_SERVICE_ROLE_KEY: process.env.SUPABASE_SERVICE_ROLE_KEY,
  };

  if (!env.SUPABASE_DB_URL) {
    throw new Error(
      "Missing required environment variable: SUPABASE_DB_URL\n" +
        "Set it in .env.local or .env",
    );
  }

  return env;
}

/**
 * Check if environment is properly configured (non-throwing).
 */
export function validateEnvironment() {
  try {
    loadEnvironment();
    return { valid: true, error: null };
  } catch (err) {
    return { valid: false, error: err.message };
  }
}
