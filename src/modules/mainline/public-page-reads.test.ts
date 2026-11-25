import { describe, expect, it, vi } from "vitest";

import type { LocalDb } from "@/platform/local-db/local-db";

/* Each tab's read waits until the test lets it finish, and says it ran. */
const { finish, reads, started } = vi.hoisted(() => {
  const waiting = new Map<string, () => void>();
  const ran: string[] = [];
  const read = (key: string, data: unknown = {}) => ({
    key,
    read: () => {
      ran.push(key);

      return new Promise((resolve) => {
        waiting.set(key, () => resolve(data));
      });
    },
  });

  return {
    finish: (key: string) => waiting.get(key)?.(),
    reads: { read },
    started: ran,
  };
});

vi.mock(
  "@/modules/mainline/features/home/client/home-page-query",
  async () => ({
    homePageRead: () =>
      reads.read("home:", { data: { journey: { play_id: "play-1" } } }),
  }),
);
vi.mock(
  "@/modules/mainline/features/plays/browse/client/plays-page-local-query",
  async () => ({ playsPageRead: () => reads.read("plays") }),
);
vi.mock(
  "@/modules/mainline/features/plans/planner/client/planner-page-query",
  async () => ({ plannerPageRead: () => reads.read("planner") }),
);
vi.mock("@/modules/mainline/features/stats/client/stats-page-query", () => ({
  statsPageRead: reads.read("stats"),
}));
vi.mock(
  "@/modules/mainline/features/plans/my-plans/client/my-plans-query",
  () => ({ myPlansPageRead: reads.read("my-plans") }),
);
vi.mock(
  "@/modules/mainline/features/collection/client/collection-page-query",
  () => ({ collectionPageRead: reads.read("collection") }),
);
vi.mock("@/modules/mainline/features/plays/hub/client/play-page-reads", () => ({
  playPageReads: (playId: string) => ({
    overview: reads.read(`overview:${playId}`),
    shell: reads.read(`shell:${playId}`),
  }),
}));

const { prepareMainlineTabs } =
  await import("@/modules/mainline/public-page-reads");
const { movePageReadRevision } = await import("@/platform/local-db/page-reads");

const settles = async (promise: Promise<unknown>) => {
  let settled = false;

  void promise.then(() => {
    settled = true;
  });
  await new Promise((resolve) => setTimeout(resolve, 20));

  return settled;
};

describe("prepareMainlineTabs", () => {
  it("settles once Home is ready, and gets the other tabs ready behind it", async () => {
    const db = {} as LocalDb;
    const ready = prepareMainlineTabs(db);

    expect(started).toEqual(["home:"]);
    await expect(settles(ready)).resolves.toBe(false);

    finish("home:");
    await expect(settles(ready)).resolves.toBe(true);

    /* The start screen gave way; the other tabs read one after another. */
    for (const key of [
      "plays",
      "planner",
      "stats",
      "my-plans",
      "collection",
      "shell:play-1",
      "overview:play-1",
    ]) {
      await vi.waitFor(() => expect(started.at(-1)).toBe(key));
      finish(key);
    }

    expect(started).toHaveLength(8);
  });

  it("leaves out Home's Play when the data changed since Home read", async () => {
    started.length = 0;

    const db = {} as LocalDb;

    void prepareMainlineTabs(db);
    finish("home:");
    await vi.waitFor(() => expect(started.at(-1)).toBe("plays"));
    movePageReadRevision();
    finish("plays");

    await new Promise((resolve) => setTimeout(resolve, 20));
    expect(started).not.toContain("shell:play-1");
  });
});
