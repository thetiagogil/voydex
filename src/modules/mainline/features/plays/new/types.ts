import type { StartIntent } from "@/config/start-intent";
import type { ChallengeRuleChoice } from "@/modules/mainline/shared/data/challenge-rule-options";
import type { RulePreset } from "@/modules/mainline/shared/data/rule-presets";
import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";

/* Where New Play opens: a game (and partner) from a preset or the sign-up wish. */
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
};

/*
 * What the New Play dialog keeps for the visit to Mainline: the picker (null
 * when the games couldn't be read), and the game picked before signing up,
 * so each opening can start on its own game.
 */
export type NewPlayDialogData = {
  intent: StartIntent | null;
  picker: NewPlayPickerData | null;
  presets: RulePreset[];
  rules: ChallengeRuleChoice[];
};
