/* A rule's kind, such as Pokémon Reuse or Custom; the picker for a new rule. */
export type LibraryRuleKind = { id: number; name: string; slug: string };

/* How many of your Plays and Plans keep a rule or wear a tag. */
export type LibraryUsage = { planCount: number; playCount: number };

/* A challenge rule you can pick: Voydex's own (built-in) or yours. */
export type LibraryRule = LibraryUsage & {
  id: string;
  isBuiltIn: boolean;
  kind: LibraryRuleKind;
  name: string;
};

export type LibraryTag = LibraryUsage & { id: string; name: string };

export type LibraryTab = "rules" | "tags";

/* The Library: your rules and tags, kept for every Play and Plan. */
export type LibraryPageData = {
  kinds: LibraryRuleKind[];
  rules: LibraryRule[];
  tags: LibraryTag[];
};
