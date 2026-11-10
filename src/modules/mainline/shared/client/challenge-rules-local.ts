import {
  pickRuleChoicesByName,
  toChallengeRuleChoice,
  type ChallengeRuleChoice,
} from "@/modules/mainline/shared/data/challenge-rule-options";
import {
  buildRulePresets,
  type RulePreset,
} from "@/modules/mainline/shared/data/rule-presets";
import type { LibraryChoice } from "@/modules/mainline/shared/types";
import {
  isSameLibraryName,
  writeWithLibrarySlug,
} from "@/modules/mainline/shared/utils/library-slugs";
import type { Json } from "@/shared/types/database.types";
import {
  LocalDbError,
  runQuery,
  type LocalDb,
} from "@/platform/local-db/local-db";

/*
 * The challenge rules and presets on the device: Voydex's own (from the
 * game data) and yours, each name once.
 */
export const readLocalChallengeRuleChoices = async (
  db: LocalDb,
): Promise<ChallengeRuleChoice[]> => {
  const rows = await runQuery<{
    config: Json;
    description: string | null;
    id: string;
    name: string;
    user_id: string | null;
  }>(
    db,
    "SELECT id, name, description, config, user_id FROM gameplay.mainline_challenge_rules",
  );

  return pickRuleChoicesByName(rows.map(toChallengeRuleChoice));
};

/* The presets you can pick, each with its rules, keeping only `pickableRuleIds`. */
export const readLocalRulePresets = async (
  db: LocalDb,
  pickableRuleIds: ReadonlySet<string>,
): Promise<RulePreset[]> => {
  const [presets, links] = await Promise.all([
    runQuery<{
      description: string | null;
      id: string;
      name: string;
      user_id: string | null;
    }>(
      db,
      "SELECT id, name, description, user_id FROM gameplay.mainline_challenge_rule_sets",
    ),
    runQuery<{ challenge_rule_id: string; rule_set_id: string }>(
      db,
      "SELECT rule_set_id, challenge_rule_id FROM gameplay.mainline_challenge_rule_set_rules",
    ),
  ]);

  return buildRulePresets(presets, links, pickableRuleIds);
};

/*
 * A Custom rule of your own, kept with Voydex's for all your Plays. A name
 * you can already pick returns that rule instead, so the chips never repeat.
 */
export const findOrCreateLocalChallengeRule = async (
  db: LocalDb,
  name: string,
): Promise<LibraryChoice> => {
  const [rules, [custom]] = await Promise.all([
    runQuery<LibraryChoice>(
      db,
      "SELECT id, name FROM gameplay.mainline_challenge_rules",
    ),
    runQuery<{ id: number }>(
      db,
      "SELECT id FROM gameplay.mainline_challenge_rule_types WHERE slug = 'custom'",
    ),
  ]);
  const existing = rules.find((rule) => isSameLibraryName(rule.name, name));

  if (existing) return existing;

  if (!custom) throw new LocalDbError("Unable to add that rule.");

  const rule = await writeWithLibrarySlug(name, {
    fallback: "custom_rule",
    maximum: 120,
    separator: "_",
    write: (slug) =>
      runQuery<LibraryChoice>(
        db,
        `INSERT INTO gameplay.mainline_challenge_rules (name, rule_type_id, slug, user_id)
         VALUES ($1, $2, $3, auth.uid())
         RETURNING id, name`,
        [name, custom.id, slug],
      ).then(
        ([row]) => ({ data: row ?? null, error: null }),
        (error: unknown) => ({
          data: null,
          error: {
            code: error instanceof LocalDbError ? (error.code ?? "") : "",
          },
        }),
      ),
  });

  if (!rule) throw new LocalDbError("Unable to add that rule.");

  return rule;
};
