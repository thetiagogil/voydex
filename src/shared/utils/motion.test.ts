import { afterEach, describe, expect, it, vi } from "vitest";

import { getScrollBehavior, isMotionReduced } from "./motion";

const stubPage = ({
  deviceReduces,
  motion,
}: {
  deviceReduces: boolean;
  motion?: "full" | "reduced";
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

  it("follows the device when the setting is left on Follow device", () => {
    stubPage({ deviceReduces: true });
    expect(isMotionReduced()).toBe(true);
    expect(getScrollBehavior()).toBe("auto");

    stubPage({ deviceReduces: false });
    expect(isMotionReduced()).toBe(false);
    expect(getScrollBehavior()).toBe("smooth");
  });

  it("lets Reduced win over a device that allows motion", () => {
    stubPage({ deviceReduces: false, motion: "reduced" });

    expect(isMotionReduced()).toBe(true);
    expect(getScrollBehavior()).toBe("auto");
  });

  it("lets Full win over a device that asks for reduced motion", () => {
    stubPage({ deviceReduces: true, motion: "full" });

    expect(isMotionReduced()).toBe(false);
    expect(getScrollBehavior()).toBe("smooth");
  });
});
