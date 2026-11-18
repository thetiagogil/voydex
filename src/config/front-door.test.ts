import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";

import {
  frontDoorScript,
  leaveApp,
  readAppEntered,
  rememberAppEntered,
  shouldSkipFrontPage,
} from "@/config/front-door";

/* The browser's storage and address, stood in for by plain objects. */
const location = { hash: "", pathname: "/", replace: vi.fn() };

describe("front door", () => {
  beforeEach(() => {
    const store = new Map<string, string>();

    location.hash = "";
    location.pathname = "/";
    location.replace.mockClear();
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
    expect(shouldSkipFrontPage()).toBe(false);
  });

  it("skips the front page on a device that has opened the app", () => {
    rememberAppEntered();

    expect(readAppEntered()).toBe(true);
    expect(shouldSkipFrontPage()).toBe(true);
  });

  it("keeps the front page for a link to one of its parts", () => {
    rememberAppEntered();
    location.hash = "#how-it-works";

    expect(shouldSkipFrontPage()).toBe(false);
  });

  it("shows the front page after leaving the app, until you continue", () => {
    rememberAppEntered();
    leaveApp();

    /* Still a device that has opened the app: the front page says Continue. */
    expect(readAppEntered()).toBe(true);
    expect(shouldSkipFrontPage()).toBe(false);

    rememberAppEntered();
    expect(shouldSkipFrontPage()).toBe(true);
  });

  it("sends a returning device to the app from the inline script", () => {
    new Function(frontDoorScript)();
    expect(location.replace).not.toHaveBeenCalled();

    rememberAppEntered();
    leaveApp();
    new Function(frontDoorScript)();
    expect(location.replace).not.toHaveBeenCalled();

    rememberAppEntered();
    location.pathname = "/privacy";
    new Function(frontDoorScript)();
    expect(location.replace).not.toHaveBeenCalled();

    location.pathname = "/";
    new Function(frontDoorScript)();
    expect(location.replace).toHaveBeenCalledWith("/app");
  });
});
