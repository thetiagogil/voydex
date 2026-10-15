const localHostnames = new Set(["127.0.0.1", "localhost", "[::1]"]);

/* True for a Supabase address on this machine, such as the local stack's API. */
export const isLocalSupabaseUrl = (url: string | undefined) => {
  if (!url) {
    return false;
  }

  try {
    return localHostnames.has(new URL(url).hostname);
  } catch {
    return false;
  }
};

/*
 * Development helpers (such as Log in's test account picker) show only while
 * `npm run dev` talks to the local Supabase stack: never in a production
 * build, and never against the hosted project.
 */
export const isLocalDevelopment = ({
  nodeEnv = process.env.NODE_ENV,
  supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL,
}: {
  nodeEnv?: string;
  supabaseUrl?: string;
} = {}) => nodeEnv === "development" && isLocalSupabaseUrl(supabaseUrl);
