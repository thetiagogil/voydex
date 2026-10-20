/*
 * A name for a rule or tag you make: trimmed, inner spaces collapsed, 1 to
 * `maximum` characters. Throws the message to show when it isn't.
 */
export const parseLibraryName = (
  value: unknown,
  { label, maximum }: { label: string; maximum: number },
) => {
  const name =
    typeof value === "string" ? value.trim().replace(/\s+/g, " ") : "";

  if (!name) {
    throw new Error(`Give the ${label} a name.`);
  }

  if (name.length > maximum) {
    throw new Error(`A ${label}'s name can be ${maximum} characters at most.`);
  }

  return name;
};

/*
 * The stable key the database keeps beside a name: lowercase letters and
 * digits joined by `separator` ("No healing" → "no_healing"), accents
 * dropped. Null when nothing is left (a name of only symbols).
 */
export const toLibrarySlug = (
  name: string,
  { maximum, separator }: { maximum: number; separator: "-" | "_" },
) => {
  const words = name
    .normalize("NFKD")
    .replace(/\p{Mark}/gu, "")
    .toLowerCase()
    .match(/[a-z0-9]+/g);
  const slug = (words ?? []).join(separator).slice(0, maximum);
  const trimmed = slug.replace(new RegExp(`\\${separator}+$`), "");

  return trimmed || null;
};

/* The longest name a rule or tag can have, wherever it's made or renamed. */
export const libraryNameMaxLength = { rule: 80, tag: 40 } as const;

/* How long what a rule of yours asks can be. */
export const ruleDescriptionMaxLength = 300;

/*
 * What a rule of yours asks: trimmed, inner spaces collapsed, up to
 * `ruleDescriptionMaxLength` characters, or null when left empty. Throws the
 * message to show when it's too long.
 */
export const parseRuleDescription = (value: unknown) => {
  const description =
    typeof value === "string" ? value.trim().replace(/\s+/g, " ") : "";

  if (description.length > ruleDescriptionMaxLength) {
    throw new Error(
      `A rule's description can be ${ruleDescriptionMaxLength} characters at most.`,
    );
  }

  return description || null;
};
