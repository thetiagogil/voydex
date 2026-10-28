import { readSignedInTrainerNames } from "@/modules/mainline/features/plays/shared/server/trainer-profile-query";
import { readSignedInStartIntent } from "@/modules/mainline/features/plays/shared/server/start-intent";
import type { NewPlayDialogData } from "@/modules/mainline/features/plays/new/types";
import { readChallengeRuleChoices } from "@/modules/mainline/shared/server/challenge-rule-choices-reader";
import { readRulePresets } from "@/modules/mainline/shared/server/rule-presets-reader";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Everything the New Play dialog offers, read with the Mainline layout so it
 * opens complete: the cached game catalogue, the trainer name and the game
 * picked before signing up (both read once per request, shared with Home),
 * and the challenge rules a new Play can start with. The trainer's bits are
 * quiet extras (a failed read leaves them out); a failed catalogue read is
 * `games: null`, which the dialog says, so it never takes Mainline down.
 */
/* The rules a new Play can start with, and the presets that group them. */
const readNewPlayRules = async () => {
  const supabase = await createServerSupabaseClient();
  const rules = await readChallengeRuleChoices(supabase);
  const presets = await readRulePresets(
    supabase,
    new Set(rules.map((rule) => rule.id)),
  );

  return { presets, rules };
};

export const getNewPlayDialogData = async (): Promise<NewPlayDialogData> => {
  const [catalogue, names, intent, rules] = await Promise.all([
    readGameCatalogue().catch(() => null),
    readSignedInTrainerNames().catch(() => null),
    readSignedInStartIntent().catch(() => null),
    readNewPlayRules().catch(() => ({ presets: [], rules: [] })),
  ]);

  return {
    intent,
    picker: catalogue
      ? { ...catalogue, trainerName: names?.trainerName ?? null }
      : null,
    ...rules,
  };
};
