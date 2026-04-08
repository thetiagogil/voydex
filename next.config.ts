import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "img.pokemondb.net",
        pathname: "/sprites/home/**",
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
