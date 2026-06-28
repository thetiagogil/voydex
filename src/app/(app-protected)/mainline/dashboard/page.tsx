import { MainlineDashboardHome } from "@/modules/mainline/features/dashboard/components/mainline-dashboard-home";
import { getMainlineDashboardData } from "@/modules/mainline/features/dashboard/data/dashboard-page-query";

export default async function DashboardPage() {
  const data = await getMainlineDashboardData();
  return <MainlineDashboardHome data={data} />;
}
