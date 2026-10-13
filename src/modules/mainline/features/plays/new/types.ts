import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";

/* Where New Play opens: a game (and partner) from the address or the sign-up wish. */
export type NewPlayInitialChoice = {
  gameSlug: string | null;
  partnerSpeciesSlug: string | null;
};

export type NewPlayPageData = NewPlayPickerData & {
  initial: NewPlayInitialChoice;
};
