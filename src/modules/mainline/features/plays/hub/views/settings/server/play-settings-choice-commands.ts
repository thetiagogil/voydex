import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type { PlaySettingsChoice } from "../types";
import { toSettingsSlug } from "../utils/play-settings-validation";

const uniqueViolation = "23505";

const isSameName = (left: string, right: string) =>
  left.localeCompare(right, "en", { sensitivity: "base" }) === 0;

/*
 * Inserts a named row under a slug made from its name. A name of only
 * symbols takes `fallback`; a slug you already use (two names that read the
 * same, like "Mono-type" and "Mono type") gets a short suffix.
 */
const insertWithSlug = async (
  name: string,
  {
    fallback,
    insert,
    maximum,
    separator,
  }: {
    fallback: string;
    insert: (slug: string) => PromiseLike<{
      data: PlaySettingsChoice | null;
      error: { code: string } | null;
    }>;
    maximum: number;
    separator: "-" | "_";
  },
) => {
  const base =
    toSettingsSlug(name, { maximum: maximum - 5, separator }) ?? fallback;

  for (let attempt = 0; attempt < 3; attempt += 1) {
    const slug = attempt
      ? `${base}${separator}${crypto.randomUUID().slice(0, 4)}`
      : base;
    const result = await insert(slug);

    if (!result.error && result.data) {
      return result.data;
    }

    if (result.error?.code !== uniqueViolation) {
      return null;
    }
  }

  return null;
};

/*
 * A custom challenge rule of your own, kept with Voydex's for all your Plays.
 * A name you can already pick (yours or Voydex's) returns that rule instead,
 * so the chips never repeat.
 */
export const findOrCreateChallengeRule = async (
  supabase: ServerSupabaseClient,
  { name, userId }: { name: string; userId: string },
): Promise<{ choice: PlaySettingsChoice; created: boolean }> => {
  const [rulesResult, typeResult] = await Promise.all([
    supabase
      .schema("gameplay")
      .from("mainline_challenge_rules")
      .select("id, name"),
    supabase
      .schema("gameplay")
      .from("mainline_challenge_rule_types")
      .select("id")
      .eq("slug", "custom")
      .maybeSingle(),
  ]);

  if (rulesResult.error || typeResult.error || !typeResult.data) {
    throw new Error("Unable to read the challenge rules.");
  }

  const existing = (rulesResult.data ?? []).find((rule) =>
    isSameName(rule.name, name),
  );

  if (existing) {
    return { choice: existing, created: false };
  }

  const ruleTypeId = typeResult.data.id;
  const rule = await insertWithSlug(name, {
    fallback: "custom_rule",
    insert: (slug) =>
      supabase
        .schema("gameplay")
        .from("mainline_challenge_rules")
        .insert({ name, rule_type_id: ruleTypeId, slug, user_id: userId })
        .select("id, name")
        .single(),
    maximum: 120,
    separator: "_",
  });

  if (!rule) {
    throw new Error("Unable to add that rule.");
  }

  return { choice: rule, created: true };
};

/*
 * A tag of your own, shared by all your Plays. A name you already have
 * returns that tag instead.
 */
export const findOrCreateTag = async (
  supabase: ServerSupabaseClient,
  { name, userId }: { name: string; userId: string },
): Promise<{ choice: PlaySettingsChoice; created: boolean }> => {
  const tagsResult = await supabase
    .from("tags")
    .select("id, name")
    .eq("user_id", userId);

  if (tagsResult.error) {
    throw new Error("Unable to read your tags.");
  }

  const existing = (tagsResult.data ?? []).find((tag) =>
    isSameName(tag.name, name),
  );

  if (existing) {
    return { choice: existing, created: false };
  }

  const tag = await insertWithSlug(name, {
    fallback: "tag",
    insert: (slug) =>
      supabase
        .from("tags")
        .insert({ name, slug, user_id: userId })
        .select("id, name")
        .single(),
    maximum: 80,
    separator: "-",
  });

  if (!tag) {
    throw new Error("Unable to add that tag.");
  }

  return { choice: tag, created: true };
};
