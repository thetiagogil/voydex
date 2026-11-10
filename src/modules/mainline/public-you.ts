"use client";

import { readYouSummary } from "@/modules/mainline/features/stats/client/you-summary-query";
import { useLocalRead } from "@/platform/local-db/local-db-context";

/*
 * Mainline's public entry for the You page (a global feature that can't
 * import a module): its route reads these figures on the device and passes
 * them in. Undefined while they're read; null when they couldn't be.
 */
export const useYouSummary = () => {
  const summary = useLocalRead("you-summary", () => readYouSummary());

  if (summary.status === "loading") return undefined;

  return summary.status === "ready" ? summary.data : null;
};
