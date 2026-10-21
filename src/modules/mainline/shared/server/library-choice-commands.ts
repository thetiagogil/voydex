import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type { LibraryChoice } from "@/modules/mainline/shared/types";
import { toLibrarySlug } from "@/modules/mainline/shared/utils/library-names";

const uniqueViolation = "23505";

const isSameName = (left: string, right: string) =>
  left.localeCompare(right, "en", { sensitivity: "base" }) === 0;

/*
 * Writes (inserts or renames) a named row under a slug made from its name.
 * A name of only symbols takes `fallback`; a slug you already use (two names
 * that read the same, like "Mono-type" and "Mono type") gets a short suffix.
 */
const writeWithSlug = async (
  name: string,
  {
    fallback,
    maximum,
    separator,
    write,
  }: {
    fallback: string;
    maximum: number;
    separator: "-" | "_";
    write: (slug: string) => PromiseLike<{
      data: LibraryChoice | null;
      error: { code: string } | null;
    }>;
  },
) => {
  const base =
    toLibrarySlug(name, { maximum: maximum - 5, separator }) ?? fallback;

  for (let attempt = 0; attempt < 3; attempt += 1) {
    const slug = attempt
      ? `${base}${separator}${crypto.randomUUID().slice(0, 4)}`
      : base;
    const result = await write(slug);

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
 * A challenge rule of your own, kept with Voydex's for all your Plays: of
 * the kind given, or Custom. A name you can already pick (yours or
 * Voydex's) returns that rule instead, so the chips never repeat.
 */
export const findOrCreateChallengeRule = async (
  supabase: ServerSupabaseClient,
  {
    description,
    kindId,
    name,
    userId,
  }: {
    /* What it asks; left out keeps none. */
    description?: string | null;
    kindId?: number;
    name: string;
    userId: string;
  },
): Promise<{ choice: LibraryChoice; created: boolean }> => {
  const typeQuery = supabase
    .schema("gameplay")
    .from("mainline_challenge_rule_types")
    .select("id");
  const [rulesResult, typeResult] = await Promise.all([
    supabase
      .schema("gameplay")
      .from("mainline_challenge_rules")
      .select("id, name"),
    (kindId === undefined
      ? typeQuery.eq("slug", "custom")
      : typeQuery.eq("id", kindId)
    ).maybeSingle(),
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
  const rule = await writeWithSlug(name, {
    fallback: "custom_rule",
    write: (slug) =>
      supabase
        .schema("gameplay")
        .from("mainline_challenge_rules")
        .insert({
          description: description ?? null,
          name,
          rule_type_id: ruleTypeId,
          slug,
          user_id: userId,
        })
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
): Promise<{ choice: LibraryChoice; created: boolean }> => {
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

  const tag = await writeWithSlug(name, {
    fallback: "tag",
    write: (slug) =>
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

/* Throws when the delete or rename reached nothing of yours. */
const assertOwnRow = (
  result: { data: unknown[] | null; error: unknown },
  message: string,
) => {
  if (result.error) {
    throw new Error(message);
  }

  if (!result.data?.length) {
    throw new Error("That's not in your Library anymore.");
  }
};

/*
 * Renames one of your rules (and sets its kind, when given), so the fix
 * shows in every Play that keeps it. A name another rule you can
 * pick already has is refused, so the chips never repeat. Voydex's own
 * rules aren't yours to rename.
 */
export const renameChallengeRule = async (
  supabase: ServerSupabaseClient,
  {
    description,
    id,
    kindId,
    name,
    userId,
  }: {
    /* What it asks; left out keeps it as it is, null clears it. */
    description?: string | null;
    id: string;
    kindId?: number;
    name: string;
    userId: string;
  },
) => {
  const rulesResult = await supabase
    .schema("gameplay")
    .from("mainline_challenge_rules")
    .select("id, name");

  if (rulesResult.error) {
    throw new Error("Unable to read the challenge rules.");
  }

  const taken = (rulesResult.data ?? []).find(
    (rule) => rule.id !== id && isSameName(rule.name, name),
  );

  if (taken) {
    throw new Error(`You already have a rule called ${taken.name}.`);
  }

  const rule = await writeWithSlug(name, {
    fallback: "custom_rule",
    maximum: 120,
    separator: "_",
    write: (slug) =>
      supabase
        .schema("gameplay")
        .from("mainline_challenge_rules")
        .update({
          name,
          slug,
          ...(kindId === undefined ? {} : { rule_type_id: kindId }),
          ...(description === undefined ? {} : { description }),
        })
        .eq("id", id)
        .eq("user_id", userId)
        .select("id, name")
        .maybeSingle(),
  });

  if (!rule) {
    throw new Error("Unable to rename that rule.");
  }

  return rule;
};

/* Deletes one of your rules for good; every Play lets it go. */
export const deleteChallengeRule = async (
  supabase: ServerSupabaseClient,
  { id, userId }: { id: string; userId: string },
) => {
  const result = await supabase
    .schema("gameplay")
    .from("mainline_challenge_rules")
    .delete()
    .eq("id", id)
    .eq("user_id", userId)
    .select("id");

  assertOwnRow(result, "Unable to delete that rule.");
};

/*
 * Renames one of your tags, so the fix shows on every Play that
 * wears it. A name another of your tags has is refused.
 */
export const renameTag = async (
  supabase: ServerSupabaseClient,
  { id, name, userId }: { id: string; name: string; userId: string },
) => {
  const tagsResult = await supabase
    .from("tags")
    .select("id, name")
    .eq("user_id", userId);

  if (tagsResult.error) {
    throw new Error("Unable to read your tags.");
  }

  const taken = (tagsResult.data ?? []).find(
    (tag) => tag.id !== id && isSameName(tag.name, name),
  );

  if (taken) {
    throw new Error(`You already have a tag called ${taken.name}.`);
  }

  const tag = await writeWithSlug(name, {
    fallback: "tag",
    maximum: 80,
    separator: "-",
    write: (slug) =>
      supabase
        .from("tags")
        .update({ name, slug })
        .eq("id", id)
        .eq("user_id", userId)
        .select("id, name")
        .maybeSingle(),
  });

  if (!tag) {
    throw new Error("Unable to rename that tag.");
  }

  return tag;
};

/* Deletes one of your tags for good; every Play lets it go. */
export const deleteTag = async (
  supabase: ServerSupabaseClient,
  { id, userId }: { id: string; userId: string },
) => {
  const result = await supabase
    .from("tags")
    .delete()
    .eq("id", id)
    .eq("user_id", userId)
    .select("id");

  assertOwnRow(result, "Unable to delete that tag.");
};

/*
 * Makes or changes one of your presets and its rules in one step
 * (`gameplay.save_mainline_challenge_rule_set`). A name another preset of
 * yours has is refused; the database refuses a rule you can't pick.
 */
export const saveRulePreset = async (
  supabase: ServerSupabaseClient,
  {
    description,
    id,
    name,
    ruleIds,
    userId,
  }: {
    description: string | null;
    /* Your preset's id to change it; left out makes a new one. */
    id?: string;
    name: string;
    ruleIds: string[];
    userId: string;
  },
): Promise<LibraryChoice> => {
  const presetsResult = await supabase
    .schema("gameplay")
    .from("mainline_challenge_rule_sets")
    .select("id, name")
    .eq("user_id", userId);

  if (presetsResult.error) {
    throw new Error("Unable to read your presets.");
  }

  const taken = (presetsResult.data ?? []).find(
    (preset) => preset.id !== id && isSameName(preset.name, name),
  );

  if (taken) {
    throw new Error(`You already have a preset called ${taken.name}.`);
  }

  const preset = await writeWithSlug(name, {
    fallback: "preset",
    maximum: 120,
    separator: "_",
    write: async (slug) => {
      const { data, error } = await supabase
        .schema("gameplay")
        .rpc("save_mainline_challenge_rule_set", {
          p_description: description ?? undefined,
          p_name: name,
          p_rule_ids: ruleIds,
          p_rule_set_id: id,
          p_slug: slug,
        });

      return { data: data ? { id: data, name } : null, error };
    },
  });

  if (!preset) {
    throw new Error("Unable to save that preset.");
  }

  return preset;
};

/* Deletes one of your presets for good; its rules stay. */
export const deleteRulePreset = async (
  supabase: ServerSupabaseClient,
  { id, userId }: { id: string; userId: string },
) => {
  const result = await supabase
    .schema("gameplay")
    .from("mainline_challenge_rule_sets")
    .delete()
    .eq("id", id)
    .eq("user_id", userId)
    .select("id");

  assertOwnRow(result, "Unable to delete that preset.");
};
