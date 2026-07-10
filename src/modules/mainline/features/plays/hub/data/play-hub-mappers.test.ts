import { describe, expect, it } from "vitest";

import { buildMainlinePlayRules } from "@/modules/mainline/features/plays/hub/data/play-hub-mappers";
import type {
  MainlineChallengeRule,
  MainlinePlayChallengeRuleLink,
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
