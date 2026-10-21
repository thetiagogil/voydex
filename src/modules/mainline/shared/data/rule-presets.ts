/*
 * A preset: a named group of challenge rules (a Nuzlocke) a Play takes in
 * one go. Voydex's own are everyone's; yours are yours to change. Adding one
 * to a Play adds its rules, so the Play keeps no link to it.
 */
export type RulePreset = {
  description: string | null;
  id: string;
  isBuiltIn: boolean;
  name: string;
  /* Its rules; they keep no order (a Play takes them all). */
  ruleIds: string[];
};

type PresetRow = {
  description: string | null;
  id: string;
  name: string;
  user_id: string | null;
};

type PresetRuleRow = {
  challenge_rule_id: string;
  rule_set_id: string;
};

/*
 * The presets a picker or the Library offers: each with its rules, leaving
 * out a rule you can't pick and a preset left with none. Voydex's come
 * first, then yours, each by name.
 */
export const buildRulePresets = (
  presets: readonly PresetRow[],
  links: readonly PresetRuleRow[],
  pickableRuleIds: ReadonlySet<string>,
): RulePreset[] =>
  presets
    .map((preset) => ({
      description: preset.description,
      id: preset.id,
      isBuiltIn: preset.user_id === null,
      name: preset.name,
      ruleIds: links
        .filter(
          (link) =>
            link.rule_set_id === preset.id &&
            pickableRuleIds.has(link.challenge_rule_id),
        )
        .map((link) => link.challenge_rule_id),
    }))
    .filter((preset) => preset.ruleIds.length > 0)
    .toSorted(
      (left, right) =>
        Number(right.isBuiltIn) - Number(left.isBuiltIn) ||
        left.name.localeCompare(right.name),
    );

/* What adding a preset brings: its rules the Play doesn't keep yet. */
export const getPresetRulesToAdd = (
  preset: Pick<RulePreset, "ruleIds">,
  keptIds: readonly string[],
) => preset.ruleIds.filter((id) => !keptIds.includes(id));
