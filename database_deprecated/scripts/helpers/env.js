/**
 * Environment Configuration Loader
 *
 * Loads environment variables from .env.local or .env
 * Initialized once at module load to avoid duplicate logs
 */

import dotenv from "dotenv";
import fs from "fs";
import path from "path";

// Auto-load environment on module initialization
(() => {
  try {
    const envPath = path.resolve(process.cwd(), ".env.local");
    if (fs.existsSync(envPath)) {
      dotenv.config({ path: envPath });
      return;
    }
    const fallbackPath = path.resolve(process.cwd(), ".env");
    if (fs.existsSync(fallbackPath)) {
      dotenv.config({ path: fallbackPath });
    }
  } catch (err) {
    // Silently fail - environment validation happens in loadEnvironment()
  }
})();

/**
 * Load and validate environment variables
 * @throws {Error} If required variables are missing
 */
export function loadEnvironment() {
  const env = {
    SUPABASE_DB_URL: process.env.SUPABASE_DB_URL,
    SUPABASE_DB_PASSWORD: process.env.SUPABASE_DB_PASSWORD,
    SUPABASE_SERVICE_ROLE_KEY: process.env.SUPABASE_SERVICE_ROLE_KEY,
  };

  // Validate required variables
  if (!env.SUPABASE_DB_URL) {
    throw new Error(
      "Missing required environment variable: SUPABASE_DB_URL\n" +
        "Please set it in .env.local or .env",
    );
  }

  return env;
}

/**
 * Check if environment is properly configured
 */
export function validateEnvironment() {
  try {
    loadEnvironment();
    return { valid: true, error: null };
  } catch (err) {
    return { valid: false, error: err.message };
  }
}
