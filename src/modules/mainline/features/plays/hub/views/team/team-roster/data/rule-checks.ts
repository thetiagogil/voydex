import type {
  MainlinePlayCapBattle,
  MainlinePlayLevelCap,
  MainlinePlayRuleRows,
} from "@/modules/mainline/features/plays/hub/types";
import {
  defaultReuseScope,
  resolveRuleConfig,
  type ReuseScope,
} from "@/modules/mainline/shared/data/challenge-rule-options";
import type { LegendaryRarity } from "@/modules/reference/features/pokemon/types";

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
  | { id: string; kind: "level_caps"; name: string }
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
  "level_caps",
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
  playId: string;
  speciesId: number;
};

/* What the checks read besides the Pokémon itself. */
export type RuleCheckContext = {
  /* Each species in an evolution family an earlier Play used, by family. */
  familyBySpecies: Record<number, number>;
  /* Legendary and Mythical species, by id. */
  legendaryBySpecies: Record<number, LegendaryRarity>;
  /* Level caps' cap now; null when the Play doesn't use the rule. */
  levelCap: MainlinePlayLevelCap | null;
  rules: CheckedRule[];
  usedElsewhere: UsedPokemon[];
};

export const emptyRuleCheckContext: RuleCheckContext = {
  familyBySpecies: {},
  legendaryBySpecies: {},
  levelCap: null,
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
  /* Null when it isn't recorded. */
  level: number | null;
  speciesId: number;
  /* Its types in the Play's game; none when they aren't known. */
  typeIds: number[];
};

/*
 * No Pokémon reuse's earlier Plays: the warning's text ends where a link to
 * them goes ("…was already used in" 2 other Plays).
 */
export type RuleWarningReuse = {
  /* Only its evolution family was used, not it. */
  family: boolean;
  /* Whose use it is, as the text calls it. */
  name: string;
  playIds: string[];
};

export type RuleWarning = {
  reuse?: RuleWarningReuse;
  ruleId: string;
  ruleKind: CheckedRuleKind;
  ruleName: string;
  text: string;
};

/*
 * The earlier uses the rule's scope counts: the same form, the same species
 * or the same evolution family.
 */
const findReuse = (
  pokemon: RuleCheckPokemon,
  scope: ReuseScope,
  context: RuleCheckContext,
) => {
  const family = context.familyBySpecies[pokemon.speciesId];
  const sameSpecies = (used: UsedPokemon) =>
    used.speciesId === pokemon.speciesId;

  return context.usedElsewhere.filter((used) =>
    scope === "form"
      ? used.formId === pokemon.formId
      : scope === "species"
        ? sameSpecies(used)
        : sameSpecies(used) ||
          (family !== undefined &&
            context.familyBySpecies[used.speciesId] === family),
  );
};

/* "Gym Leader Misty", or "Zach's promotion match". */
const formatCapBattle = (battle: MainlinePlayCapBattle) =>
  battle.isPromotionMatch
    ? `${battle.name}'s promotion match`
    : `${battle.kind} ${battle.name}`;

/* Whose team the cap comes from: "Gym Leader Misty", or "Zach" for a promotion match. */
const formatCapOpponent = (battle: MainlinePlayCapBattle) =>
  battle.isPromotionMatch ? battle.name : `${battle.kind} ${battle.name}`;

/*
 * Level caps' cap as Play details says it, and why there's none when there
 * isn't: Voydex doesn't have the next battle's team, or no battle is left.
 */
export const describeLevelCap = (cap: MainlinePlayLevelCap) => {
  switch (cap.status) {
    case "capped":
      return cap.battle.isPromotionMatch
        ? `Lv. ${cap.level}, the highest level on ${cap.battle.name}'s team, your next promotion match.`
        : `Lv. ${cap.level}, the highest level on ${formatCapOpponent(cap.battle)}'s team, the next leader you face.`;
    case "no-team":
      return `No cap for now: Voydex doesn't have ${formatCapOpponent(cap.battle)}'s team yet, so levels aren't checked.`;
    case "no-battle":
      return "No cap: there's no Gym Leader, Kahuna, Elite Four, Champion or promotion match ahead, so levels aren't checked.";
  }
};

const checkRule = (
  rule: CheckedRule,
  pokemon: RuleCheckPokemon,
  context: RuleCheckContext,
): Pick<RuleWarning, "reuse" | "text"> | null => {
  switch (rule.kind) {
    case "level_caps": {
      const cap = context.levelCap;

      return cap?.status === "capped" &&
        pokemon.level !== null &&
        pokemon.level > cap.level
        ? {
            text: `${pokemon.name} is Lv. ${pokemon.level}, over the Lv. ${cap.level} cap from ${formatCapBattle(cap.battle)}.`,
          }
        : null;
    }
    case "monotype":
      return pokemon.typeIds.length && !pokemon.typeIds.includes(rule.typeId)
        ? { text: `${pokemon.name} isn't ${rule.typeName} type.` }
        : null;
    case "nickname_everything":
      return pokemon.nickname?.trim()
        ? null
        : { text: `${pokemon.name} has no nickname.` };
    case "no_legendaries": {
      const kind = context.legendaryBySpecies[pokemon.speciesId];

      return kind ? { text: `${pokemon.name} is a ${kind} Pokémon.` } : null;
    }
    case "no_pokemon_reuse": {
      const used = findReuse(pokemon, rule.scope, context);

      if (!used.length) return null;

      const family = !used.some((use) => use.speciesId === pokemon.speciesId);

      return {
        reuse: {
          family,
          name: pokemon.name,
          playIds: [...new Set(used.map((use) => use.playId))],
        },
        text: family
          ? `${pokemon.name}'s evolution family was already used in`
          : `${pokemon.name} was already used in`,
      };
    }
    case "shiny_only":
      return pokemon.isShiny === false
        ? { text: `${pokemon.name} isn't shiny.` }
        : null;
  }
};

/* What the Play's rules say about one Pokémon, in the rules' order. */
export const checkPokemonRules = (
  pokemon: RuleCheckPokemon,
  context: RuleCheckContext,
): RuleWarning[] =>
  context.rules.flatMap((rule) => {
    const result = checkRule(rule, pokemon, context);

    return result
      ? [
          {
            ...result,
            ruleId: rule.id,
            ruleKind: rule.kind,
            ruleName: rule.name,
          },
        ]
      : [];
  });

/* A Pokémon you have now that breaks the Play's rules, and how. */
export type RuleBreaker = {
  imageUrl: string | null;
  name: string;
  playPokemonId: string;
  /* Its first type, for its art's tint. */
  typeSlug: string | null;
  warnings: (RuleWarning & { key: string })[];
};

/* The team's rule breaks, for the Play head: how many rules, and who. */
export type RuleBreaks = {
  pokemon: RuleBreaker[];
  ruleNames: string[];
};

export const emptyRuleBreaks: RuleBreaks = { pokemon: [], ruleNames: [] };

/* The rules the Pokémon break, each once, in the Library's order. */
export const collectRuleBreaks = (pokemon: RuleBreaker[]): RuleBreaks => ({
  pokemon,
  ruleNames: [
    ...new Map(
      pokemon
        .flatMap((breaker) => breaker.warnings)
        .toSorted(
          (left, right) =>
            checkedRuleKinds.indexOf(left.ruleKind) -
            checkedRuleKinds.indexOf(right.ruleKind),
        )
        .map((warning) => [warning.ruleId, warning.ruleName]),
    ).values(),
  ],
});
