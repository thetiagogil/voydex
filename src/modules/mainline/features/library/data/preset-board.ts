import type {
  LibraryRule,
  LibraryRuleKind,
} from "@/modules/mainline/features/library/types";

/*
 * A preset's board: the rules in it. Dragging or a rule's button puts one in
 * or takes it out; each rule sits in a preset once, and the preset keeps no
 * order (a Play takes them all at once).
 */
export const putPresetRule = (ruleIds: readonly string[], ruleId: string) =>
  ruleIds.includes(ruleId) ? [...ruleIds] : [...ruleIds, ruleId];

export const takePresetRule = (ruleIds: readonly string[], ruleId: string) =>
  ruleIds.filter((id) => id !== ruleId);

/*
 * A preset's rules as the Library shows them, the same everywhere: by kind
 * (Catching, Losing, Team, Battles, Custom), then by name. Unknown ids drop.
 */
export const orderPresetRules = (
  ruleIds: readonly string[],
  rules: readonly LibraryRule[],
  kinds: readonly LibraryRuleKind[],
): LibraryRule[] => {
  const kindPlace = new Map(kinds.map((kind, index) => [kind.id, index]));
  const ruleById = new Map(rules.map((rule) => [rule.id, rule]));

  return ruleIds
    .flatMap((id) => ruleById.get(id) ?? [])
    .toSorted(
      (left, right) =>
        (kindPlace.get(left.kind.id) ?? kinds.length) -
          (kindPlace.get(right.kind.id) ?? kinds.length) ||
        left.name.localeCompare(right.name),
    );
};
