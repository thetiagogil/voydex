import { afterEach, describe, expect, it, vi } from "vitest";

import {
  isNearPageEnd,
  pageEndAttribute,
  pageOverscrollScript,
} from "./page-overscroll";

describe("isNearPageEnd", () => {
  it("keeps the top colour through the top half of a long page", () => {
    expect(
      isNearPageEnd({ scrollHeight: 3000, scrollY: 0, viewportHeight: 800 }),
    ).toBe(false);
    expect(
      isNearPageEnd({ scrollHeight: 3000, scrollY: 1100, viewportHeight: 800 }),
    ).toBe(false);
  });

  it("turns to the bottom colour past the middle", () => {
    expect(
      isNearPageEnd({ scrollHeight: 3000, scrollY: 1101, viewportHeight: 800 }),
    ).toBe(true);
    expect(
      isNearPageEnd({ scrollHeight: 3000, scrollY: 2200, viewportHeight: 800 }),
    ).toBe(true);
  });

  it("follows Safari's pull on a page too short to scroll", () => {
    const short = { scrollHeight: 600, viewportHeight: 800 };

    expect(isNearPageEnd({ ...short, scrollY: -40 })).toBe(false);
    expect(isNearPageEnd({ ...short, scrollY: 40 })).toBe(true);
  });

  it("follows the wheel on a short page where the scroll can't move", () => {
    const short = { scrollHeight: 800, scrollY: 0, viewportHeight: 800 };

    expect(isNearPageEnd(short)).toBe(false);
    expect(isNearPageEnd({ ...short, pullY: 12 })).toBe(true);
    expect(isNearPageEnd({ ...short, wasNearEnd: true })).toBe(true);
    expect(isNearPageEnd({ ...short, pullY: -12, wasNearEnd: true })).toBe(
      false,
    );
  });

  it("ignores the wheel on a page that scrolls", () => {
    expect(
      isNearPageEnd({
        pullY: 40,
        scrollHeight: 3000,
        scrollY: 0,
        viewportHeight: 800,
      }),
    ).toBe(false);
  });
});

describe("pageOverscrollScript", () => {
  afterEach(() => {
    vi.unstubAllGlobals();
  });

  it("marks the root from the scroll, before paint and on every scroll", () => {
    const listeners = new Map<string, () => void>();
    const root = {
      hasAttribute: () => false,
      scrollHeight: 3000,
      toggleAttribute: vi.fn(),
    };
    const page = {
      addEventListener: (type: string, listener: () => void) =>
        listeners.set(type, listener),
      innerHeight: 800,
      scrollY: 0,
    };

    vi.stubGlobal("document", { documentElement: root });
    vi.stubGlobal("window", page);

    new Function(pageOverscrollScript)();

    expect(root.toggleAttribute).toHaveBeenLastCalledWith(
      pageEndAttribute,
      false,
    );

    page.scrollY = 2200;
    listeners.get("scroll")?.();

    expect(root.toggleAttribute).toHaveBeenLastCalledWith(
      pageEndAttribute,
      true,
    );
  });
});
