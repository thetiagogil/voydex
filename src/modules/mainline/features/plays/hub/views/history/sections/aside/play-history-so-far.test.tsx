import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { MainlinePlayHistoryData } from "@/modules/mainline/features/plays/hub/types";

import { PlayHistorySoFar } from "./play-history-so-far";

const badgeCase: NonNullable<MainlinePlayHistoryData["badgeCase"]> = {
  earnedGymCount: 1,
  gymCount: 2,
  lastEarnedAt: "2025-02-14",
  nextName: "Cascade Badge",
  stamps: [
    {
      badgeType: "rock",
      completedAt: "2025-02-14",
      kind: "gym",
      label: "Boulder",
      milestoneId: 60003,
      milestoneTypeSlug: "gym",
      name: "Boulder Badge",
      state: "earned",
    },
    {
      badgeType: "water",
      completedAt: null,
      kind: "gym",
      label: "Cascade",
      milestoneId: 60005,
      milestoneTypeSlug: "gym",
      name: "Cascade Badge",
      state: "next",
    },
  ],
};

const member = {
  level: 18,
  nickname: "Buddy",
  play_pokemon_id: "pokemon-1",
  primaryType: { id: 10, name: "Fire", slug: "fire" },
  secondaryType: null,
  slot: 1,
  species_name: "Charmeleon",
} as unknown as MainlinePlayHistoryData["team"][number];

describe("PlayHistorySoFar", () => {
  const markup = renderToStaticMarkup(
    <PlayHistorySoFar
      badgeCase={badgeCase}
      startedOn="2025-02-12"
      team={[member]}
    />,
  );

  it("says when the Play started and how its badges stand", () => {
    expect(markup).toContain("Started Feb 12, 2025");
    expect(markup).toContain("1 of 2");
    expect(markup).toContain("Boulder Badge, earned");
    expect(markup).toContain("Cascade Badge, next");
  });

  it("shows the team now as stickers", () => {
    expect(markup).toContain('aria-label="Your team"');
    expect(markup).toContain("Buddy");
  });

  it("leaves badges and the team out where there are none", () => {
    const bare = renderToStaticMarkup(
      <PlayHistorySoFar badgeCase={null} startedOn={null} team={[]} />,
    );

    expect(bare).toContain("Start day not set");
    expect(bare).not.toContain("Badges");
    expect(bare).not.toContain("Your team");
  });
});
