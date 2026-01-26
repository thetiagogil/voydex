import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "raw.githubusercontent.com",
        pathname: "/PokeAPI/sprites/**",
      },
      {
        protocol: "https",
        hostname: "ojvooiqvknhnqnsgjobd.supabase.co",
        pathname: "/storage/v1/object/public/games/**",
      },
    ],
  },
};

export default nextConfig;
