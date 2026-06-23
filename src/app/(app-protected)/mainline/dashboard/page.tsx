import { MainlineDashboardHome } from "@/modules/mainline/features/dashboard/components/mainline-dashboard-home";
import { getMainlineDashboardData } from "@/modules/mainline/features/dashboard/data/queries";
const DashboardPage = async () => {
  const data = await getMainlineDashboardData();
  return <MainlineDashboardHome data={data} />;
};
export default DashboardPage;
