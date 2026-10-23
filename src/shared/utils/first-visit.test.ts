import { afterEach, describe, expect, it, vi } from "vitest";

import {
  firstVisitNames,
  firstVisitScript,
  firstVisitStyles,
  getFirstVisitKey,
} from "./first-visit";

/* The browser the inline script meets before first paint. */
const stubPage = (storage: Storage | (() => never)) => {
  const attributes = new Map<string, string>();

  vi.stubGlobal("document", {
    documentElement: {
      setAttribute: (name: string, value: string) =>
        attributes.set(name, value),
    },
  });
  vi.stubGlobal("window", {
    get sessionStorage() {
      return typeof storage === "function" ? storage() : storage;
    },
  });

  return attributes;
};

const storageWith = (entries: Record<string, string>) =>
  ({ getItem: (key: string) => entries[key] ?? null }) as Storage;

/* Runs the script exactly as the HTML carries it. */
const runScript = () => new Function(firstVisitScript)();

afterEach(() => {
  vi.unstubAllGlobals();
});

describe("firstVisitScript", () => {
  it("marks nothing in a fresh tab, so every reveal plays", () => {
    const attributes = stubPage(storageWith({}));

    runScript();

    expect(attributes.size).toBe(0);
  });

  it("marks only the reveals this tab has seen", () => {
    const attributes = stubPage(
      storageWith({ [getFirstVisitKey("stats-title")]: "1" }),
    );

    runScript();

    expect(attributes.get("data-first-visit-seen")).toBe("stats-title");
  });

  it("marks every reveal when storage is unavailable, as the hook does", () => {
    const attributes = stubPage(() => {
      throw new Error("Storage is blocked");
    });

    runScript();

    expect(attributes.get("data-first-visit-seen")).toBe(
      firstVisitNames.join(" "),
    );
  });
});

describe("firstVisitStyles", () => {
  it("keeps each seen reveal still, and only that reveal", () => {
    expect(firstVisitStyles).toContain(
      ':root[data-first-visit-seen~="meadow"] [data-first-visit="meadow"] *{animation:none}',
    );
    expect(firstVisitStyles).toContain(
      ':root[data-first-visit-seen~="stats-title"] [data-first-visit="stats-title"] *{animation:none}',
    );
  });
});
