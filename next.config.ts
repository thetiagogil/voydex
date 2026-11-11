import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* Keep `next dev` from writing its own block into CLAUDE.md. */
  agentRules: false,
  allowedDevOrigins: ["127.0.0.1"],
  /*
   * The app is plain files (`out/`): every page is drawn ahead of time and
   * reads your data and its address in the browser, so no server runs.
   */
  output: "export",
  /* Images come from the voydex-assets site as they are. */
  images: { unoptimized: true },
  experimental: {
    /*
     * Pages read their data on the device, so what a page's file holds
     * never changes while you use the app: keep each page opened or
     * prefetched for an hour, and going back to it needs no download.
     */
    staleTimes: { dynamic: 3600, static: 3600 },
  },
};

export default nextConfig;
