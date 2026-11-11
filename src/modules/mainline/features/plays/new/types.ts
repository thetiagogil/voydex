import type { PlayTracking } from "@/config/play-tracking";
import type { ChallengeRuleChoice } from "@/modules/mainline/shared/data/challenge-rule-options";
import type { RulePreset } from "@/modules/mainline/shared/data/rule-presets";
import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";

/* Where New Play opens: a game (and partner) from a trigger or the address. */
export type NewPlayInitialChoice = {
  gameSlug: string | null;
  partnerSpeciesSlug: string | null;
};

/* One opening of New Play: the picker, where it starts and its rules. */
export type NewPlayWizardData = NewPlayPickerData & {
  initial: NewPlayInitialChoice;
  /* Voydex's presets and yours, each adding its rules in one go. */
  presets: RulePreset[];
  /* The challenge rules a new Play can start with: Voydex's and yours. */
  rules: ChallengeRuleChoice[];
  /* What a new Play starts tracking: your New Play defaults; null when they couldn't be read. */
  trackingDefaults: PlayTracking | null;
};
