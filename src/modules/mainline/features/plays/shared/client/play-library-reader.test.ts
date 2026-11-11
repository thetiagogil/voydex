import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { readPlayTags } from "./play-library-reader";

type Result = { data: unknown; error: unknown };

/* The links read goes through `.schema("gameplay")`, the tags read does not. */
const createFakeClient = (links: Result, tags: Result) => {
  const table = (result: Result) => ({
    select: () => ({ in: () => Promise.resolve(result) }),
  });

  return {
    from: () => table(tags),
    schema: () => ({ from: () => table(links) }),
  } as unknown as ServerSupabaseClient;
};

const nuzlocke = { id: "tag-1", name: "Nuzlocke", slug: "nuzlocke" };
const ok = (data: unknown): Result => ({ data, error: null });

describe("readPlayTags", () => {
  it("gives each Play its tags", async () => {
    const tagsByPlayId = await readPlayTags(
      createFakeClient(
        ok([
          { play_id: "play-1", tag_id: "tag-1" },
          { play_id: "play-2", tag_id: "tag-1" },
        ]),
        ok([nuzlocke]),
      ),
      ["play-1", "play-2", "play-3"],
    );

    expect(tagsByPlayId.get("play-1")).toEqual([nuzlocke]);
    expect(tagsByPlayId.get("play-2")).toEqual([nuzlocke]);
    expect(tagsByPlayId.has("play-3")).toBe(false);
  });

  it("reads nothing for no Plays", async () => {
    const tagsByPlayId = await readPlayTags(
      createFakeClient(ok([]), ok([])),
      [],
    );

    expect(tagsByPlayId.size).toBe(0);
  });

  it("hides the tags, not the Plays, when a read fails", async () => {
    const boom = { data: null, error: { message: "boom" } };

    expect(
      (await readPlayTags(createFakeClient(boom, ok([nuzlocke])), ["play-1"]))
        .size,
    ).toBe(0);
    expect(
      (
        await readPlayTags(
          createFakeClient(ok([{ play_id: "play-1", tag_id: "tag-1" }]), boom),
          ["play-1"],
        )
      ).size,
    ).toBe(0);
  });

  it("skips a link whose tag is missing", async () => {
    const tagsByPlayId = await readPlayTags(
      createFakeClient(ok([{ play_id: "play-1", tag_id: "gone" }]), ok([])),
      ["play-1"],
    );

    expect(tagsByPlayId.size).toBe(0);
  });
});
