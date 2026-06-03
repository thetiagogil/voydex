import { DashboardView } from "@/features/dashboard/components/dashboard-view";
import { getDashboardOverview } from "@/features/dashboard/server/dashboard";
import { PageLayout } from "@/shared/components/layout/page-layout";

export default async function DashboardPage() {
  const { data } = await getDashboardOverview();

  return (
    <PageLayout className="flex flex-col overflow-hidden lg:h-[90vh]">
      <DashboardView overview={data ?? null} />
    </PageLayout>
  );
}
