import Link from "next/link";
import { Plus } from "lucide-react";

import { appRoutes } from "@/config/routes";
import { MainlinePlaysBrowser } from "@/modules/mainline/features/play/components/mainline-plays-browser";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/play/types";
import { EmptyState } from "@/shared/components/app/empty-state";
import { PageHeader } from "@/shared/components/app/page-header";
import { Button } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";

type MainlinePlaysPageProps = {
  data: MainlinePlaysPageData;
};

export function MainlinePlaysPage({ data }: MainlinePlaysPageProps) {
  const hasPlays = data.plays.length > 0;

  return (
    <>
      <PageHeader
        title="Plays"
        description="Create, filter, and reopen your mainline Pokemon playthrough records."
        action={
          <Button
            render={<Link href={appRoutes.mainlineNewPlay} />}
            nativeButton={false}
          >
            <Plus data-icon="inline-start" />
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
              description="Start by creating a play for one mainline game. The play hub will connect team, story, Pokedex, collectibles, and history from there."
              action={
                <Button
                  render={<Link href={appRoutes.mainlineNewPlay} />}
                  nativeButton={false}
                >
                  <Plus data-icon="inline-start" />
                  Create your first play
                </Button>
              }
            />
          </CardContent>
        </Card>
      )}
    </>
  );
}
