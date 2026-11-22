import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";

import {
  frontDoorScript,
  leaveApp,
  readAppEntered,
  readHasPlays,
  readSignedIn,
  rememberAppEntered,
  rememberHasPlays,
  rememberSignedIn,
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
        removeItem: (key: string) => store.delete(key),
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

  it("leaves nothing behind on a device that never opened the app", () => {
    /* The V from a Codex page: the front page still says Start a Play. */
    leaveApp();

    expect(readAppEntered()).toBe(false);
    expect(shouldSkipFrontPage()).toBe(false);
  });

  it("says Start a Play until the device holds a Play, opened or not", () => {
    rememberAppEntered();
    expect(readHasPlays()).toBe(false);

    rememberHasPlays(true);
    expect(readHasPlays()).toBe(true);

    /* The last Play deleted: there is one to start again. */
    rememberHasPlays(false);
    expect(readHasPlays()).toBe(false);
  });

  it("keeps a logged-in browser logged in after it leaves the app", () => {
    expect(readSignedIn()).toBe(false);

    rememberAppEntered();
    rememberSignedIn(true);
    leaveApp();
    expect(readSignedIn()).toBe(true);

    rememberSignedIn(false);
    expect(readSignedIn()).toBe(false);
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
