/*
 * The trainer names to offer as quick picks in the Play header: the names
 * your other Plays use, once each (however they are capitalised), A to Z. A
 * name this Play already has adds nothing to pick, so it is left out.
 */
export const getTrainerNameSuggestions = (
  names: readonly (string | null)[],
  current: string | null,
): string[] => {
  const currentKey = current?.trim().toLowerCase();
  const seen = new Set<string>();
  const suggestions: string[] = [];

  for (const name of names) {
    const trimmed = name?.trim();
    const key = trimmed?.toLowerCase();

    if (!trimmed || !key || key === currentKey || seen.has(key)) {
      continue;
    }

    seen.add(key);
    suggestions.push(trimmed);
  }

  return suggestions.sort((first, second) => first.localeCompare(second));
};
