import { beforeEach, describe, expect, it, vi } from "vitest";

import { fetchPokemonMenuPage } from "@/modules/codex/features/pokemon/detail/client/pokemon-detail-species-menu-api";
import type { PokemonDetailMenuPokemon } from "@/modules/reference/types";
import { fetchPrebuiltData } from "@/platform/prebuilt-data/use-prebuilt-data";

vi.mock("@/platform/prebuilt-data/use-prebuilt-data", () => ({
  fetchPrebuiltData: vi.fn(),
}));

const pokemon = (
  nationalNumber: number,
  name: string,
  pokedexNumber: number | null,
) =>
  ({
    name,
    nationalNumber,
    pokedexNumber,
    slug: name.toLowerCase().replace(/[^a-z0-9]+/g, "-"),
  }) as PokemonDetailMenuPokemon;

const galar = [
  pokemon(810, "Grookey", 1),
  pokemon(811, "Thwackey", 2),
  pokemon(25, "Pikachu", 194),
  pokemon(122, "Mr. Mime", 253),
  pokemon(866, "Mr. Rime", 254),
];

beforeEach(() => {
  vi.mocked(fetchPrebuiltData).mockReset();
  vi.mocked(fetchPrebuiltData).mockResolvedValue(galar);
});

describe("fetchPokemonMenuPage", () => {
  it("reads the group's pre-built list and pages it", async () => {
    await expect(
      fetchPokemonMenuPage({
        limit: 2,
        offset: 0,
        query: "",
        versionGroupSlug: "swsh",
      }),
    ).resolves.toEqual({ nextOffset: 2, pokemon: galar.slice(0, 2), total: 5 });
    await expect(
      fetchPokemonMenuPage({
        limit: 2,
        offset: 4,
        query: "",
        versionGroupSlug: "swsh",
      }),
    ).resolves.toEqual({ nextOffset: null, pokemon: galar.slice(4), total: 5 });
    expect(fetchPrebuiltData).toHaveBeenCalledWith("pokemon-menu/swsh.json.gz");
  });

  it("searches names in any case, slugs and both numbers", async () => {
    const search = async (query: string) =>
      (
        await fetchPokemonMenuPage({
          limit: 96,
          offset: 0,
          query,
          versionGroupSlug: "swsh",
        })
      ).pokemon.map((item) => item.name);

    expect(await search("  MR. ")).toEqual(["Mr. Mime", "Mr. Rime"]);
    expect(await search("mr-r")).toEqual(["Mr. Rime"]);
    /* The national number, padded or not, and the regional one. */
    expect(await search("#0025")).toEqual(["Pikachu"]);
    expect(await search("194")).toEqual(["Pikachu"]);
    expect(await search("zzz")).toEqual([]);
  });

  it("fails for a group with no list", async () => {
    vi.mocked(fetchPrebuiltData).mockResolvedValue(null);

    await expect(
      fetchPokemonMenuPage({
        limit: 96,
        offset: 0,
        query: "",
        versionGroupSlug: "nope",
      }),
    ).rejects.toThrow("Unable to load Pokémon menu.");
  });
});
