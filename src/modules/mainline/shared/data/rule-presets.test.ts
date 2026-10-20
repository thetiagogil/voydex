import { describe, expect, it } from "vitest";

import { buildRulePresets, getPresetRulesToAdd } from "./rule-presets";

const nuzlocke = {
  description: "The classic.",
  id: "nuzlocke",
  name: "Nuzlocke",
  user_id: null,
};
const mine = { description: null, id: "mine", name: "A run", user_id: "u" };
const empty = { description: null, id: "empty", name: "Empty", user_id: "u" };
const links = [
  { challenge_rule_id: "faint", rule_set_id: "nuzlocke", sort_order: 2 },
  { challenge_rule_id: "catch", rule_set_id: "nuzlocke", sort_order: 1 },
  { challenge_rule_id: "theirs", rule_set_id: "empty", sort_order: 1 },
  { challenge_rule_id: "catch", rule_set_id: "mine", sort_order: 1 },
];

describe("buildRulePresets", () => {
  it("orders each preset's rules, Voydex's presets first", () => {
    expect(
      buildRulePresets(
        [mine, nuzlocke],
        links,
        new Set(["catch", "faint"]),
      ).map((preset) => [preset.id, preset.isBuiltIn, preset.ruleIds]),
    ).toEqual([
      ["nuzlocke", true, ["catch", "faint"]],
      ["mine", false, ["catch"]],
    ]);
  });

  it("leaves out rules you can't pick, and a preset left empty", () => {
    expect(
      buildRulePresets([empty], links, new Set(["catch"])).map(
        (preset) => preset.id,
      ),
    ).toEqual([]);
  });
});

describe("getPresetRulesToAdd", () => {
  it("adds only the rules the Play doesn't keep yet", () => {
    expect(
      getPresetRulesToAdd({ ruleIds: ["catch", "faint", "nick"] }, ["faint"]),
    ).toEqual(["catch", "nick"]);
  });
});
