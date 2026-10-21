import type { MainlinePlayRuleRows } from "@/modules/mainline/features/plays/hub/types";
import {
  defaultReuseScope,
  resolveRuleConfig,
  type ReuseScope,
} from "@/modules/mainline/shared/data/challenge-rule-options";

/*
 * Soft rule checks: what a Play's own rules say about a Pokémon on its team.
 * They warn and never block. Only Voydex's rules that Voydex can see are
 * checked; the rest (and every rule of yours) stay labels.
 */
export type CheckedRule =
  | {
      id: string;
      kind: "monotype";
      name: string;
      typeId: number;
      typeName: string;
    }
  | { id: string; kind: "nickname_everything"; name: string }
  | { id: string; kind: "no_legendaries"; name: string }
  | { id: string; kind: "no_pokemon_reuse"; name: string; scope: ReuseScope }
  | { id: string; kind: "shiny_only"; name: string };

export type CheckedRuleKind = CheckedRule["kind"];

/* The rules Voydex checks, in the order the Library lists them. */
export const checkedRuleKinds: readonly CheckedRuleKind[] = [
  "shiny_only",
  "nickname_everything",
  "monotype",
  "no_legendaries",
  "no_pokemon_reuse",
];

const isCheckedRuleKind = (slug: string): slug is CheckedRuleKind =>
  checkedRuleKinds.some((kind) => kind === slug);

/*
 * The Play's rules Voydex checks, in the Library's order (a Play takes its
 * rules at once, so it keeps no order of its own), each with its options:
 * only Voydex's own, matched by slug, never a rule of yours.
 */
export const buildCheckedRules = (
  rows: MainlinePlayRuleRows,
): CheckedRule[] => {
  const ruleById = new Map(rows.rules.map((rule) => [rule.id, rule]));
  const typeNameById = new Map(rows.types.map((type) => [type.id, type.name]));

  const rules = rows.links.flatMap((link): CheckedRule[] => {
    const rule = ruleById.get(link.challenge_rule_id);

    if (!rule || rule.user_id !== null || !isCheckedRuleKind(rule.slug)) {
      return [];
    }

    const base = { id: rule.id, name: rule.name };
    const config = resolveRuleConfig(rule.config, link.config_override);

    switch (rule.slug) {
      case "monotype": {
        const typeId = config.type_id;
        const typeName = typeId ? typeNameById.get(typeId) : undefined;

        return typeId && typeName
          ? [{ ...base, kind: "monotype", typeId, typeName }]
          : [];
      }
      case "no_pokemon_reuse":
        return [
          {
            ...base,
            kind: "no_pokemon_reuse",
            scope: config.reuse_scope ?? defaultReuseScope,
          },
        ];
      default:
        return [{ ...base, kind: rule.slug }];
    }
  });

  return rules.toSorted(
    (left, right) =>
      checkedRuleKinds.indexOf(left.kind) -
      checkedRuleKinds.indexOf(right.kind),
  );
};

/* A Pokémon from an earlier Play, for No Pokémon reuse. */
export type UsedPokemon = {
  formId: number;
  playName: string;
  speciesId: number;
  speciesName: string;
};

/* What the checks read besides the Pokémon itself. */
export type RuleCheckContext = {
  /* Each species in an evolution family an earlier Play used, by family. */
  familyBySpecies: Record<number, number>;
  /* Legendary and Mythical species, by id. */
  legendaryBySpecies: Record<number, "Legendary" | "Mythical">;
  rules: CheckedRule[];
  usedElsewhere: UsedPokemon[];
};

export const emptyRuleCheckContext: RuleCheckContext = {
  familyBySpecies: {},
  legendaryBySpecies: {},
  rules: [],
  usedElsewhere: [],
};

/* The Pokémon a rule is checked against. */
export type RuleCheckPokemon = {
  formId: number;
  /* What the note calls it: its nickname, else its species. */
  name: string;
  nickname: string | null;
  /* Null while it isn't known yet, such as before it's added. */
  isShiny: boolean | null;
  speciesId: number;
  /* Its types in the Play's game; none when they aren't known. */
  typeIds: number[];
};

export type RuleWarning = {
  ruleId: string;
  ruleName: string;
  text: string;
};

const findReuse = (
  pokemon: RuleCheckPokemon,
  scope: ReuseScope,
  context: RuleCheckContext,
) => {
  const family = context.familyBySpecies[pokemon.speciesId];

  return context.usedElsewhere.find((used) =>
    scope === "form"
      ? used.formId === pokemon.formId
      : scope === "species"
        ? used.speciesId === pokemon.speciesId
        : family !== undefined &&
          context.familyBySpecies[used.speciesId] === family,
  );
};

const checkRule = (
  rule: CheckedRule,
  pokemon: RuleCheckPokemon,
  context: RuleCheckContext,
): string | null => {
  switch (rule.kind) {
    case "monotype":
      return pokemon.typeIds.length && !pokemon.typeIds.includes(rule.typeId)
        ? `${pokemon.name} isn't ${rule.typeName} type.`
        : null;
    case "nickname_everything":
      return pokemon.nickname?.trim()
        ? null
        : `${pokemon.name} has no nickname.`;
    case "no_legendaries": {
      const kind = context.legendaryBySpecies[pokemon.speciesId];

      return kind ? `${pokemon.name} is a ${kind} Pokémon.` : null;
    }
    case "no_pokemon_reuse": {
      const used = findReuse(pokemon, rule.scope, context);

      if (!used) return null;

      return used.speciesId === pokemon.speciesId
        ? `You used ${used.speciesName} in ${used.playName}.`
        : `You used ${used.speciesName}, of the same evolution family, in ${used.playName}.`;
    }
    case "shiny_only":
      return pokemon.isShiny === false ? `${pokemon.name} isn't shiny.` : null;
  }
};

/* What the Play's rules say about one Pokémon, in the rules' order. */
export const checkPokemonRules = (
  pokemon: RuleCheckPokemon,
  context: RuleCheckContext,
): RuleWarning[] =>
  context.rules.flatMap((rule) => {
    const text = checkRule(rule, pokemon, context);

    return text ? [{ ruleId: rule.id, ruleName: rule.name, text }] : [];
  });
