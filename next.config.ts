import type { NextConfig } from "next";

import { getAssetsImageConfig } from "./src/platform/env/assets-image-config";

const assetsImages = getAssetsImageConfig(process.env.NEXT_PUBLIC_ASSETS_URL);

const nextConfig: NextConfig = {
  allowedDevOrigins: ["127.0.0.1"],
  images: {
    dangerouslyAllowLocalIP: assetsImages.allowLocalIp,
    remotePatterns: assetsImages.remotePatterns,
  },
};

export default nextConfig;
