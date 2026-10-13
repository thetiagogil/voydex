"use server";

import { readNewPlayDialogData } from "@/modules/mainline/features/plays/new/server/new-play-page-query";
import type { NewPlayDialogData } from "@/modules/mainline/features/plays/new/types";

export type LoadNewPlayDialogResult =
  | { data: NewPlayDialogData; status: "success" }
  | { status: "error" };

/*
 * The New Play dialog's data, asked for once per visit to Mainline: on the
 * first hover, focus or press of a New Play button.
 */
export const loadNewPlayDialogAction =
  async (): Promise<LoadNewPlayDialogResult> => {
    try {
      return { data: await readNewPlayDialogData(), status: "success" };
    } catch {
      return { status: "error" };
    }
  };
