"use client";

import { useEffect } from "react";

import { markPlayOpenedAction } from "@/modules/mainline/features/plays/hub/client/play-opened-action";

/*
 * Marks the Play opened once it shows, from the browser rather than while
 * the page renders, so a prefetched link doesn't count. The shell stays
 * mounted across the Play's sections, so moving between tabs marks it once.
 */
export const PlayOpenedMarker = ({ playId }: { playId: string }) => {
  useEffect(() => {
    void markPlayOpenedAction(playId).catch(() => undefined);
  }, [playId]);

  return null;
};
