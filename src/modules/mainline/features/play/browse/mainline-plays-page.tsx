import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { MainlinePlaysBrowser } from "@/modules/mainline/features/play/browse/components/mainline-plays-browser";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/play/types";
import { EmptyState } from "@/shared/components/empty-state";
import { PageHeader } from "@/shared/components/page-header";
import { Button } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type MainlinePlaysPageProps = {
  data: MainlinePlaysPageData;
};

export const MainlinePlaysPage = ({ data }: MainlinePlaysPageProps) => {
  const hasPlays = data.plays.length > 0;
  return (
    <>
      <PageHeader
        title="Plays"
        description="Search, filter, and reopen the records in your Mainline library."
        action={
          <Button
            render={<Link href={appRoutes.mainlineNewPlay} />}
            nativeButton={false}
          >
            <AppIcon icon={appIcons.actions.create} inline="start" />
            New play
          </Button>
        }
      />

      {hasPlays ? (
        <MainlinePlaysBrowser plays={data.plays} />
      ) : (
        <Card className="bg-card/88">
          <CardContent>
            <EmptyState
              title="No plays yet"
              description="Start by creating a play for one mainline game. The play hub will connect team, story, Pokédex, collectibles, and history from there."
              action={
                <Button
                  render={<Link href={appRoutes.mainlineNewPlay} />}
                  nativeButton={false}
                >
                  <AppIcon icon={appIcons.actions.create} inline="start" />
                  Create your first play
                </Button>
              }
            />
          </CardContent>
        </Card>
      )}
    </>
  );
};
