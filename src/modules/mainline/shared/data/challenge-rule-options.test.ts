import { describe, expect, it } from "vitest";

import {
  buildPlayRuleOverrides,
  clearMissingRuleTypes,
  describeRuleConfig,
  formatRuleLabel,
  getMissingRuleOption,
  getRuleOptionKeys,
  getRuleSelectionError,
  isSameRuleSelection,
  pickRuleChoicesByName,
  resolveRuleConfig,
  toChallengeRuleChoice,
  toRuleConfigOverride,
} from "./challenge-rule-options";

const monotype = { type_id: null };
const firstCatch = { shinies_always_catchable: false };
const typeNames = new Map([[3, "Water"]]);

describe("getRuleOptionKeys", () => {
  it("reads the options a rule offers from its config", () => {
    expect(getRuleOptionKeys(monotype)).toEqual(["type_id"]);
    expect(getRuleOptionKeys(firstCatch)).toEqual(["shinies_always_catchable"]);
  });

  it("reads No Pokémon reuse's scope", () => {
    expect(getRuleOptionKeys({ reuse_scope: "species" })).toEqual([
      "reuse_scope",
    ]);
    expect(
      resolveRuleConfig(
        { reuse_scope: "species" },
        { reuse_scope: "evolution_family" },
      ),
    ).toEqual({ reuse_scope: "evolution_family" });
    expect(
      resolveRuleConfig({ reuse_scope: "species" }, { reuse_scope: "colour" }),
    ).toEqual({});
  });

  it("offers nothing for a plain rule, an unknown key or a broken config", () => {
    expect(getRuleOptionKeys({})).toEqual([]);
    expect(getRuleOptionKeys({ grace_levels: 1 })).toEqual([]);
    expect(getRuleOptionKeys(null)).toEqual([]);
    expect(getRuleOptionKeys([1, 2])).toEqual([]);
  });
});

describe("resolveRuleConfig", () => {
  it("lays a Play's values over the rule's defaults", () => {
    expect(resolveRuleConfig(firstCatch, null)).toEqual({
      shinies_always_catchable: false,
    });
    expect(
      resolveRuleConfig(firstCatch, { shinies_always_catchable: true }),
    ).toEqual({ shinies_always_catchable: true });
    expect(resolveRuleConfig(monotype, { type_id: 3 })).toEqual({ type_id: 3 });
  });

  it("drops values of the wrong kind and options the rule lacks", () => {
    expect(resolveRuleConfig(monotype, { type_id: "water" })).toEqual({});
    expect(resolveRuleConfig(monotype, { type_id: 2.5 })).toEqual({});
    expect(resolveRuleConfig({}, { shinies_always_catchable: true })).toEqual(
      {},
    );
  });
});

describe("toRuleConfigOverride", () => {
  it("keeps only the options the rule offers", () => {
    expect(
      toRuleConfigOverride(["type_id"], {
        shinies_always_catchable: true,
        type_id: 3,
      }),
    ).toEqual({ type_id: 3 });
  });

  it("saves nothing for a rule without options", () => {
    expect(toRuleConfigOverride([], { type_id: 3 })).toBeNull();
    expect(toRuleConfigOverride(["type_id"], null)).toBeNull();
  });
});

describe("getMissingRuleOption", () => {
  it("waits on Monotype's type", () => {
    expect(getMissingRuleOption(["type_id"], null)).toBe("type_id");
    expect(getMissingRuleOption(["type_id"], { type_id: null })).toBe(
      "type_id",
    );
    expect(getMissingRuleOption(["type_id"], { type_id: 3 })).toBeNull();
  });

  it("never waits on the shiny option", () => {
    expect(getMissingRuleOption(["shinies_always_catchable"], null)).toBeNull();
  });
});

describe("describeRuleConfig", () => {
  it("names Monotype's type, or asks for one", () => {
    expect(describeRuleConfig(["type_id"], { type_id: 3 }, typeNames)).toBe(
      "Water",
    );
    expect(describeRuleConfig(["type_id"], { type_id: null }, typeNames)).toBe(
      "Pick a type",
    );
  });

  it("says what No Pokémon reuse counts, species by default", () => {
    expect(
      describeRuleConfig(
        ["reuse_scope"],
        { reuse_scope: "evolution_family" },
        typeNames,
      ),
    ).toBe("by evolution family");
    expect(describeRuleConfig(["reuse_scope"], null, typeNames)).toBe(
      "by species",
    );
  });

  it("says when shinies are the exception, and nothing otherwise", () => {
    expect(
      describeRuleConfig(
        ["shinies_always_catchable"],
        { shinies_always_catchable: true },
        typeNames,
      ),
    ).toBe("except shinies");
    expect(
      describeRuleConfig(
        ["shinies_always_catchable"],
        { shinies_always_catchable: false },
        typeNames,
      ),
    ).toBeNull();
    expect(describeRuleConfig([], null, typeNames)).toBeNull();
  });
});

describe("formatRuleLabel", () => {
  it("joins a rule's name and its options", () => {
    expect(formatRuleLabel("Monotype", "Water")).toBe("Monotype · Water");
    expect(formatRuleLabel("Level caps", null)).toBe("Level caps");
  });
});

describe("toChallengeRuleChoice", () => {
  it("reads a rule's options, defaults and owner", () => {
    expect(
      toChallengeRuleChoice({
        config: firstCatch,
        description: "One per area.",
        id: "catch",
        name: "First catch per area",
        user_id: null,
      }),
    ).toEqual({
      defaults: { shinies_always_catchable: false },
      description: "One per area.",
      id: "catch",
      isBuiltIn: true,
      name: "First catch per area",
      optionKeys: ["shinies_always_catchable"],
    });
    expect(
      toChallengeRuleChoice({
        config: {},
        description: null,
        id: "mine",
        name: "Mine",
        user_id: "user",
      }).isBuiltIn,
    ).toBe(false);
  });
});

describe("getRuleSelectionError", () => {
  const rules = [
    toChallengeRuleChoice({
      config: monotype,
      description: null,
      id: "mono",
      name: "Monotype",
      user_id: null,
    }),
  ];

  it("asks for Monotype's type before saving", () => {
    expect(
      getRuleSelectionError(rules, [
        { config: { type_id: null }, ruleId: "mono" },
      ]),
    ).toBe("Pick a type for Monotype.");
    expect(
      getRuleSelectionError(rules, [{ config: null, ruleId: "mono" }]),
    ).toBe("Pick a type for Monotype.");
  });

  it("lets a picked type, and unknown or plain rules, through", () => {
    expect(
      getRuleSelectionError(rules, [
        { config: { type_id: 3 }, ruleId: "mono" },
        { config: null, ruleId: "made-just-now" },
      ]),
    ).toBeNull();
  });
});

describe("isSameRuleSelection", () => {
  const mono = { config: { type_id: 3 }, ruleId: "mono" };
  const caps = { config: null, ruleId: "caps" };

  it("ignores order", () => {
    expect(isSameRuleSelection([mono, caps], [caps, mono])).toBe(true);
  });

  it("sees an added rule or a changed option", () => {
    expect(isSameRuleSelection([mono], [mono, caps])).toBe(false);
    expect(
      isSameRuleSelection([mono], [{ config: { type_id: 2 }, ruleId: "mono" }]),
    ).toBe(false);
  });

  it("sees a changed reuse scope", () => {
    expect(
      isSameRuleSelection(
        [{ config: { reuse_scope: "species" }, ruleId: "reuse" }],
        [{ config: { reuse_scope: "form" }, ruleId: "reuse" }],
      ),
    ).toBe(false);
  });

  it("reads a missing option as its default", () => {
    expect(
      isSameRuleSelection(
        [{ config: null, ruleId: "catch" }],
        [{ config: { shinies_always_catchable: false }, ruleId: "catch" }],
      ),
    ).toBe(true);
  });
});

describe("pickRuleChoicesByName", () => {
  const rule = (id: string, name: string, userId: string | null) =>
    toChallengeRuleChoice({
      config: {},
      description: null,
      id,
      name,
      user_id: userId,
    });
  const voydex = rule("voydex", "Level caps", null);
  const mine = rule("mine", "level caps ", "user");
  const other = rule("other", "Another rule", "user");

  it("shows each name once, preferring Voydex's, sorted by name", () => {
    expect(
      pickRuleChoicesByName([mine, other, voydex]).map((item) => item.id),
    ).toEqual(["other", "voydex"]);
  });

  it("keeps the one a Play already has", () => {
    expect(
      pickRuleChoicesByName([mine, voydex], ["mine"]).map((item) => item.id),
    ).toEqual(["mine"]);
  });
});

describe("buildPlayRuleOverrides", () => {
  const available = [
    { config: monotype, id: "mono", name: "Monotype" },
    { config: firstCatch, id: "catch", name: "First catch per area" },
    { config: {}, id: "caps", name: "Level caps" },
  ];

  it("keeps each rule once, with only the options it offers", () => {
    expect(
      buildPlayRuleOverrides(available, [
        { config: { type_id: 3 }, ruleId: "mono" },
        { config: { type_id: 3 }, ruleId: "mono" },
        { config: { shinies_always_catchable: true }, ruleId: "catch" },
        { config: { type_id: 3 }, ruleId: "caps" },
      ]),
    ).toEqual({
      rows: [
        { config: { type_id: 3 }, ruleId: "mono" },
        { config: { shinies_always_catchable: true }, ruleId: "catch" },
        { config: null, ruleId: "caps" },
      ],
      status: "success",
    });
  });

  it("refuses a rule you can't see and Monotype without its type", () => {
    expect(
      buildPlayRuleOverrides(available, [{ config: null, ruleId: "theirs" }]),
    ).toEqual({
      message: "One of those rules isn't available.",
      status: "error",
    });
    expect(
      buildPlayRuleOverrides(available, [{ config: null, ruleId: "mono" }]),
    ).toEqual({ message: "Pick a type for Monotype.", status: "error" });
  });
});

describe("clearMissingRuleTypes", () => {
  it("clears a type the new game doesn't have, and keeps the rest", () => {
    const fairy = { config: { type_id: 18 }, ruleId: "mono" };
    const water = { config: { type_id: 3 }, ruleId: "mono" };
    const shinies = {
      config: { shinies_always_catchable: true },
      ruleId: "catch",
    };

    /* Red's types stop before Fairy (18). */
    expect(clearMissingRuleTypes([fairy, shinies], [1, 2, 3])).toEqual([
      { config: { type_id: null }, ruleId: "mono" },
      shinies,
    ]);
    expect(clearMissingRuleTypes([water], [1, 2, 3])).toEqual([water]);
  });
});
