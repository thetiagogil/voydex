import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* Keep `next dev` from writing its own block into CLAUDE.md. */
  agentRules: false,
  allowedDevOrigins: ["127.0.0.1"],
};

export default nextConfig;
