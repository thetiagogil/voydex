import { describe, expect, it } from "vitest";

import {
  buildMainlinePlayOverviewData,
  buildMainlinePlayRules,
  buildMainlinePlayTeamData,
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

describe("Play page data mappers", () => {
  it("limits the Overview team preview to Active members", () => {
    const activeMember = {
      play_pokemon_id: "active-member",
      roster_state_slug: "active",
    } as MainlinePlayTeamMemberRow;
    const reserveMember = {
      play_pokemon_id: "reserve-member",
      roster_state_slug: "reserve",
    } as MainlinePlayTeamMemberRow;

    const data = buildMainlinePlayOverviewData({
      milestones: {
        lastCompletedMilestone: null,
        nextMilestone: null,
      },
      overview: null,
      play: {} as Parameters<typeof buildMainlinePlayOverviewData>[0]["play"],
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
      timelinePreview: [],
    });

    expect(data.teamPreview.map((member) => member.play_pokemon_id)).toEqual([
      "active-member",
    ]);
  });

  it("keeps Active and Reserve members in Team", () => {
    const activeMember = {
      play_pokemon_id: "active-member",
      roster_state_slug: "active",
    } as MainlinePlayTeamMemberRow;
    const reserveMember = {
      play_pokemon_id: "reserve-member",
      roster_state_slug: "reserve",
    } as MainlinePlayTeamMemberRow;

    const data = buildMainlinePlayTeamData({
      play: {} as Parameters<typeof buildMainlinePlayTeamData>[0]["play"],
      teamPlanRows: { attributes: [], rows: [], types: [] },
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
      teamTimelinePreview: [],
    });

    expect(data.roster.map((member) => member.play_pokemon_id)).toEqual([
      "active-member",
      "reserve-member",
    ]);
  });
});
