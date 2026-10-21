import { emptyRuleCheckContext } from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";
import { describe, expect, it } from "vitest";

import {
  buildMainlinePlayOverviewData,
  buildMainlinePlayRules,
  buildMainlinePlayShellData,
  buildMainlinePlayTeamRosterData,
  buildMainlinePlayTeamPlanData,
} from "@/modules/mainline/features/plays/hub/data/play-hub-mappers";
import type {
  MainlineChallengeRule,
  MainlinePlayGameContextRows,
  MainlinePlayChallengeRuleLink,
  MainlinePlayTeamMemberRow,
  MainlinePlayTeamPreviewRow,
} from "@/modules/mainline/features/plays/hub/types";

const buildRule = (
  id: string,
  name: string,
  config: MainlineChallengeRule["config"] = {},
) => {
  return {
    config,
    description: null,
    id,
    name,
  } as MainlineChallengeRule;
};

const buildRuleLink = (
  challengeRuleId: string,
  configOverride: MainlinePlayChallengeRuleLink["config_override"] = null,
) => {
  return {
    challenge_rule_id: challengeRuleId,
    config_override: configOverride,
  } as MainlinePlayChallengeRuleLink;
};

describe("buildMainlinePlayRules", () => {
  it("preserves the play-specific rule order", () => {
    const rules = buildMainlinePlayRules({
      links: [buildRuleLink("rule-b"), buildRuleLink("rule-a")],
      rules: [buildRule("rule-a", "First"), buildRule("rule-b", "Second")],
      types: [],
    });

    expect(rules.map((rule) => rule.id)).toEqual(["rule-b", "rule-a"]);
  });

  it("ignores links whose rule is unavailable", () => {
    const rules = buildMainlinePlayRules({
      links: [buildRuleLink("missing"), buildRuleLink("rule-a")],
      rules: [buildRule("rule-a", "Available")],
      types: [],
    });

    expect(rules.map((rule) => rule.id)).toEqual(["rule-a"]);
  });

  it("names each rule with this Play's options", () => {
    const rules = buildMainlinePlayRules({
      links: [
        buildRuleLink("mono", { type_id: 3 }),
        buildRuleLink("catch", { shinies_always_catchable: true }),
        buildRuleLink("caps"),
      ],
      rules: [
        buildRule("mono", "Monotype", { type_id: null }),
        buildRule("catch", "First catch per area", {
          shinies_always_catchable: false,
        }),
        buildRule("caps", "Level caps"),
      ],
      types: [{ id: 3, name: "Water" }],
    });

    expect(rules.map((rule) => rule.label)).toEqual([
      "Monotype · Water",
      "First catch per area · except shinies",
      "Level caps",
    ]);
  });
});

describe("buildMainlinePlayShellData rule notes", () => {
  const build = (
    ruleChecks: Parameters<typeof buildMainlinePlayShellData>[0]["ruleChecks"],
  ) =>
    buildMainlinePlayShellData({
      collectiblesAvailable: false,
      gameContext: { game: null, region: null } as MainlinePlayGameContextRows,
      play: {} as Parameters<typeof buildMainlinePlayShellData>[0]["play"],
      ruleChecks,
      ruleRows: { links: [], rules: [], types: [] },
      tags: [],
      teamRows: null,
    }).ruleNotes;

  it("puts Level caps' cap beside its rule", () => {
    expect(
      build({
        ...emptyRuleCheckContext,
        levelCap: {
          battle: { kind: "Gym Leader", name: "Brock" },
          level: 14,
          status: "capped",
        },
        rules: [{ id: "caps", kind: "level_caps", name: "Level caps" }],
      }),
    ).toEqual({
      caps: "Lv. 14, the highest level on Gym Leader Brock's team, the next leader you face.",
    });
  });

  it("has nothing to say without Level caps", () => {
    expect(build(emptyRuleCheckContext)).toEqual({});
  });
});

describe("Play page data mappers", () => {
  it("maps the members loaded for the Overview team preview", () => {
    const activeMember = {
      play_pokemon_id: "active-member",
      roster_state_slug: "active",
    } as MainlinePlayTeamPreviewRow;
    const data = buildMainlinePlayOverviewData({
      milestoneRows: { categories: [], milestones: [], types: [] },
      overview: null,
      partnerRows: null,
      play: {} as Parameters<typeof buildMainlinePlayOverviewData>[0]["play"],
      teamPreviewRows: {
        attributes: [],
        members: [activeMember],
        types: [],
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

    const data = buildMainlinePlayTeamRosterData({
      play: {} as Parameters<typeof buildMainlinePlayTeamRosterData>[0]["play"],
      ruleChecks: emptyRuleCheckContext,
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
    });

    expect(data.roster.map((member) => member.play_pokemon_id)).toEqual([
      "active-member",
      "reserve-member",
    ]);
  });

  it("builds the Team Plan route without Team Roster timeline data", () => {
    const data = buildMainlinePlayTeamPlanData({
      play: {} as Parameters<typeof buildMainlinePlayTeamPlanData>[0]["play"],
      teamPlanRows: { attributes: [], rows: [], types: [] },
      teamRows: {
        abilityAttributes: [],
        attributes: [],
        members: [],
        moveAttributes: [],
        natures: [],
        types: [],
        validBallItemIds: [],
        versionGroupId: null,
        versionGroups: [],
      },
    });

    expect(data).toEqual({
      followablePlans: [],
      teamPlan: null,
      versionGroupSlug: null,
    });
    expect(data).not.toHaveProperty("teamTimelinePreview");
  });
});

describe("buildMainlinePlayOverviewData trophies", () => {
  it("marks the League and trials gold, as History does, and not a story step", () => {
    const row = (milestone_id: number, milestone_type_slug: string) =>
      ({
        category_id: 1,
        milestone_id,
        milestone_type_slug,
        sort_order: milestone_id,
      }) as Parameters<
        typeof buildMainlinePlayOverviewData
      >[0]["milestoneRows"]["milestones"][number];

    const data = buildMainlinePlayOverviewData({
      milestoneRows: {
        categories: [],
        milestones: [
          row(1, "story"),
          row(2, "gym"),
          row(3, "elite-four"),
          row(4, "trial"),
          row(5, "hall-of-fame"),
        ],
        types: [],
      },
      overview: null,
      partnerRows: null,
      play: {} as Parameters<typeof buildMainlinePlayOverviewData>[0]["play"],
      teamPreviewRows: { attributes: [], members: [], types: [] },
      timelinePreview: [],
    });

    expect(data.trophyMilestoneIds).toEqual([3, 4, 5]);
  });
});
