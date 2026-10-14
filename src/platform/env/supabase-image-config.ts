type SupabaseImagePattern = {
  hostname: string;
  pathname: string;
  port?: string;
  protocol: "http" | "https";
};

type SupabaseImageConfig = {
  allowLocalIp: boolean;
  remotePatterns: SupabaseImagePattern[];
};

const LOOPBACK_HOSTS = new Set(["127.0.0.1", "localhost", "[::1]"]);

// Next only loads Storage images from hosts it is told about. The local stack
// serves them over plain http from a loopback address, which Next blocks unless
// local IPs are allowed, so that is switched on only when Supabase is local.
export const getSupabaseImageConfig = (
  supabaseUrl: string | undefined,
): SupabaseImageConfig => {
  if (!supabaseUrl) {
    return { allowLocalIp: false, remotePatterns: [] };
  }

  let url: URL;
  try {
    url = new URL(supabaseUrl);
  } catch {
    return { allowLocalIp: false, remotePatterns: [] };
  }

  const protocol = url.protocol === "http:" ? "http" : "https";

  return {
    allowLocalIp: LOOPBACK_HOSTS.has(url.hostname),
    remotePatterns: [
      {
        protocol,
        hostname: url.hostname,
        ...(url.port ? { port: url.port } : {}),
        pathname: "/storage/v1/object/public/**",
      },
    ],
  };
};
