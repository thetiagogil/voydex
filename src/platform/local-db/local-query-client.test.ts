import { afterAll, beforeAll, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import { localUserId } from "@/platform/local-db/device-schema";
import { createTestDevice } from "@/platform/local-db/local-db-test-support";
import { createLocalQueryClient } from "@/platform/local-db/local-query-client";

/* The query interface the readers use, run against the real device schema. */
describe("createLocalQueryClient", () => {
  let db: PGlite;
  let client: ReturnType<typeof createLocalQueryClient>;

  beforeAll(async () => {
    db = await createTestDevice();
    client = createLocalQueryClient(db);
    await db.exec(`
      INSERT INTO public.tags (user_id, name, slug) VALUES
        (auth.uid(), 'Nuzlocke', 'nuzlocke'),
        (auth.uid(), 'Shiny hunt', 'shiny-hunt'),
        (auth.uid(), 'Monotype', 'monotype');
      INSERT INTO gameplay.mainline_challenge_rule_types (id, slug, name, sort_order)
        VALUES (1, 'custom', 'Custom', 1);
    `);
  });

  afterAll(() => db.close());

  it("selects columns with filters, order and a range", async () => {
    const { data, error } = await client
      .from("tags")
      .select("name, slug")
      .eq("user_id", localUserId)
      .in("slug", ["nuzlocke", "monotype", "shiny-hunt"])
      .order("name", { ascending: false })
      .range(0, 1);

    expect(error).toBeNull();
    expect(data).toEqual([
      { name: "Shiny hunt", slug: "shiny-hunt" },
      { name: "Nuzlocke", slug: "nuzlocke" },
    ]);
  });

  it("reads one row, maybe none, and says when single finds none", async () => {
    const one = await client
      .from("tags")
      .select("name")
      .eq("slug", "nuzlocke")
      .single();
    const none = await client
      .from("tags")
      .select("name")
      .eq("slug", "missing")
      .maybeSingle();
    const missing = await client
      .from("tags")
      .select("name")
      .eq("slug", "missing")
      .single();

    expect(one.data).toEqual({ name: "Nuzlocke" });
    expect(none).toMatchObject({ data: null, error: null });
    expect(missing.error?.code).toBe("PGRST116");
  });

  it("counts without reading rows", async () => {
    const { count, data } = await client
      .from("tags")
      .select("id", { count: "exact", head: true })
      .neq("slug", "monotype");

    expect({ count, data }).toEqual({ count: 2, data: null });
  });

  it("filters with is, not, or and comparisons", async () => {
    const { data } = await client
      .from("tags")
      .select("slug")
      .not("name", "is", null)
      .or("slug.eq.nuzlocke,slug.eq.monotype")
      .order("slug");

    expect(data).toEqual([{ slug: "monotype" }, { slug: "nuzlocke" }]);
  });

  it("inserts, updates, upserts and deletes, returning what changed", async () => {
    const inserted = await client
      .from("tags")
      .insert({ name: "Randomizer", slug: "randomizer", user_id: localUserId })
      .select("id, name")
      .single();

    expect(inserted.data).toMatchObject({ name: "Randomizer" });

    const id = (inserted.data as { id: string }).id;
    const updated = await client
      .from("tags")
      .update({ name: "Random" })
      .eq("id", id)
      .select("name");

    expect(updated.data).toEqual([{ name: "Random" }]);

    const upserted = await client
      .from("tags")
      .upsert({
        id,
        name: "Randomised",
        slug: "randomizer",
        user_id: localUserId,
      })
      .select("name");

    expect(upserted.data).toEqual([{ name: "Randomised" }]);

    const deleted = await client.from("tags").delete().eq("id", id);

    expect(deleted).toMatchObject({ data: null, error: null });
  });

  it("reports the database's error code", async () => {
    const { error } = await client
      .from("tags")
      .insert({ name: "Nuzlocke", slug: "nuzlocke", user_id: localUserId });

    expect(error?.code).toBe("23505");
  });

  it("calls a function: a set as rows, anything else as its value", async () => {
    await db.exec(`
      CREATE FUNCTION public.add_one (p_value integer) RETURNS integer
        LANGUAGE sql AS $$ SELECT p_value + 1 $$;
      CREATE FUNCTION public.pairs (p_count integer)
        RETURNS TABLE (result_number integer) LANGUAGE sql
        AS $$ SELECT generate_series(1, p_count) $$;
    `);

    /* Test-only functions, so the generated types don't know them. */
    const rpc = client.rpc as unknown as (
      name: string,
      args: Record<string, unknown>,
    ) => Promise<unknown>;

    await expect(rpc("add_one", { p_value: 2 })).resolves.toMatchObject({
      data: 3,
      error: null,
    });
    await expect(rpc("pairs", { p_count: 2 })).resolves.toMatchObject({
      data: [{ result_number: 1 }, { result_number: 2 }],
    });
  });

  it("answers as the device's one user", async () => {
    const { data } = await client.auth.getClaims();

    expect(data?.claims.sub).toBe(localUserId);
  });

  it("refuses an embedded select instead of guessing", async () => {
    const { error } = await client.from("tags").select("id, plays(id)");

    expect(error?.message).toContain("flat column lists");
  });
});
