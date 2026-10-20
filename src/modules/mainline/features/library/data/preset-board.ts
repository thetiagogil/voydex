/*
 * A preset's board: the rules in it, in order. Dragging or the buttons
 * beside each rule put one in (at a place, else at the end), move it, or
 * take it out. Each rule sits in a preset once.
 */
export const putPresetRule = (
  ruleIds: readonly string[],
  ruleId: string,
  /* The index to put it before; the end when left out. */
  at?: number,
): string[] => {
  const rest = ruleIds.filter((id) => id !== ruleId);
  const from = ruleIds.indexOf(ruleId);
  const target =
    at === undefined
      ? rest.length
      : Math.min(
          Math.max(from !== -1 && from < at ? at - 1 : at, 0),
          rest.length,
        );

  return [...rest.slice(0, target), ruleId, ...rest.slice(target)];
};

/* Moves a rule one place up (-1) or down (1); at an end it stays. */
export const shiftPresetRule = (
  ruleIds: readonly string[],
  ruleId: string,
  direction: -1 | 1,
): string[] => {
  const from = ruleIds.indexOf(ruleId);
  const to = from + direction;

  if (from === -1 || to < 0 || to >= ruleIds.length) {
    return [...ruleIds];
  }

  const next = [...ruleIds];

  [next[from], next[to]] = [next[to]!, next[from]!];

  return next;
};

export const takePresetRule = (ruleIds: readonly string[], ruleId: string) =>
  ruleIds.filter((id) => id !== ruleId);
