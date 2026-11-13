import { beforeEach, describe, expect, it, vi } from "vitest";

import {
  currentPageReadRevision,
  forgetFailedPageReads,
  forgetKeptPageReads,
  holdPageRead,
  keptPageReadLimit,
  movePageReadRevision,
  preparePageRead,
  startPageRead,
  subscribeForgottenPageReads,
  subscribePageReadRevision,
} from "@/platform/local-db/page-reads";

const settle = () => new Promise((resolve) => setTimeout(resolve, 0));

describe("page reads", () => {
  /* Kept reads outlive a test; each test starts with none. */
  beforeEach(() => forgetKeptPageReads());

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

  it("keeps a read for the next visit until the device's data changes", () => {
    const client = {};
    const read = vi.fn(async () => "data");
    const revision = currentPageReadRevision();
    const promise = startPageRead(client, "plays", revision, read);
    const releaseLayout = holdPageRead(client, "plays", revision, promise);
    const releasePage = holdPageRead(client, "plays", revision, promise);

    releaseLayout();
    releasePage();

    /* Back on the page: the same read, shown at once. */
    expect(startPageRead(client, "plays", revision, read)).toBe(promise);
    expect(read).toHaveBeenCalledOnce();

    movePageReadRevision();

    expect(startPageRead(client, "plays", revision, read)).not.toBe(promise);
    expect(read).toHaveBeenCalledTimes(2);
  });

  it("tells the screens when the data changes", () => {
    const listener = vi.fn();
    const stop = subscribePageReadRevision(listener);
    const before = currentPageReadRevision();

    movePageReadRevision();
    stop();
    movePageReadRevision();

    expect(listener).toHaveBeenCalledOnce();
    expect(currentPageReadRevision()).toBe(before + 2);
  });

  it("doesn't keep a read a save overtook while it was on screen", () => {
    const client = {};
    const read = vi.fn(async () => "data");
    const revision = currentPageReadRevision();
    const promise = startPageRead(client, "stats", revision, read);
    const release = holdPageRead(client, "stats", revision, promise);

    movePageReadRevision();
    release();

    expect(startPageRead(client, "stats", revision, read)).not.toBe(promise);
  });

  it("lets kept reads go when asked, without moving on", () => {
    const client = {};
    const read = vi.fn(async () => "data");
    const revision = currentPageReadRevision();
    const promise = startPageRead(client, "home", revision, read);

    holdPageRead(client, "home", revision, promise)();
    forgetKeptPageReads();

    expect(currentPageReadRevision()).toBe(revision);
    expect(startPageRead(client, "home", revision, read)).not.toBe(promise);
  });

  it("lets only the kept reads it is asked about go", () => {
    const client = {};
    const read = vi.fn(async () => "data");
    const revision = currentPageReadRevision();
    const home = startPageRead(client, "home:", revision, read);
    const plays = startPageRead(client, "plays:active", revision, read);

    holdPageRead(client, "home:", revision, home)();
    holdPageRead(client, "plays:active", revision, plays)();
    forgetKeptPageReads((key) => key.startsWith("home:"));

    expect(startPageRead(client, "home:", revision, read)).not.toBe(home);
    expect(startPageRead(client, "plays:active", revision, read)).toBe(plays);
  });

  it("shares a read the page says not to keep, but reads again next visit", async () => {
    const client = {};
    const read = vi.fn(async () => ({ hasGames: false }));
    const keep = (data: { hasGames: boolean }) => data.hasGames;
    const revision = currentPageReadRevision();
    const promise = startPageRead(client, "home:", revision, read, keep);

    await promise;
    /* React draws the page again once the read is in: the same read. */
    expect(startPageRead(client, "home:", revision, read, keep)).toBe(promise);

    holdPageRead(client, "home:", revision, promise)();

    expect(startPageRead(client, "home:", revision, read, keep)).not.toBe(
      promise,
    );
  });

  it("keeps only the latest reads", () => {
    const client = {};
    const read = vi.fn(async () => "data");
    const revision = currentPageReadRevision();
    const visit = (key: string) => {
      const promise = startPageRead(client, key, revision, read);

      holdPageRead(client, key, revision, promise)();

      return promise;
    };

    const first = visit("play:0");
    const second = visit("play:1");

    for (let index = 2; index <= keptPageReadLimit; index += 1) {
      visit(`play:${index}`);
    }

    expect(startPageRead(client, "play:0", revision, read)).not.toBe(first);
    expect(startPageRead(client, "play:1", revision, read)).toBe(second);
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

  it("doesn't keep a failed read for the next visit", async () => {
    const client = {};
    const read = vi.fn(async (): Promise<string> => {
      throw new Error("The device database is closed.");
    });
    const revision = currentPageReadRevision();
    const failed = startPageRead(client, "plans", revision, read);
    const release = holdPageRead(client, "plans", revision, failed);

    await expect(failed).rejects.toThrow("closed");
    release();
    forgetFailedPageReads();

    expect(startPageRead(client, "plans", revision, read)).not.toBe(failed);
    await settle();
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

  it("gets a page ready before its first visit, which then shows at once", async () => {
    const db = {};
    const read = vi.fn(async () => "plays");

    await preparePageRead(db, "plays:active", read);

    const visit = startPageRead(
      db,
      "plays:active",
      currentPageReadRevision(),
      read,
    );

    await expect(visit).resolves.toBe("plays");
    expect(read).toHaveBeenCalledOnce();
  });

  it("shares a read still getting ready with the page opened meanwhile", async () => {
    const db = {};
    let finish: (data: string) => void = () => {};
    const read = vi.fn(
      () =>
        new Promise<string>((resolve) => {
          finish = resolve;
        }),
    );
    const preparing = preparePageRead(db, "stats", read);
    const revision = currentPageReadRevision();
    const page = startPageRead(db, "stats", revision, read);
    const release = holdPageRead(db, "stats", revision, page);

    finish("stats");
    await preparing;

    await expect(page).resolves.toBe("stats");
    expect(read).toHaveBeenCalledOnce();
    release();
  });

  it("doesn't keep a ready read the data changed under", async () => {
    const db = {};
    let finish: (data: string) => void = () => {};
    const read = vi.fn(
      () =>
        new Promise<string>((resolve) => {
          finish = resolve;
        }),
    );
    const preparing = preparePageRead(db, "home:", read);

    movePageReadRevision();
    finish("old home");
    await preparing;

    startPageRead(db, "home:", currentPageReadRevision(), async () => "home");
    expect(read).toHaveBeenCalledOnce();
    await expect(
      startPageRead(db, "home:", currentPageReadRevision(), read),
    ).resolves.toBe("home");
  });

  it("reads a page again when getting it ready failed", async () => {
    const db = {};
    const read = vi
      .fn<() => Promise<string>>()
      .mockRejectedValueOnce(new Error("boom"))
      .mockResolvedValue("collection");

    await expect(
      preparePageRead(db, "collection", read),
    ).resolves.toBeUndefined();
    await expect(
      startPageRead(db, "collection", currentPageReadRevision(), read),
    ).resolves.toBe("collection");
    expect(read).toHaveBeenCalledTimes(2);
  });

  it("doesn't keep a ready read its page said not to keep", async () => {
    const db = {};
    const read = vi.fn(async () => ({ hasGames: false }));

    await preparePageRead(db, "home:", read, (data) => data.hasGames);
    startPageRead(db, "home:", currentPageReadRevision(), read);

    expect(read).toHaveBeenCalledTimes(2);
  });

  it("says when kept reads go, so the pages can get ready again", async () => {
    const db = {};
    const listener = vi.fn();
    const stop = subscribeForgottenPageReads(listener);

    await preparePageRead(db, "home:", async () => "home");
    forgetKeptPageReads((key) => key.startsWith("plays:"));
    expect(listener).not.toHaveBeenCalled();

    forgetKeptPageReads((key) => key.startsWith("home:"));
    expect(listener).toHaveBeenCalledOnce();

    /* A save says so even with nothing kept. */
    movePageReadRevision();
    expect(listener).toHaveBeenCalledTimes(2);
    stop();
  });
});
