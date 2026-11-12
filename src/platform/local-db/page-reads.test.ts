import { describe, expect, it, vi } from "vitest";

import {
  forgetFailedPageReads,
  holdPageRead,
  startPageRead,
} from "@/platform/local-db/page-reads";

const settle = () => new Promise((resolve) => setTimeout(resolve, 0));

describe("page reads", () => {
  it("shares one read between the renders of a page", () => {
    const client = {};
    const read = vi.fn(async () => "data");

    const first = startPageRead(client, "home", 0, read);
    const again = startPageRead(client, "home", 0, read);

    expect(again).toBe(first);
    expect(read).toHaveBeenCalledOnce();
  });

  it("reads again after a save, for another key and for another database", () => {
    const client = {};
    const read = vi.fn(async () => "data");

    startPageRead(client, "home", 0, read);
    startPageRead(client, "home", 1, read);
    startPageRead(client, "plays", 1, read);
    startPageRead({}, "plays", 1, read);

    expect(read).toHaveBeenCalledTimes(4);
  });

  it("reads again once no page on screen holds the read", () => {
    const client = {};
    const read = vi.fn(async () => "data");
    const promise = startPageRead(client, "home", 0, read);
    const releaseLayout = holdPageRead(client, "home", 0, promise);
    const releasePage = holdPageRead(client, "home", 0, promise);

    releaseLayout();
    expect(startPageRead(client, "home", 0, read)).toBe(promise);

    releasePage();
    expect(startPageRead(client, "home", 0, read)).not.toBe(promise);
    expect(read).toHaveBeenCalledTimes(2);
  });

  it("lets an overtaken read go, but keeps the one on screen", () => {
    const client = {};
    const read = vi.fn(async () => "data");
    const shown = startPageRead(client, "pokedex", 0, read);

    holdPageRead(client, "pokedex", 0, shown);
    /* A save, then another before the first one's read showed. */
    const overtaken = startPageRead(client, "pokedex", 1, read);

    startPageRead(client, "pokedex", 2, read);

    expect(startPageRead(client, "pokedex", 0, read)).toBe(shown);
    expect(startPageRead(client, "pokedex", 1, read)).not.toBe(overtaken);
  });

  it("keeps a read a strict-mode remount let go", () => {
    const client = {};
    const read = vi.fn(async () => "data");
    const promise = startPageRead(client, "home", 0, read);

    /* Strict mode runs the effect, its cleanup, then the effect again. */
    holdPageRead(client, "home", 0, promise)();
    holdPageRead(client, "home", 0, promise);

    expect(startPageRead(client, "home", 0, read)).toBe(promise);
    expect(read).toHaveBeenCalledOnce();
  });

  it("keeps a failed read until the error page lets it go", async () => {
    const client = {};
    const read = vi.fn(async (): Promise<string> => {
      throw new Error("The device database is closed.");
    });
    const failed = startPageRead(client, "home", 0, read);

    await expect(failed).rejects.toThrow("closed");
    await settle();

    /* React draws a failing page twice before it shows the error page. */
    expect(startPageRead(client, "home", 0, read)).toBe(failed);

    forgetFailedPageReads();

    const retried = startPageRead(client, "home", 0, read);

    expect(retried).not.toBe(failed);
    await expect(retried).rejects.toThrow("closed");
  });

  it("fails a read that throws before it starts the same way", async () => {
    const read = (): Promise<string> => {
      throw new Error("No such Play.");
    };

    await expect(startPageRead({}, "play", 0, read)).rejects.toThrow(
      "No such Play.",
    );
  });
});
