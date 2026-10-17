import { describe, expect, it, vi } from "vitest";

import type { StartIntentPreview } from "@/config/start-intent";

import { readAuthStartIntent } from "./resolve-start-intent";

const swordPreview: StartIntentPreview = {
  game: { name: "Pokémon Sword", slug: "sword" },
  gameShortName: "Sword",
  partner: { imageUrl: null, name: "Grookey", speciesSlug: "grookey" },
  starters: [],
};

describe("the pick a sign-in page carries", () => {
  it("has none without a game", async () => {
    expect(await readAuthStartIntent(undefined, undefined)).toBeNull();
    expect(await readAuthStartIntent({ partner: "grookey" }, undefined)).toBe(
      null,
    );
  });

  it("ignores a game or partner that isn't a slug", async () => {
    expect(
      await readAuthStartIntent({ game: "<script>" }, undefined),
    ).toBeNull();
    expect(
      await readAuthStartIntent(
        { game: "sword", partner: "Grookey!" },
        undefined,
      ),
    ).toEqual({ preview: null, value: { gameSlug: "sword" } });
  });

  it("keeps the pick unshown when nothing can resolve it", async () => {
    expect(
      await readAuthStartIntent(
        { game: "sword", partner: "grookey" },
        undefined,
      ),
    ).toEqual({
      preview: null,
      value: { gameSlug: "sword", partnerSpeciesSlug: "grookey" },
    });
  });

  it("drops a pick the catalogue doesn't know", async () => {
    const resolve = vi.fn().mockResolvedValue(null);

    expect(await readAuthStartIntent({ game: "sword" }, resolve)).toBeNull();
  });

  it("drops a partner the game doesn't offer and keeps the game", async () => {
    const resolve = vi
      .fn()
      .mockResolvedValue({ ...swordPreview, partner: null });

    expect(
      await readAuthStartIntent({ game: "sword", partner: "pikachu" }, resolve),
    ).toEqual({
      preview: { ...swordPreview, partner: null },
      value: { gameSlug: "sword" },
    });
  });

  it("shows a pick the catalogue resolves", async () => {
    const resolve = vi.fn().mockResolvedValue(swordPreview);

    expect(
      await readAuthStartIntent({ game: "sword", partner: "grookey" }, resolve),
    ).toEqual({
      preview: swordPreview,
      value: { gameSlug: "sword", partnerSpeciesSlug: "grookey" },
    });
    expect(resolve).toHaveBeenCalledWith({
      gameSlug: "sword",
      partnerSpeciesSlug: "grookey",
    });
  });
});
