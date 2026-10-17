import type { StartIntent } from "@/config/start-intent";
import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";

/* Where New Play opens: a game (and partner) from a preset or the sign-up wish. */
export type NewPlayInitialChoice = {
  gameSlug: string | null;
  partnerSpeciesSlug: string | null;
};

/* One opening of New Play: the picker and where it starts. */
export type NewPlayWizardData = NewPlayPickerData & {
  initial: NewPlayInitialChoice;
};

/*
 * What the New Play dialog keeps for the visit to Mainline: the picker (null
 * when the games couldn't be read), and the game picked before signing up,
 * so each opening can start on its own game.
 */
export type NewPlayDialogData = {
  intent: StartIntent | null;
  picker: NewPlayPickerData | null;
};
