import { describe, expect, it } from "vitest";

import { getGameKind } from "@/modules/reference/features/games/domain/game-kinds";

describe("getGameKind", () => {
  it("reads main versions and sequels as the core series", () => {
    expect(getGameKind({ slug: "sword" }, { slug: "main" })).toBe("core");
    expect(getGameKind({ slug: "black-2" }, { slug: "sequel" })).toBe("core");
  });

  it("reads enhanced versions and remakes as companions and remakes", () => {
    expect(getGameKind({ slug: "emerald" }, { slug: "enhanced" })).toBe(
      "companion",
    );
    expect(getGameKind({ slug: "heartgold" }, { slug: "remake" })).toBe(
      "companion",
    );
  });

  it("names the Legends titles exactly", () => {
    expect(getGameKind({ slug: "legends-arceus" }, { slug: "main" })).toBe(
      "legends",
    );
    expect(getGameKind({ slug: "legends-za" }, { slug: "main" })).toBe(
      "legends",
    );
  });
});
