import type { ChallengeRuleOptionKey } from "@/modules/mainline/shared/data/challenge-rule-options";

/* A rule's kind, such as Catching or Custom; the picker for a new rule. */
export type LibraryRuleKind = { id: number; name: string; slug: string };

/* A Play of yours that keeps a rule or wears a tag. */
export type LibraryPlay = { id: string; name: string };

/* Which of your Plays keep a rule or wear a tag, by name, and how many. */
export type LibraryUsage = { playCount: number; plays: LibraryPlay[] };

/* A challenge rule you can pick: Voydex's own (built-in) or yours. */
export type LibraryRule = LibraryUsage & {
  /* What the rule asks, for Voydex's own (yours have none yet). */
  description?: string | null;
  id: string;
  /* The options each Play sets for it, such as Monotype's type. */
  optionKeys?: ChallengeRuleOptionKey[];
  isBuiltIn: boolean;
  kind: LibraryRuleKind;
  name: string;
};

export type LibraryTag = LibraryUsage & { id: string; name: string };

export type LibraryTab = "rules" | "tags";

/* The Library: your rules and tags, kept for every Play. */
export type LibraryPageData = {
  kinds: LibraryRuleKind[];
  rules: LibraryRule[];
  tags: LibraryTag[];
};
