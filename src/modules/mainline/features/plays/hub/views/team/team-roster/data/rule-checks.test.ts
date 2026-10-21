import { describe, expect, it } from "vitest";

import type { MainlinePlayRuleRows } from "@/modules/mainline/features/plays/hub/types";

import {
  buildCheckedRules,
  checkPokemonRules,
  describeLevelCap,
  emptyRuleCheckContext,
  collectRuleBreaks,
  type CheckedRule,
  type RuleCheckContext,
  type RuleCheckPokemon,
} from "./rule-checks";

const water = 11;
const electric = 13;

const pikachu: RuleCheckPokemon = {
  formId: 25,
  isShiny: false,
  level: 20,
  name: "Pikachu",
  nickname: null,
  speciesId: 25,
  typeIds: [electric],
};

const withRules = (
  rules: CheckedRule[],
  context: Partial<RuleCheckContext> = {},
): RuleCheckContext => ({ ...emptyRuleCheckContext, ...context, rules });

const ruleRow = (
  slug: string,
  config: MainlinePlayRuleRows["rules"][number]["config"] = {},
  userId: string | null = null,
): MainlinePlayRuleRows["rules"][number] => ({
  config,
  created_at: "2026-10-01T00:00:00Z",
  description: null,
  id: `rule-${slug}-${userId ?? "voydex"}`,
  name: slug,
  rule_type_id: 3,
  slug,
  updated_at: "2026-10-01T00:00:00Z",
  user_id: userId,
});

const link = (
  ruleId: string,
  override: MainlinePlayRuleRows["links"][number]["config_override"] = null,
): MainlinePlayRuleRows["links"][number] => ({
  challenge_rule_id: ruleId,
  config_override: override,
  created_at: "2026-10-01T00:00:00Z",
  play_id: "play",
});

describe("buildCheckedRules", () => {
  it("keeps Voydex's checkable rules in the Library's order, with their options", () => {
    const monotype = ruleRow("monotype", { type_id: null });
    const reuse = ruleRow("no_pokemon_reuse", { reuse_scope: "form" });
    const nickname = ruleRow("nickname_everything");

    expect(
      buildCheckedRules({
        links: [
          link(reuse.id, { reuse_scope: "species" }),
          link(monotype.id, { type_id: water }),
          link(nickname.id),
        ],
        rules: [monotype, reuse, nickname],
        types: [{ id: water, name: "Water" }],
      }),
    ).toEqual([
      {
        id: nickname.id,
        kind: "nickname_everything",
        name: "nickname_everything",
      },
      {
        id: monotype.id,
        kind: "monotype",
        name: "monotype",
        typeId: water,
        typeName: "Water",
      },
      {
        id: reuse.id,
        kind: "no_pokemon_reuse",
        name: "no_pokemon_reuse",
        scope: "species",
      },
    ]);
  });

  it("leaves out a rule of yours, even one named like Voydex's, and rules it can't see", () => {
    const yours = ruleRow("monotype", { type_id: water }, "trainer");
    const noItems = ruleRow("no_battle_items");

    expect(
      buildCheckedRules({
        links: [link(yours.id, { type_id: water }), link(noItems.id)],
        rules: [yours, noItems],
        types: [{ id: water, name: "Water" }],
      }),
    ).toEqual([]);
  });

  it("reads reuse by exact form when the Play sets no scope", () => {
    const reuse = ruleRow("no_pokemon_reuse", { reuse_scope: "form" });

    expect(
      buildCheckedRules({ links: [link(reuse.id)], rules: [reuse], types: [] }),
    ).toEqual([
      expect.objectContaining({ kind: "no_pokemon_reuse", scope: "form" }),
    ]);
  });
});

describe("checkPokemonRules", () => {
  it("says nothing without rules", () => {
    expect(checkPokemonRules(pikachu, emptyRuleCheckContext)).toEqual([]);
  });

  it("warns on a Pokémon outside Monotype's type, and not one that shares it", () => {
    const context = withRules([
      {
        id: "m",
        kind: "monotype",
        name: "Monotype",
        typeId: water,
        typeName: "Water",
      },
    ]);

    expect(checkPokemonRules(pikachu, context)).toEqual([
      {
        ruleId: "m",
        ruleKind: "monotype",
        ruleName: "Monotype",
        text: "Pikachu isn't Water type.",
      },
    ]);
    expect(
      checkPokemonRules({ ...pikachu, typeIds: [electric, water] }, context),
    ).toEqual([]);
    expect(checkPokemonRules({ ...pikachu, typeIds: [] }, context)).toEqual([]);
  });

  it("warns on a Pokémon with no nickname, or only spaces", () => {
    const context = withRules([
      { id: "n", kind: "nickname_everything", name: "Nickname everything" },
    ]);

    expect(checkPokemonRules({ ...pikachu, nickname: "  " }, context)).toEqual([
      expect.objectContaining({ text: "Pikachu has no nickname." }),
    ]);
    expect(
      checkPokemonRules(
        { ...pikachu, name: "Sparky", nickname: "Sparky" },
        context,
      ),
    ).toEqual([]);
  });

  it("warns on a Pokémon known not to be shiny, never on one not known yet", () => {
    const context = withRules([
      { id: "s", kind: "shiny_only", name: "Shiny only" },
    ]);

    expect(checkPokemonRules(pikachu, context)).toEqual([
      expect.objectContaining({ text: "Pikachu isn't shiny." }),
    ]);
    expect(checkPokemonRules({ ...pikachu, isShiny: null }, context)).toEqual(
      [],
    );
    expect(checkPokemonRules({ ...pikachu, isShiny: true }, context)).toEqual(
      [],
    );
  });

  it("names a Legendary or Mythical Pokémon as such", () => {
    const context = withRules(
      [{ id: "l", kind: "no_legendaries", name: "No legendaries" }],
      { legendaryBySpecies: { 150: "Legendary", 151: "Mythical" } },
    );

    expect(
      checkPokemonRules(
        { ...pikachu, name: "Mewtwo", speciesId: 150 },
        context,
      ),
    ).toEqual([
      expect.objectContaining({ text: "Mewtwo is a Legendary Pokémon." }),
    ]);
    expect(
      checkPokemonRules({ ...pikachu, name: "Mew", speciesId: 151 }, context),
    ).toEqual([
      expect.objectContaining({ text: "Mew is a Mythical Pokémon." }),
    ]);
    expect(checkPokemonRules(pikachu, context)).toEqual([]);
  });

  describe("No Pokémon reuse", () => {
    const alolanRaichu = { formId: 10100, speciesId: 26 };
    const used = {
      familyBySpecies: { 25: 10, 26: 10, 172: 10 },
      usedElsewhere: [{ ...alolanRaichu, playId: "moon" }],
    };
    const reuse = (scope: "evolution_family" | "form" | "species") =>
      withRules(
        [
          {
            id: "r",
            kind: "no_pokemon_reuse",
            name: "No Pokémon reuse",
            scope,
          },
        ],
        used,
      );

    it("by exact form, only the same form counts", () => {
      expect(
        checkPokemonRules(
          { ...pikachu, ...alolanRaichu, name: "Raichu" },
          reuse("form"),
        ),
      ).toEqual([
        expect.objectContaining({
          reuse: { family: false, name: "Raichu", playIds: ["moon"] },
          text: "Raichu was already used in",
        }),
      ]);
      expect(
        checkPokemonRules(
          { ...pikachu, formId: 26, name: "Raichu", speciesId: 26 },
          reuse("form"),
        ),
      ).toEqual([]);
    });

    it("by species, any form of it counts", () => {
      expect(
        checkPokemonRules(
          { ...pikachu, formId: 26, name: "Raichu", speciesId: 26 },
          reuse("species"),
        ),
      ).toEqual([
        expect.objectContaining({ text: "Raichu was already used in" }),
      ]);
      expect(checkPokemonRules(pikachu, reuse("species"))).toEqual([]);
    });

    it("by evolution family, the whole line counts", () => {
      expect(checkPokemonRules(pikachu, reuse("evolution_family"))).toEqual([
        expect.objectContaining({
          reuse: { family: true, name: "Pikachu", playIds: ["moon"] },
          text: "Pikachu's evolution family was already used in",
        }),
      ]);
      expect(
        checkPokemonRules(
          { ...pikachu, formId: 1, name: "Bulbasaur", speciesId: 1 },
          reuse("evolution_family"),
        ),
      ).toEqual([]);
    });

    it("counts every earlier Play once, and says it was used when its species was", () => {
      const context = withRules(
        [
          {
            id: "r",
            kind: "no_pokemon_reuse",
            name: "No Pokémon reuse",
            scope: "evolution_family",
          },
        ],
        {
          ...used,
          usedElsewhere: [
            ...used.usedElsewhere,
            { formId: 25, playId: "red", speciesId: 25 },
            { formId: 26, playId: "red", speciesId: 26 },
          ],
        },
      );

      expect(
        checkPokemonRules(
          { ...pikachu, name: "Sparky", nickname: "Sparky" },
          context,
        ),
      ).toEqual([
        expect.objectContaining({
          reuse: { family: false, name: "Sparky", playIds: ["moon", "red"] },
          text: "Sparky was already used in",
        }),
      ]);
    });
  });

  it("lists every rule a Pokémon breaks, in the rules' order", () => {
    const context = withRules([
      { id: "s", kind: "shiny_only", name: "Shiny only" },
      { id: "n", kind: "nickname_everything", name: "Nickname everything" },
    ]);

    expect(
      checkPokemonRules(pikachu, context).map((warning) => warning.ruleId),
    ).toEqual(["s", "n"]);
  });
});

describe("Level caps", () => {
  const rules: CheckedRule[] = [
    { id: "caps", kind: "level_caps", name: "Level caps" },
  ];
  const misty = { kind: "Gym Leader", name: "Misty" };
  const capped = withRules(rules, {
    levelCap: { battle: misty, level: 21, status: "capped" },
  });

  it("is checked, last in the Library's order", () => {
    const caps = ruleRow("level_caps");
    const shiny = ruleRow("shiny_only");

    expect(
      buildCheckedRules({
        links: [link(caps.id), link(shiny.id)],
        rules: [caps, shiny],
        types: [],
      }).map((rule) => rule.kind),
    ).toEqual(["shiny_only", "level_caps"]);
  });

  it("warns above the cap with the cap and the battle it comes from", () => {
    expect(checkPokemonRules({ ...pikachu, level: 25 }, capped)).toEqual([
      {
        ruleId: "caps",
        ruleKind: "level_caps",
        ruleName: "Level caps",
        text: "Pikachu is Lv. 25, over the Lv. 21 cap from Gym Leader Misty.",
      },
    ]);
  });

  it("lets a Pokémon at or under the cap, or without a level, pass", () => {
    expect(checkPokemonRules({ ...pikachu, level: 21 }, capped)).toEqual([]);
    expect(checkPokemonRules({ ...pikachu, level: null }, capped)).toEqual([]);
  });

  it("doesn't warn without a cap", () => {
    const high = { ...pikachu, level: 99 };

    expect(
      checkPokemonRules(
        high,
        withRules(rules, { levelCap: { battle: misty, status: "no-team" } }),
      ),
    ).toEqual([]);
    expect(
      checkPokemonRules(
        high,
        withRules(rules, { levelCap: { status: "no-battle" } }),
      ),
    ).toEqual([]);
  });

  it("says the cap, or why there's none", () => {
    expect(
      describeLevelCap({ battle: misty, level: 21, status: "capped" }),
    ).toBe(
      "Lv. 21, the highest level on Gym Leader Misty's team, the next leader you face.",
    );
    expect(describeLevelCap({ battle: misty, status: "no-team" })).toBe(
      "No cap for now: Voydex doesn't have Gym Leader Misty's team yet, so levels aren't checked.",
    );
    expect(describeLevelCap({ status: "no-battle" })).toMatch(
      /^No cap: there's no Gym Leader, Kahuna, Elite Four or Champion battle ahead/,
    );
  });
});

describe("collectRuleBreaks", () => {
  const breaker = (
    name: string,
    warnings: { kind: "monotype" | "shiny_only"; text: string }[],
  ) => ({
    imageUrl: null,
    name,
    playPokemonId: name,
    typeSlug: null,
    warnings: warnings.map(({ kind, text }) => ({
      key: `${name}:${kind}`,
      ruleId: kind,
      ruleKind: kind,
      ruleName: kind === "monotype" ? "Monotype" : "Shiny only",
      text,
    })),
  });

  it("names each broken rule once, in the Library's order", () => {
    const pokemon = [
      breaker("Pikachu", [
        { kind: "monotype", text: "Pikachu isn't Water type." },
      ]),
      breaker("Eevee", [
        { kind: "shiny_only", text: "Eevee isn't shiny." },
        { kind: "monotype", text: "Eevee isn't Water type." },
      ]),
    ];

    expect(collectRuleBreaks(pokemon)).toEqual({
      pokemon,
      ruleNames: ["Shiny only", "Monotype"],
    });
  });

  it("says nothing without Pokémon that break a rule", () => {
    expect(collectRuleBreaks([])).toEqual({ pokemon: [], ruleNames: [] });
  });
});
