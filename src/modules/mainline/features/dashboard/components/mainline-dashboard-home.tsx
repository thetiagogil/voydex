import { modules } from "@/config/modules";
import { appRoutes } from "@/config/routes";
import { EmptyState } from "@/shared/components/app/empty-state";
import { PageHeader } from "@/shared/components/app/page-header";
import { PageSection } from "@/shared/components/app/page-section";
import { Button } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";
import Link from "next/link";

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
              title="Start with your play library"
              description="Create a play to begin tracking a mainline save file. Dashboard summaries will become more useful as plays, teams, progress, and history are connected."
              action={
                <Button
                  render={<Link href={appRoutes.mainlineNewPlay} />}
                  nativeButton={false}
                >
                  Create a play
                </Button>
              }
            />
          </PageSection>
        </CardContent>
      </Card>
    </>
  );
}
