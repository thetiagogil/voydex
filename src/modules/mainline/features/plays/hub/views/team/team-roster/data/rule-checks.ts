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
  ruleKind: CheckedRuleKind;
  ruleName: string;
  text: string;
};

/*
 * The earlier use the rule's scope counts, the closest first: the same form,
 * then the same species, then the same evolution family.
 */
const findReuse = (
  pokemon: RuleCheckPokemon,
  scope: ReuseScope,
  context: RuleCheckContext,
) => {
  const family = context.familyBySpecies[pokemon.speciesId];
  const sameForm = (used: UsedPokemon) => used.formId === pokemon.formId;
  const sameSpecies = (used: UsedPokemon) =>
    used.speciesId === pokemon.speciesId;
  const sameFamily = (used: UsedPokemon) =>
    family !== undefined && context.familyBySpecies[used.speciesId] === family;
  const counted =
    scope === "form"
      ? [sameForm]
      : scope === "species"
        ? [sameForm, sameSpecies]
        : [sameForm, sameSpecies, sameFamily];

  for (const matches of counted) {
    const used = context.usedElsewhere.find(matches);

    if (used) return used;
  }

  return undefined;
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
        ? `${pokemon.name} was already used in ${used.playName}.`
        : `${pokemon.name}'s evolution family was already used in ${used.playName} (${used.speciesName}).`;
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

    return text
      ? [{ ruleId: rule.id, ruleKind: rule.kind, ruleName: rule.name, text }]
      : [];
  });

/* One broken rule and what breaks it, one line per Pokémon. */
export type RuleBreak = {
  lines: { key: string; text: string }[];
  ruleId: string;
  ruleName: string;
};

/*
 * The team's warnings by rule, in the Library's order, each rule's lines in
 * the team's: what the Play header counts and its sheet lists.
 */
export const groupRuleBreaks = (
  warnings: (RuleWarning & { key: string })[],
): RuleBreak[] => {
  const breaks = new Map<string, RuleBreak>();
  const ordered = warnings.toSorted(
    (left, right) =>
      checkedRuleKinds.indexOf(left.ruleKind) -
      checkedRuleKinds.indexOf(right.ruleKind),
  );

  for (const warning of ordered) {
    const ruleBreak = breaks.get(warning.ruleId) ?? {
      lines: [],
      ruleId: warning.ruleId,
      ruleName: warning.ruleName,
    };

    ruleBreak.lines.push({ key: warning.key, text: warning.text });
    breaks.set(warning.ruleId, ruleBreak);
  }

  return [...breaks.values()];
};
