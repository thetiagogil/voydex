import { describe, expect, it } from "vitest";

import { getSupabaseImageConfig } from "./supabase-image-config";

describe("getSupabaseImageConfig", () => {
  it("allows Storage images from a hosted project over https", () => {
    expect(getSupabaseImageConfig("https://abcd.supabase.co")).toEqual({
      allowLocalIp: false,
      remotePatterns: [
        {
          protocol: "https",
          hostname: "abcd.supabase.co",
          pathname: "/storage/v1/object/public/**",
        },
      ],
    });
  });

  it("allows Storage images from the local stack over http on its port", () => {
    expect(getSupabaseImageConfig("http://127.0.0.1:54621")).toEqual({
      allowLocalIp: true,
      remotePatterns: [
        {
          protocol: "http",
          hostname: "127.0.0.1",
          port: "54621",
          pathname: "/storage/v1/object/public/**",
        },
      ],
    });
  });

  it("adds nothing when the URL is missing or invalid", () => {
    expect(getSupabaseImageConfig(undefined)).toEqual({
      allowLocalIp: false,
      remotePatterns: [],
    });
    expect(getSupabaseImageConfig("not a url")).toEqual({
      allowLocalIp: false,
      remotePatterns: [],
    });
  });
});
