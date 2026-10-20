import { describe, expect, it } from "vitest";

import {
  getMainlinePlayMarkedPath,
  getMainlinePlayNavigationState,
} from "@/modules/mainline/features/plays/hub/shell/mainline-play-navigation-model";

const playId = "00000000-0000-4000-8000-000000000001";

describe("getMainlinePlayNavigationState", () => {
  it.each([
    [
      `/mainline/plays/${playId}`,
      {
        activeProgressView: null,
        activeSection: "overview",
        activeTeamView: null,
      },
    ],
    [
      `/mainline/plays/${playId}/team`,
      {
        activeProgressView: null,
        activeSection: "team",
        activeTeamView: "roster",
      },
    ],
    [
      `/mainline/plays/${playId}/team/plan`,
      {
        activeProgressView: null,
        activeSection: "team",
        activeTeamView: "plan",
      },
    ],
    [
      `/mainline/plays/${playId}/team/analysis`,
      {
        activeProgressView: null,
        activeSection: "team",
        activeTeamView: "analysis",
      },
    ],
    [
      `/mainline/plays/${playId}/progress`,
      {
        activeProgressView: "story",
        activeSection: "progress",
        activeTeamView: null,
      },
    ],
    [
      `/mainline/plays/${playId}/progress/story`,
      {
        activeProgressView: "story",
        activeSection: "progress",
        activeTeamView: null,
      },
    ],
    [
      `/mainline/plays/${playId}/progress/pokedex`,
      {
        activeProgressView: "pokedex",
        activeSection: "progress",
        activeTeamView: null,
      },
    ],
    [
      `/mainline/plays/${playId}/progress/collectibles`,
      {
        activeProgressView: "collectibles",
        activeSection: "progress",
        activeTeamView: null,
      },
    ],
    [
      `/mainline/plays/${playId}/history`,
      {
        activeProgressView: null,
        activeSection: "history",
        activeTeamView: null,
      },
    ],
    [
      `/mainline/plays/${playId}/settings`,
      {
        activeProgressView: null,
        activeSection: "settings",
        activeTeamView: null,
      },
    ],
  ])("maps %s to its section and child view", (pathname, expected) => {
    expect(getMainlinePlayNavigationState(pathname, playId)).toEqual(expected);
  });

  it("keeps compound sections active for unknown child routes", () => {
    expect(
      getMainlinePlayNavigationState(
        `/mainline/plays/${playId}/team/future-view`,
        playId,
      ),
    ).toEqual({
      activeProgressView: null,
      activeSection: "team",
      activeTeamView: null,
    });
    expect(
      getMainlinePlayNavigationState(
        `/mainline/plays/${playId}/progress/future-view`,
        playId,
      ),
    ).toEqual({
      activeProgressView: null,
      activeSection: "progress",
      activeTeamView: null,
    });
  });

  it("accepts trailing slashes on route-backed views", () => {
    expect(
      getMainlinePlayNavigationState(
        `/mainline/plays/${playId}/team/plan/`,
        playId,
      ),
    ).toEqual({
      activeProgressView: null,
      activeSection: "team",
      activeTeamView: "plan",
    });
  });
});

describe("getMainlinePlayMarkedPath", () => {
  const analysis = `/mainline/plays/${playId}/team/analysis`;
  const story = `/mainline/plays/${playId}/progress/story`;

  it("lights the picked tab while its page is on the way", () => {
    expect(
      getMainlinePlayNavigationState(
        getMainlinePlayMarkedPath(analysis, { from: analysis, href: story }),
        playId,
      ),
    ).toEqual({
      activeProgressView: "story",
      activeSection: "progress",
      activeTeamView: null,
    });
  });

  it("follows the page once it arrives, and ignores a stale pick", () => {
    expect(getMainlinePlayMarkedPath(analysis, null)).toBe(analysis);
    expect(
      getMainlinePlayMarkedPath(analysis, { from: story, href: story }),
    ).toBe(analysis);
  });
});
