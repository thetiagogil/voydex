import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { StatsRegion } from "@/modules/mainline/shared/data/stats-model";

import { RegionTip } from "./stats-regions-section";

const play = (id: string, name: string, gameName: string) => ({
  coverImageUrl: null,
  gameName,
  gameSlug: gameName.toLowerCase(),
  id,
  name,
});

const region = (plays: StatsRegion["plays"]): StatsRegion => ({
  coverImageUrl: null,
  gameName: plays[0]?.gameName ?? null,
  gameSlug: null,
  name: "Kanto",
  playLabels: plays.map((item) => item.name),
  plays,
  slug: "kanto",
});

describe("RegionTip", () => {
  it("counts a region's Plays and the games they are in", () => {
    const markup = renderToStaticMarkup(
      <RegionTip
        region={region([
          play("a", "Midgame Journey", "Yellow"),
          play("b", "Blank Slate", "Yellow"),
          play("c", "Early Journey", "Red"),
        ])}
      />,
    );

    expect(markup).toContain("3 Plays in 2 games");
    expect(markup).toContain("Midgame Journey");
    expect(markup).not.toContain("more");
  });

  it("says one Play in one game in the singular", () => {
    const markup = renderToStaticMarkup(
      <RegionTip region={region([play("a", "Late Journey", "Gold")])} />,
    );

    expect(markup).toContain("1 Play in 1 game");
  });

  it("lists four Plays, then how many more", () => {
    const markup = renderToStaticMarkup(
      <RegionTip
        region={region(
          ["a", "b", "c", "d", "e", "f"].map((id) =>
            play(id, `Play ${id}`, "Yellow"),
          ),
        )}
      />,
    );

    expect(markup.match(/<li/g)).toHaveLength(4);
    expect(markup).toContain("and 2 more");
    expect(markup).not.toContain("Play e");
  });
});
