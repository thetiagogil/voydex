import { describe, expect, it } from "vitest";

import type { MainlinePlayRuleRows } from "@/modules/mainline/features/plays/hub/types";

import {
  buildCheckedRules,
  checkPokemonRules,
  emptyRuleCheckContext,
  type CheckedRule,
  type RuleCheckContext,
  type RuleCheckPokemon,
} from "./rule-checks";

const water = 11;
const electric = 13;

const pikachu: RuleCheckPokemon = {
  formId: 25,
  isShiny: false,
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
    const levelCaps = ruleRow("level_caps");

    expect(
      buildCheckedRules({
        links: [link(yours.id, { type_id: water }), link(levelCaps.id)],
        rules: [yours, levelCaps],
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
      { ruleId: "m", ruleName: "Monotype", text: "Pikachu isn't Water type." },
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
      usedElsewhere: [
        { ...alolanRaichu, playName: "Moon run", speciesName: "Raichu" },
      ],
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
          text: "Raichu was already used in Moon run.",
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
        expect.objectContaining({
          text: "Raichu was already used in Moon run.",
        }),
      ]);
      expect(checkPokemonRules(pikachu, reuse("species"))).toEqual([]);
    });

    it("by evolution family, the whole line counts", () => {
      expect(checkPokemonRules(pikachu, reuse("evolution_family"))).toEqual([
        expect.objectContaining({
          text: "Pikachu's evolution family was already used in Moon run (Raichu).",
        }),
      ]);
      expect(
        checkPokemonRules(
          { ...pikachu, formId: 1, name: "Bulbasaur", speciesId: 1 },
          reuse("evolution_family"),
        ),
      ).toEqual([]);
    });

    it("names the closest earlier use: its species before its family", () => {
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
            {
              formId: 25,
              playName: "Red run",
              speciesId: 25,
              speciesName: "Pikachu",
            },
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
          text: "Sparky was already used in Red run.",
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
