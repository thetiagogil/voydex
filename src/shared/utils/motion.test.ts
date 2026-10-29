import { afterEach, describe, expect, it, vi } from "vitest";

import { getScrollBehavior, isMotionReduced } from "./motion";

const stubPage = ({
  deviceReduces,
  motion,
}: {
  deviceReduces: boolean;
  motion?: "none";
}) => {
  vi.stubGlobal("document", { documentElement: { dataset: { motion } } });
  vi.stubGlobal("window", {
    matchMedia: vi.fn().mockReturnValue({ matches: deviceReduces }),
  });
};

describe("isMotionReduced", () => {
  afterEach(() => {
    vi.unstubAllGlobals();
  });

  it("stays smooth when there is no page to ask", () => {
    expect(isMotionReduced()).toBe(false);
  });

  it("follows the device on Full, which leaves the root unmarked", () => {
    stubPage({ deviceReduces: true });
    expect(isMotionReduced()).toBe(true);
    expect(getScrollBehavior()).toBe("auto");

    stubPage({ deviceReduces: false });
    expect(isMotionReduced()).toBe(false);
    expect(getScrollBehavior()).toBe("smooth");
  });

  it("keeps still on None, even when the device allows motion", () => {
    stubPage({ deviceReduces: false, motion: "none" });

    expect(isMotionReduced()).toBe(true);
    expect(getScrollBehavior()).toBe("auto");
  });
});
