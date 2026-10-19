import { describe, expect, it } from "vitest";

import { getAssetsImageConfig } from "./assets-image-config";

describe("getAssetsImageConfig", () => {
  it("allows game covers from the hosted assets site over https", () => {
    expect(getAssetsImageConfig("https://voydex-assets.vercel.app")).toEqual({
      allowLocalIp: false,
      remotePatterns: [
        {
          protocol: "https",
          hostname: "voydex-assets.vercel.app",
          pathname: "/games/covers/**",
        },
      ],
    });
  });

  it("allows game covers from a local copy over http on its port", () => {
    expect(getAssetsImageConfig("http://127.0.0.1:4000/")).toEqual({
      allowLocalIp: true,
      remotePatterns: [
        {
          protocol: "http",
          hostname: "127.0.0.1",
          port: "4000",
          pathname: "/games/covers/**",
        },
      ],
    });
  });

  it("adds nothing when the URL is missing or invalid", () => {
    expect(getAssetsImageConfig(undefined)).toEqual({
      allowLocalIp: false,
      remotePatterns: [],
    });
    expect(getAssetsImageConfig("not a url")).toEqual({
      allowLocalIp: false,
      remotePatterns: [],
    });
  });
});
