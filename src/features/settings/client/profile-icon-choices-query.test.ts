import { afterEach, describe, expect, it, vi } from "vitest";

import { profileIconSlugs } from "@/config/profile-icons";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import {
  isProfileIconForm,
  readProfileIconChoices,
} from "./profile-icon-choices-query";

const createListClient = (
  rows: { id: number; name: string; slug: string }[],
  error: unknown = null,
) =>
  ({
    schema: () => ({
      from: () => ({
        select: () => ({
          in: () => Promise.resolve({ data: rows, error }),
        }),
      }),
    }),
  }) as unknown as ServerSupabaseClient;

const createLookupClient = (slug: string | null, error: unknown = null) =>
  ({
    schema: () => ({
      from: () => ({
        select: () => ({
          eq: () => ({
            maybeSingle: () =>
              Promise.resolve({ data: slug ? { slug } : null, error }),
          }),
        }),
      }),
    }),
  }) as unknown as ServerSupabaseClient;

describe("readProfileIconChoices", () => {
  afterEach(() => vi.unstubAllEnvs());

  it("lists the icons in the picker's order, whatever order the rows come in", async () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "https://assets.test");
    const rows = [...profileIconSlugs]
      .reverse()
      .map((slug, index) => ({ id: index + 1, name: slug, slug }));

    const choices = await readProfileIconChoices(createListClient(rows));

    expect(choices.map((choice) => choice.name)).toEqual([...profileIconSlugs]);
    expect(choices[0]?.url).toBe(
      `https://assets.test/pokemon/icons/${profileIconSlugs[0]}.webp`,
    );
  });

  it("leaves out an icon the reference data doesn't have", async () => {
    const choices = await readProfileIconChoices(
      createListClient([{ id: 7, name: "Squirtle", slug: "squirtle" }]),
    );

    expect(choices).toEqual([
      expect.objectContaining({ formId: 7, name: "Squirtle" }),
    ]);
  });

  it("throws when the icons can't be read, never an empty picker", async () => {
    await expect(
      readProfileIconChoices(createListClient([], { message: "boom" })),
    ).rejects.toThrow("The icons couldn't be loaded.");
  });
});

describe("isProfileIconForm", () => {
  it("accepts an offered icon and refuses any other form", async () => {
    await expect(
      isProfileIconForm(createLookupClient("mudkip"), 258),
    ).resolves.toBe(true);
    await expect(
      isProfileIconForm(createLookupClient("charizard"), 600),
    ).resolves.toBe(false);
    await expect(isProfileIconForm(createLookupClient(null), 1)).resolves.toBe(
      false,
    );
  });

  it("throws when the check can't be made", async () => {
    await expect(
      isProfileIconForm(createLookupClient(null, { message: "boom" }), 1),
    ).rejects.toThrow("The icon couldn't be checked.");
  });
});
