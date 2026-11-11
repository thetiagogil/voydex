import { afterEach, describe, expect, it, vi } from "vitest";
import { gzipSync } from "node:zlib";

import { encodePrebuiltData } from "@/platform/prebuilt-data/prebuilt-data";
import { fetchPrebuiltData } from "@/platform/prebuilt-data/use-prebuilt-data";

const gzippedResponse = (value: unknown) =>
  new Response(gzipSync(encodePrebuiltData(value)), { status: 200 });

afterEach(() => {
  vi.unstubAllGlobals();
});

/* Each test asks for its own path: the module keeps what it read. */
describe("fetchPrebuiltData", () => {
  it("reads a gzipped file from /codex-data/, once per path", async () => {
    const fetch = vi.fn(async () => gzippedResponse({ ids: new Set([1]) }));

    vi.stubGlobal("fetch", fetch);

    await expect(fetchPrebuiltData("test/read.json.gz")).resolves.toEqual({
      ids: new Set([1]),
    });
    await expect(fetchPrebuiltData("test/read.json.gz")).resolves.toEqual({
      ids: new Set([1]),
    });
    expect(fetch).toHaveBeenCalledTimes(1);
    expect(fetch).toHaveBeenCalledWith("/codex-data/test/read.json.gz");
  });

  /* A server that already unzipped it on the way hands over plain JSON. */
  it("reads a file the server already unzipped", async () => {
    vi.stubGlobal(
      "fetch",
      vi.fn(async () => new Response(encodePrebuiltData({ a: 1 }))),
    );

    await expect(fetchPrebuiltData("test/plain.json.gz")).resolves.toEqual({
      a: 1,
    });
  });

  it("is null for a file that doesn't exist, or a path that names none", async () => {
    const fetch = vi.fn(async () => new Response("", { status: 404 }));

    vi.stubGlobal("fetch", fetch);

    await expect(fetchPrebuiltData("test/missing.json.gz")).resolves.toBeNull();
    await expect(fetchPrebuiltData(null)).resolves.toBeNull();
    expect(fetch).toHaveBeenCalledTimes(1);
  });

  it("forgets a failed download, so the next visit tries again", async () => {
    const fetch = vi
      .fn()
      .mockResolvedValueOnce(new Response("", { status: 503 }))
      .mockResolvedValueOnce(gzippedResponse({ ok: true }));

    vi.stubGlobal("fetch", fetch);

    await expect(fetchPrebuiltData("test/retry.json.gz")).rejects.toThrow(
      "didn't download",
    );
    await expect(fetchPrebuiltData("test/retry.json.gz")).resolves.toEqual({
      ok: true,
    });
    expect(fetch).toHaveBeenCalledTimes(2);
  });
});
