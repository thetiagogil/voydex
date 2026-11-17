import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";

import { rememberActiveModule } from "@/config/active-module";
import {
  frontDoorScript,
  readAppEntered,
  readFrontDoorHref,
  rememberAppEntered,
} from "@/config/front-door";

/* The browser's storage and address, stood in for by plain objects. */
const location = { hash: "" };

describe("front door", () => {
  beforeEach(() => {
    const store = new Map<string, string>();

    location.hash = "";
    vi.stubGlobal("window", {
      localStorage: {
        getItem: (key: string) => store.get(key) ?? null,
        setItem: (key: string, value: string) => store.set(key, value),
      },
      location,
    });
  });

  afterEach(() => {
    vi.unstubAllGlobals();
  });

  it("shows the front page on a device that has never opened the app", () => {
    expect(readAppEntered()).toBe(false);
    expect(readFrontDoorHref()).toBeNull();
  });

  it("sends a device that has opened the app to Mainline", () => {
    rememberAppEntered();

    expect(readAppEntered()).toBe(true);
    expect(readFrontDoorHref()).toBe("/mainline");
  });

  it("goes back to the module the device was last in", () => {
    rememberAppEntered();
    rememberActiveModule("/codex/games");

    expect(readFrontDoorHref()).toBe("/codex/pokemon");
  });

  it("keeps the front page for a link to one of its parts", () => {
    rememberAppEntered();
    location.hash = "#how-it-works";

    expect(readFrontDoorHref()).toBeNull();
  });

  it("does not count a Codex visit as opening the app", () => {
    rememberActiveModule("/codex/pokemon");

    expect(readFrontDoorHref()).toBeNull();
  });

  it("carries everything the inline script needs", () => {
    expect(frontDoorScript).toContain("voydex-app-entered");
    expect(frontDoorScript).toContain("voydex-active-module");
    expect(frontDoorScript).toContain("/mainline");
  });
});
