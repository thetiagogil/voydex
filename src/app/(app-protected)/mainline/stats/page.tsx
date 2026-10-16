import { MainlineStatsPage } from "@/modules/mainline/features/stats/mainline-stats-page";
import { getStatsPageData } from "@/modules/mainline/features/stats/server/stats-page-query";

export default async function StatsPage() {
  const stats = await getStatsPageData();

  return <MainlineStatsPage stats={stats} />;
}
