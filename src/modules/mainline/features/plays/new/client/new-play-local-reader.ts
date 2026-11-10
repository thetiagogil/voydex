import type { PlayTracking } from "@/config/play-tracking";
import { readTrackingDefaults } from "@/modules/mainline/features/plays/shared/server/tracking-defaults-reader";
import { readTrainerNames } from "@/modules/mainline/features/plays/shared/server/trainer-profile-reader";
import { readChallengeRuleChoices } from "@/modules/mainline/shared/server/challenge-rule-choices-reader";
import { readRulePresets } from "@/modules/mainline/shared/server/rule-presets-reader";
import type { ChallengeRuleChoice } from "@/modules/mainline/shared/data/challenge-rule-options";
import type { RulePreset } from "@/modules/mainline/shared/data/rule-presets";
import { localUserId } from "@/platform/local-db/device-schema";
import type { LocalQueryClient } from "@/platform/local-db/local-db-context";

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
  client: LocalQueryClient,
): Promise<NewPlayLocalData> => {
  const [names, rules, trackingDefaults] = await Promise.all([
    readTrainerNames(client, localUserId).catch(() => null),
    readChallengeRuleChoices(client).catch(() => []),
    readTrackingDefaults(client, localUserId).catch(() => null),
  ]);
  const presets = await readRulePresets(
    client,
    new Set(rules.map((rule) => rule.id)),
  ).catch(() => []);

  return {
    presets,
    rules,
    trackingDefaults,
    trainerName: names?.trainerName ?? null,
  };
};
