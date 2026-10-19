import { afterEach, describe, expect, it, vi } from "vitest";

import {
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";

const charizard = { name: "Charizard", slug: "charizard" };

describe("Pokémon image addresses", () => {
  afterEach(() => {
    vi.unstubAllEnvs();
  });

  it("serves the medium HOME sprite by default", () => {
    expect(getPokemonFormImageUrl(charizard)).toBe(
      "https://assets.test/pokemon/home/md/charizard.webp",
    );
  });

  it("serves the small sprite and the official art when asked", () => {
    expect(getPokemonFormImageUrl(charizard, "sm")).toBe(
      "https://assets.test/pokemon/home/sm/charizard.webp",
    );
    expect(getPokemonFormImageUrl(charizard, "art")).toBe(
      "https://assets.test/pokemon/art/normal/charizard.webp",
    );
  });

  it("serves shiny sprites and shiny art", () => {
    expect(getPokemonFormShinyImageUrl(charizard)).toBe(
      "https://assets.test/pokemon/home-shiny/md/charizard.webp",
    );
    expect(getPokemonFormShinyImageUrl(charizard, "art")).toBe(
      "https://assets.test/pokemon/art/shiny/charizard.webp",
    );
  });

  it("names files by the form's own slug", () => {
    expect(
      getPokemonFormImageUrl({
        name: "Galarian Darmanitan",
        slug: "galarian-darmanitan",
      }),
    ).toBe("https://assets.test/pokemon/home/md/galarian-darmanitan.webp");
  });

  it("shows the placeholder when the image site isn't configured", () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "");

    expect(getPokemonFormImageUrl(charizard)).toBeNull();
    expect(getPokemonFormShinyImageUrl(charizard)).toBeNull();
  });

  it("ignores a trailing slash in the configured address", () => {
    vi.stubEnv("NEXT_PUBLIC_ASSETS_URL", "https://assets.test/");

    expect(getPokemonFormImageUrl(charizard, "sm")).toBe(
      "https://assets.test/pokemon/home/sm/charizard.webp",
    );
  });
});
