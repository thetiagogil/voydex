import { describe, expect, it, vi } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { readTrainerNames } from "./trainer-profile-reader";

vi.mock("@/platform/supabase/auth", () => ({
  getClaimsWithTimeout: vi.fn(async () => ({
    data: { claims: { email: "ash@example.com" } },
  })),
}));

const createFakeClient = (
  profile: {
    default_trainer_name: string | null;
    display_name: string | null;
  } | null,
  error: unknown = null,
) =>
  ({
    schema: () => ({
      from: () => ({
        select: () => ({
          eq: () => ({
            maybeSingle: () => Promise.resolve({ data: profile, error }),
          }),
        }),
      }),
    }),
  }) as unknown as ServerSupabaseClient;

describe("readTrainerNames", () => {
  it("starts a new Play with the default trainer name", async () => {
    const client = createFakeClient({
      default_trainer_name: " Red ",
      display_name: "Ash",
    });

    await expect(readTrainerNames(client, "user")).resolves.toEqual({
      displayName: "Ash",
      trainerName: "Red",
    });
  });

  it("falls back to the display name while no default is set", async () => {
    const client = createFakeClient({
      default_trainer_name: "  ",
      display_name: "Ash",
    });

    await expect(readTrainerNames(client, "user")).resolves.toEqual({
      displayName: "Ash",
      trainerName: "Ash",
    });
  });

  it("never treats the account's email as a name", async () => {
    const client = createFakeClient({
      default_trainer_name: null,
      display_name: "Ash@Example.com",
    });

    await expect(readTrainerNames(client, "user")).resolves.toEqual({
      displayName: null,
      trainerName: null,
    });
  });

  it("keeps the default trainer name even when the display name is the email", async () => {
    const client = createFakeClient({
      default_trainer_name: "Red",
      display_name: "ash@example.com",
    });

    await expect(readTrainerNames(client, "user")).resolves.toEqual({
      displayName: null,
      trainerName: "Red",
    });
  });

  it("is none for a trainer with no names", async () => {
    await expect(
      readTrainerNames(createFakeClient(null), "user"),
    ).resolves.toEqual({ displayName: null, trainerName: null });
  });

  it("throws when the profile can't be read, never an empty name", async () => {
    await expect(
      readTrainerNames(createFakeClient(null, { message: "boom" }), "user"),
    ).rejects.toThrow("Unable to load your trainer name.");
  });
});
