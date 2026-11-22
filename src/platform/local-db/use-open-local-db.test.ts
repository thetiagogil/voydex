import { describe, expect, it } from "vitest";

import { getStartScreenWaitMs, startScreenMinMs } from "./use-open-local-db";

describe("the start screen's least time", () => {
  it("stays the rest of its second on a device that opens quickly", () => {
    expect(getStartScreenWaitMs(0)).toBe(startScreenMinMs);
    expect(getStartScreenWaitMs(300)).toBe(startScreenMinMs - 300);
  });

  it("adds nothing once it has shown long enough", () => {
    expect(getStartScreenWaitMs(startScreenMinMs)).toBe(0);
    expect(getStartScreenWaitMs(5000)).toBe(0);
  });
});
