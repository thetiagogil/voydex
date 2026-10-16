import { describe, expect, it } from "vitest";

import { getGameCoverShape } from "./game-cover-shapes";

describe("getGameCoverShape", () => {
  it("follows the box of the game's first platform", () => {
    expect(getGameCoverShape("game-boy")).toBe("square");
    expect(getGameCoverShape("game-boy-advance")).toBe("square");
    expect(getGameCoverShape("nintendo-ds")).toBe("landscape");
    expect(getGameCoverShape("nintendo-3ds")).toBe("landscape");
    expect(getGameCoverShape("nintendo-switch")).toBe("portrait");
  });

  it("takes today's tall case for a platform it doesn't know", () => {
    expect(getGameCoverShape(undefined)).toBe("portrait");
    expect(getGameCoverShape("virtual-boy")).toBe("portrait");
  });
});
