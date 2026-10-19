type AssetsImagePattern = {
  hostname: string;
  pathname: string;
  port?: string;
  protocol: "http" | "https";
};

type AssetsImageConfig = {
  allowLocalIp: boolean;
  remotePatterns: AssetsImagePattern[];
};

const LOOPBACK_HOSTS = new Set(["127.0.0.1", "localhost", "[::1]"]);

// Next only resizes images from hosts it is told about. Game covers come from
// the voydex-assets site; Pokémon images there are served as they are, so only
// the covers' folder is allowed. A local copy of the site is served over plain
// http from a loopback address, which Next blocks unless local IPs are allowed.
export const getAssetsImageConfig = (
  assetsUrl: string | undefined,
): AssetsImageConfig => {
  if (!assetsUrl) {
    return { allowLocalIp: false, remotePatterns: [] };
  }

  let url: URL;
  try {
    url = new URL(assetsUrl);
  } catch {
    return { allowLocalIp: false, remotePatterns: [] };
  }

  const protocol = url.protocol === "http:" ? "http" : "https";
  const basePath = url.pathname.replace(/\/+$/, "");

  return {
    allowLocalIp: LOOPBACK_HOSTS.has(url.hostname),
    remotePatterns: [
      {
        protocol,
        hostname: url.hostname,
        ...(url.port ? { port: url.port } : {}),
        pathname: `${basePath}/games/covers/**`,
      },
    ],
  };
};
