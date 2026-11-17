import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { StoryHandover } from "../../data/story-place-pokemon";
import {
  getStoryHandoverSource,
  StoryPokemonRows,
} from "./story-place-pokemon-list";

const handover = (overrides: Partial<StoryHandover>): StoryHandover => ({
  condition: null,
  giver: null,
  heldItem: null,
  nickname: null,
  price: null,
  tradeFor: null,
  ...overrides,
});

describe("getStoryHandoverSource", () => {
  it("says who hands it over, the way it's handed over", () => {
    expect(
      getStoryHandoverSource("gift", handover({ giver: "Professor Oak" })),
    ).toBe("From Professor Oak");
    expect(
      getStoryHandoverSource(
        "fossil",
        handover({ giver: "A Cinnabar Lab scientist" }),
      ),
    ).toBe("Revived by a Cinnabar Lab scientist");
    expect(
      getStoryHandoverSource(
        "bought",
        handover({ giver: "The Magikarp salesman" }),
      ),
    ).toBe("Sold by the Magikarp salesman");
  });

  it("names a trade's ask, with the trader when there is one", () => {
    const abra = { name: "Abra", slug: "abra" };

    expect(
      getStoryHandoverSource(
        "trade",
        handover({ giver: "A boy in the trade house", tradeFor: abra }),
      ),
    ).toBe("Trade your Abra with a boy in the trade house");
    expect(getStoryHandoverSource("trade", handover({ tradeFor: abra }))).toBe(
      "Trade your Abra",
    );
    expect(getStoryHandoverSource("trade", handover({}))).toBeNull();
  });

  it("says nothing when nobody hands it over", () => {
    expect(getStoryHandoverSource("gift", handover({}))).toBeNull();
  });
});

describe("StoryPokemonRows", () => {
  it("shows a trade's nickname, held item, trader and when it's offered", () => {
    const html = renderToStaticMarkup(
      <StoryPokemonRows
        groups={[
          {
            pokemon: [
              {
                formId: 8200,
                handover: handover({
                  condition: "After you beat Team Rocket",
                  giver: "Forest",
                  heldItem: "Metal Coat",
                  nickname: "MAGGIE",
                  tradeFor: { name: "Dugtrio", slug: "dugtrio" },
                }),
                levels: null,
                name: "Magneton",
                slug: "magneton",
              },
            ],
            way: "In-game trade",
            waySlug: "trade",
          },
        ]}
      />,
    );

    for (const text of [
      "Magneton",
      "“MAGGIE” · Holds Metal Coat",
      "Trade your Dugtrio with Forest",
      "After you beat Team Rocket",
    ]) {
      expect(html).toContain(`>${text}<`);
    }
  });
});
