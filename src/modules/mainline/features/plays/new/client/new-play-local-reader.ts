import type { PlayTracking } from "@/config/play-tracking";
import {
  readLocalTrackingDefaults,
  readLocalTrainerName,
} from "@/modules/mainline/features/plays/shared/client/trainer-local-reader";
import {
  readLocalChallengeRuleChoices,
  readLocalRulePresets,
} from "@/modules/mainline/shared/client/challenge-rules-local";
import type { ChallengeRuleChoice } from "@/modules/mainline/shared/data/challenge-rule-options";
import type { RulePreset } from "@/modules/mainline/shared/data/rule-presets";
import type { LocalDb } from "@/platform/local-db/local-db";

export type NewPlayLocalData = {
  presets: RulePreset[];
  rules: ChallengeRuleChoice[];
  /* Null when they couldn't be read: the Play then starts from the saved ones. */
  trackingDefaults: PlayTracking | null;
  trainerName: string | null;
};

/*
 * What New Play reads from the device: your trainer name, your New Play
 * defaults, and the challenge rules and presets you can pick. Each is a
 * quiet extra; a failed read leaves it out.
 */
export const readNewPlayLocalData = async (
  db: LocalDb,
): Promise<NewPlayLocalData> => {
  const [trainerName, rules, trackingDefaults] = await Promise.all([
    readLocalTrainerName(db).catch(() => null),
    readLocalChallengeRuleChoices(db).catch(() => []),
    readLocalTrackingDefaults(db).catch(() => null),
  ]);
  const presets = await readLocalRulePresets(
    db,
    new Set(rules.map((rule) => rule.id)),
  ).catch(() => []);

  return { presets, rules, trackingDefaults, trainerName };
};
