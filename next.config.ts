import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* Keep `next dev` from writing its own block into CLAUDE.md. */
  agentRules: false,
  allowedDevOrigins: ["127.0.0.1"],
  experimental: {
    /*
     * Pages read their data on the device, so what the server sends for a
     * page never changes while you use the app: keep each page opened or
     * prefetched for an hour, and going back to it needs no server.
     */
    staleTimes: { dynamic: 3600, static: 3600 },
  },
};

export default nextConfig;
