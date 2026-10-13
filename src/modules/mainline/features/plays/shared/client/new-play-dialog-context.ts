"use client";

import { createContext, useContext } from "react";

export type NewPlayDialogOpener = {
  /* Opens New Play over the current page, on `gameSlug` when given. */
  open: (options?: { gameSlug?: string | null }) => void;
  /*
   * The game picked before signing up was started (its `gameSlug`) or put
   * aside (no slug): New Play stops opening on it.
   */
  forgetIntent: (gameSlug?: string) => void;
};

/*
 * Mainline's New Play opener, provided by the Mainline layout. Null outside
 * it, where New Play is a link to Mainline that opens it
 * (`appRoutes.mainlineNewPlay`).
 */
export const NewPlayDialogContext = createContext<NewPlayDialogOpener | null>(
  null,
);

export const useNewPlayDialog = () => useContext(NewPlayDialogContext);
