import type { StartIntent } from "@/config/start-intent";
import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";

/* Where New Play opens: a game (and partner) from the address or the sign-up wish. */
export type NewPlayInitialChoice = {
  gameSlug: string | null;
  partnerSpeciesSlug: string | null;
};

export type NewPlayPageData = NewPlayPickerData & {
  initial: NewPlayInitialChoice;
};

/*
 * What the New Play dialog keeps for the session: the picker, and the game
 * picked before signing up, so each opening can start on its own game.
 */
export type NewPlayDialogData = {
  intent: StartIntent | null;
  picker: NewPlayPickerData;
};
