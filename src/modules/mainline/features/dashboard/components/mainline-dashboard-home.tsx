import { modules } from "@/config/modules";
import { EmptyState } from "@/shared/components/app/empty-state";
import { PageHeader } from "@/shared/components/app/page-header";
import { PageSection } from "@/shared/components/app/page-section";
import { Card, CardContent } from "@/shared/components/ui/card";

const mainlineModule = modules.mainline;

export function MainlineDashboardHome() {
  return (
    <>
      <PageHeader
        title="Dashboard"
        description={`Your ${mainlineModule.label.toLowerCase()} hub for recent plays, plans, activity, and progress.`}
      />
      <Card>
        <CardContent>
          <PageSection
            title={`${mainlineModule.label} workspace`}
            description="Mainline playthrough tools will appear here as each data-backed slice is added."
          >
            <EmptyState
              title="Dashboard foundation is ready"
              description="The authenticated app shell is in place. The next slices can connect this page to real play summaries, plans, activity, and quick actions."
            />
          </PageSection>
        </CardContent>
      </Card>
    </>
  );
}
