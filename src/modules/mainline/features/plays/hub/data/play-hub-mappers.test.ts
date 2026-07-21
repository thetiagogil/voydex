import { describe, expect, it } from "vitest";

import {
  buildMainlinePlayHubData,
  buildMainlinePlayRules,
} from "@/modules/mainline/features/plays/hub/data/play-hub-mappers";
import type {
  MainlineChallengeRule,
  MainlinePlayChallengeRuleLink,
  MainlinePlayTeamMemberRow,
} from "@/modules/mainline/features/plays/hub/types";

const buildRule = (id: string, name: string) => {
  return {
    id,
    name,
  } as MainlineChallengeRule;
};

const buildRuleLink = (challengeRuleId: string) => {
  return {
    challenge_rule_id: challengeRuleId,
  } as MainlinePlayChallengeRuleLink;
};

describe("buildMainlinePlayRules", () => {
  it("preserves the play-specific rule order", () => {
    const rules = buildMainlinePlayRules({
      links: [buildRuleLink("rule-b"), buildRuleLink("rule-a")],
      rules: [buildRule("rule-a", "First"), buildRule("rule-b", "Second")],
    });

    expect(rules.map((rule) => rule.id)).toEqual(["rule-b", "rule-a"]);
  });

  it("ignores links whose rule is unavailable", () => {
    const rules = buildMainlinePlayRules({
      links: [buildRuleLink("missing"), buildRuleLink("rule-a")],
      rules: [buildRule("rule-a", "Available")],
    });

    expect(rules.map((rule) => rule.id)).toEqual(["rule-a"]);
  });
});

describe("buildMainlinePlayHubData", () => {
  it("keeps reserve members in Team while limiting Overview to Active", () => {
    const activeMember = {
      play_pokemon_id: "active-member",
      roster_state_slug: "active",
    } as MainlinePlayTeamMemberRow;
    const reserveMember = {
      play_pokemon_id: "reserve-member",
      roster_state_slug: "reserve",
    } as MainlinePlayTeamMemberRow;

    const data = buildMainlinePlayHubData({
      gameContext: { game: null, region: null },
      milestones: {
        lastCompletedMilestone: null,
        nextMilestone: null,
      },
      overview: null,
      play: {} as Parameters<typeof buildMainlinePlayHubData>[0]["play"],
      ruleRows: { links: [], rules: [] },
      teamRows: {
        abilityAttributes: [],
        attributes: [],
        members: [activeMember, reserveMember],
        moveAttributes: [],
        natures: [],
        types: [],
        validBallItemIds: [],
        versionGroupId: null,
        versionGroups: [],
      },
      teamPlanRows: [],
      teamTimelinePreview: [],
      timelinePreview: [],
    });

    expect(data.roster.map((member) => member.play_pokemon_id)).toEqual([
      "active-member",
      "reserve-member",
    ]);
    expect(data.teamPreview.map((member) => member.play_pokemon_id)).toEqual([
      "active-member",
    ]);
  });
});
