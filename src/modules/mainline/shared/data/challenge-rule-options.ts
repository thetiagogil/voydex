import type { LibraryChoice } from "@/modules/mainline/shared/types";
import type { Json } from "@/shared/types/database.types";

/*
 * The options a challenge rule offers a Play, keyed as the database keeps
 * them: a rule's `config` lists them with their defaults, and a Play's
 * `config_override` holds its own values. Only Voydex's rules have options:
 * First catch per area's shiny exception and Monotype's type.
 */
export type ChallengeRuleConfig = {
  shinies_always_catchable?: boolean;
  type_id?: number | null;
};

export type ChallengeRuleOptionKey = keyof ChallengeRuleConfig;

/* What a Play keeps: a rule and its values for that rule's options. */
export type PlayRuleSelection = {
  config: ChallengeRuleConfig | null;
  ruleId: string;
};

/* A rule a Play can keep: its options and their defaults. */
export type ChallengeRuleChoice = LibraryChoice & {
  defaults: ChallengeRuleConfig;
  /* Voydex's own rule: everyone's, and nobody can change it. */
  isBuiltIn: boolean;
  optionKeys: ChallengeRuleOptionKey[];
};

const optionKeys: readonly ChallengeRuleOptionKey[] = [
  "shinies_always_catchable",
  "type_id",
];

const isObject = (value: Json | null | undefined) =>
  typeof value === "object" && value !== null && !Array.isArray(value);

const readOption = (
  key: ChallengeRuleOptionKey,
  value: Json | undefined,
): ChallengeRuleConfig[ChallengeRuleOptionKey] | undefined => {
  if (key === "shinies_always_catchable") {
    return typeof value === "boolean" ? value : undefined;
  }

  if (value === null) return null;

  return typeof value === "number" && Number.isInteger(value)
    ? value
    : undefined;
};

/* The options a rule offers: the keys of its config Voydex knows. */
export const getRuleOptionKeys = (
  ruleConfig: Json | null | undefined,
): ChallengeRuleOptionKey[] =>
  isObject(ruleConfig)
    ? optionKeys.filter((key) => key in (ruleConfig as Record<string, Json>))
    : [];

/* A Play's values for its rule, over the rule's defaults. */
export const resolveRuleConfig = (
  ruleConfig: Json | null | undefined,
  override: Json | null | undefined,
): ChallengeRuleConfig => {
  const keys = getRuleOptionKeys(ruleConfig);
  const defaults = (ruleConfig ?? {}) as Record<string, Json>;
  const own = isObject(override) ? (override as Record<string, Json>) : {};
  const config: Record<string, ChallengeRuleConfig[ChallengeRuleOptionKey]> =
    {};

  for (const key of keys) {
    const value = readOption(key, key in own ? own[key] : defaults[key]);

    if (value !== undefined) config[key] = value;
  }

  return config as ChallengeRuleConfig;
};

/*
 * What a Play saves for its rule: only the options the rule offers, or
 * null when it offers none.
 */
export const toRuleConfigOverride = (
  keys: readonly ChallengeRuleOptionKey[],
  config: ChallengeRuleConfig | null,
): ChallengeRuleConfig | null => {
  if (!keys.length) return null;

  const override: Record<string, ChallengeRuleConfig[ChallengeRuleOptionKey]> =
    {};

  for (const key of keys) {
    const value = config?.[key];

    if (value !== undefined) override[key] = value;
  }

  return Object.keys(override).length
    ? (override as ChallengeRuleConfig)
    : null;
};

/* The pick a rule still waits on before a Play can keep it. */
export const getMissingRuleOption = (
  keys: readonly ChallengeRuleOptionKey[],
  config: ChallengeRuleConfig | null,
): ChallengeRuleOptionKey | null =>
  keys.includes("type_id") && typeof config?.type_id !== "number"
    ? "type_id"
    : null;

/*
 * The words after a rule's name on its chip: Monotype's type ("Water"), or
 * "except shinies" when they can always be caught.
 */
export const describeRuleConfig = (
  keys: readonly ChallengeRuleOptionKey[],
  config: ChallengeRuleConfig | null,
  typeNameById: ReadonlyMap<number, string>,
): string | null => {
  const parts: string[] = [];

  if (keys.includes("type_id")) {
    const typeId = config?.type_id;

    parts.push(
      typeof typeId === "number"
        ? (typeNameById.get(typeId) ?? "Unknown type")
        : "Pick a type",
    );
  }

  if (
    keys.includes("shinies_always_catchable") &&
    config?.shinies_always_catchable
  ) {
    parts.push("except shinies");
  }

  return parts.length ? parts.join(", ") : null;
};

/* A rule's name with its options, such as "Monotype · Water". */
export const formatRuleLabel = (name: string, detail: string | null) =>
  detail ? `${name} · ${detail}` : name;

/* A rule row as a picker offers it. */
export const toChallengeRuleChoice = (rule: {
  config: Json;
  description: string | null;
  id: string;
  name: string;
  user_id: string | null;
}): ChallengeRuleChoice => ({
  defaults: resolveRuleConfig(rule.config, null),
  description: rule.description,
  id: rule.id,
  isBuiltIn: rule.user_id === null,
  name: rule.name,
  optionKeys: getRuleOptionKeys(rule.config),
});

/* Why a Play can't keep these rules yet, such as Monotype without its type. */
export const getRuleSelectionError = (
  rules: readonly ChallengeRuleChoice[],
  selections: readonly PlayRuleSelection[],
): string | null => {
  const ruleById = new Map(rules.map((rule) => [rule.id, rule]));

  for (const selection of selections) {
    const rule = ruleById.get(selection.ruleId);

    if (
      rule &&
      getMissingRuleOption(rule.optionKeys, selection.config) === "type_id"
    ) {
      return `Pick a type for ${rule.name}.`;
    }
  }

  return null;
};

const sameConfig = (
  left: ChallengeRuleConfig | null,
  right: ChallengeRuleConfig | null,
) =>
  (left?.shinies_always_catchable ?? false) ===
    (right?.shinies_always_catchable ?? false) &&
  (left?.type_id ?? null) === (right?.type_id ?? null);

/* Whether two picks keep the same rules with the same options, in any order. */
export const isSameRuleSelection = (
  left: readonly PlayRuleSelection[],
  right: readonly PlayRuleSelection[],
) =>
  left.length === right.length &&
  left.every((selection) => {
    const match = right.find((other) => other.ruleId === selection.ruleId);

    return Boolean(match) && sameConfig(selection.config, match!.config);
  });

/*
 * The rules a picker offers, by name: your own rule can share a name with
 * Voydex's or another of yours, so each name shows once, keeping the one
 * the Play already has, then Voydex's. Sorted by name.
 */
export const pickRuleChoicesByName = (
  rules: readonly ChallengeRuleChoice[],
  keptIds: readonly string[] = [],
): ChallengeRuleChoice[] => {
  const rulesByName = new Map<string, ChallengeRuleChoice>();

  for (const rule of rules.toSorted(
    (left, right) =>
      Number(keptIds.includes(right.id)) - Number(keptIds.includes(left.id)) ||
      Number(right.isBuiltIn) - Number(left.isBuiltIn),
  )) {
    const key = rule.name.trim().toLocaleLowerCase();

    if (!rulesByName.has(key)) rulesByName.set(key, rule);
  }

  return [...rulesByName.values()].toSorted((left, right) =>
    left.name.localeCompare(right.name),
  );
};

/*
 * What a Play saves for the rules it keeps, checked against the rules you
 * can see: each once, with only the options its rule offers. A rule you
 * can't see, or Monotype without its type, is the message to show instead.
 */
export const buildPlayRuleOverrides = (
  available: readonly { config: Json; id: string; name: string }[],
  picked: readonly PlayRuleSelection[],
):
  | { message: string; status: "error" }
  | {
      rows: { config: ChallengeRuleConfig | null; ruleId: string }[];
      status: "success";
    } => {
  const ruleById = new Map(available.map((rule) => [rule.id, rule]));
  const unique = [
    ...new Map(
      picked.map((selection) => [selection.ruleId, selection]),
    ).values(),
  ];
  const rows: { config: ChallengeRuleConfig | null; ruleId: string }[] = [];

  for (const selection of unique) {
    const rule = ruleById.get(selection.ruleId);

    if (!rule) {
      return {
        message: "One of those rules isn't available.",
        status: "error",
      };
    }

    const keys = getRuleOptionKeys(rule.config);

    if (getMissingRuleOption(keys, selection.config) === "type_id") {
      return { message: `Pick a type for ${rule.name}.`, status: "error" };
    }

    rows.push({
      config: toRuleConfigOverride(keys, selection.config),
      ruleId: rule.id,
    });
  }

  return { rows, status: "success" };
};

/*
 * After a game switch (New Play), a type the new game doesn't have waits to
 * be picked again; every other pick stays.
 */
export const clearMissingRuleTypes = (
  selections: readonly PlayRuleSelection[],
  typeIds: readonly number[],
): PlayRuleSelection[] =>
  selections.map((selection) =>
    typeof selection.config?.type_id === "number" &&
    !typeIds.includes(selection.config.type_id)
      ? { ...selection, config: { ...selection.config, type_id: null } }
      : selection,
  );
