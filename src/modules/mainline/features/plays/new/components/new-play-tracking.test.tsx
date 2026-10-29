import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { NewPlayTracking } from "./new-play-tracking";

const render = (
  tracking: Parameters<typeof NewPlayTracking>[0]["tracking"],
  hasCollectibles = true,
) =>
  renderToStaticMarkup(
    <NewPlayTracking
      hasCollectibles={hasCollectibles}
      tracking={tracking}
      onChange={() => {}}
    />,
  );

describe("NewPlayTracking", () => {
  it("summarises what the new Play starts tracking, from your defaults", () => {
    expect(
      render({
        collectibles: true,
        pokedexMode: "caught_and_seen",
        story: true,
      }),
    ).toContain("Story · Pokédex · Collectibles");
    expect(
      render({ collectibles: false, pokedexMode: "caught_only", story: false }),
    ).toContain(">Pokédex<");
  });

  it("offers the same three choices as Play settings, with no placeholder left", () => {
    const html = render({
      collectibles: true,
      pokedexMode: "caught_and_seen",
      story: true,
    });

    expect(html.match(/role="switch"/g)).toHaveLength(2);
    expect(html).toContain("Caught only");
    expect(html).toContain("Caught and seen");
    expect(html).not.toContain("for now");
    expect(html).not.toContain("not in Voydex yet");
  });

  it("leaves Collectibles out for a game that has none", () => {
    const html = render(
      { collectibles: true, pokedexMode: "caught_and_seen", story: true },
      false,
    );

    expect(html).toContain(">Story · Pokédex<");
    expect(html).not.toContain("Collectibles");
    expect(html.match(/role="switch"/g)).toHaveLength(1);
  });
});
