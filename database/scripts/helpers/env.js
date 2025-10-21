import dotenv from "dotenv";
import fs from "fs";
import path from "path";

// Load dotenv once at module initialization so we don't print the injector
// message multiple times when loadEnvironment() is called repeatedly.
(() => {
  try {
    const envPath = path.resolve(process.cwd(), ".env.local");
    if (fs.existsSync(envPath)) {
      dotenv.config({ path: envPath });
      return;
    }
    const alt = path.resolve(process.cwd(), ".env");
    if (fs.existsSync(alt)) dotenv.config({ path: alt });
  } catch (e) {
    // ignore errors reading env files
  }
})();

export function loadEnvironment() {
  return {
    SUPABASE_DB_URL: process.env.SUPABASE_DB_URL,
    SUPABASE_DB_PASSWORD: process.env.SUPABASE_DB_PASSWORD,
    SUPABASE_SERVICE_ROLE_KEY: process.env.SUPABASE_SERVICE_ROLE_KEY,
  };
}
