import { afterEach, describe, expect, it, vi } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { readAccountIcon } from "./account-icon-reader";

const createFakeClient = (form: { name: string; slug: string } | null) => {
  const lookups: unknown[] = [];

  return {
    client: {
      schema: () => ({
        from: () => ({
          select: () => ({
            eq: (_column: string, value: unknown) => {
              lookups.push(value);

              return { maybeSingle: () => Promise.resolve({ data: form }) };
            },
          }),
        }),
      }),
    } as unknown as ServerSupabaseClient,
    lookups,
  };
};

describe("readAccountIcon", () => {
  afterEach(() => vi.unstubAllEnvs());

  it("is none without a picked form, and reads nothing", async () => {
    const { client, lookups } = createFakeClient(null);

    await expect(readAccountIcon(client, null)).resolves.toBeNull();
    expect(lookups).toEqual([]);
  });

  it("names the Pokémon and where its icon lives", async () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "https://assets.test/");
    const { client, lookups } = createFakeClient({
      name: "Squirtle",
      slug: "squirtle",
    });

    await expect(readAccountIcon(client, 700)).resolves.toEqual({
      name: "Squirtle",
      typeSlug: "water",
      url: "https://assets.test/pokemon/icons/squirtle.webp",
    });
    expect(lookups).toEqual([700]);
  });

  it("has no picture when the assets site isn't configured", async () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "");
    const { client } = createFakeClient({ name: "Mudkip", slug: "mudkip" });

    await expect(readAccountIcon(client, 258)).resolves.toEqual({
      name: "Mudkip",
      typeSlug: "water",
      url: null,
    });
  });

  it("ignores a form that isn't one of the icons", async () => {
    const { client } = createFakeClient({
      name: "Charizard",
      slug: "charizard",
    });

    await expect(readAccountIcon(client, 600)).resolves.toBeNull();
  });
});
