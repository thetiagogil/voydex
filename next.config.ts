import type { NextConfig } from "next";

import { getSupabaseImageConfig } from "./src/platform/env/supabase-image-config";

const supabaseImages = getSupabaseImageConfig(
  process.env.NEXT_PUBLIC_SUPABASE_URL,
);

const nextConfig: NextConfig = {
  allowedDevOrigins: ["127.0.0.1"],
  images: {
    dangerouslyAllowLocalIP: supabaseImages.allowLocalIp,
    remotePatterns: [...supabaseImages.remotePatterns],
  },
};

export default nextConfig;
