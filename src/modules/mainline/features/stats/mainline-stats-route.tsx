"use client";

import { statsPageRead } from "@/modules/mainline/features/stats/client/stats-page-query";
import { MainlineStatsPage } from "@/modules/mainline/features/stats/mainline-stats-page";
import { useLocalPageData } from "@/modules/mainline/shared/client/use-local-page-data";

/* Statistics, read on the device. */
export const MainlineStatsRoute = () => {
  const stats = useLocalPageData(statsPageRead.key, statsPageRead.read);

  return <MainlineStatsPage stats={stats} />;
};
