import Link from "next/link";
import { Plus } from "lucide-react";

import { appRoutes } from "@/config/routes";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/play/types";
import { MainlinePlayCard } from "@/modules/mainline/features/play/components/mainline-play-card";
import { EmptyState } from "@/shared/components/app/empty-state";
import { PageHeader } from "@/shared/components/app/page-header";
import { PageSection } from "@/shared/components/app/page-section";
import { Button } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";

type MainlinePlaysPageProps = {
  data: MainlinePlaysPageData;
};

export function MainlinePlaysPage({ data }: MainlinePlaysPageProps) {
  const hasPlays = data.plays.length > 0;

  return (
    <>
      <div className="flex flex-col gap-4 sm:flex-row sm:items-end sm:justify-between">
        <PageHeader
          title="Plays"
          description="Create and manage your mainline Pokemon playthroughs."
        />
        <Button
          render={<Link href={appRoutes.mainlineNewPlay} />}
          nativeButton={false}
        >
          <Plus data-icon="inline-start" />
          New play
        </Button>
      </div>

      <Card>
        <CardContent>
          <PageSection
            title="Your playthroughs"
            description="Each play is a record for one save file: team, story progress, Pokedex progress, collectibles, and history."
          >
            {hasPlays ? (
              <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-3">
                {data.plays.map((play) => (
                  <MainlinePlayCard
                    key={play.play_id ?? `${play.game_id}-${play.created_at}`}
                    play={play}
                  />
                ))}
              </div>
            ) : (
              <EmptyState
                title="No plays yet"
                description="Start by creating a play for one mainline game. The full play hub will connect team, story, Pokedex, collectibles, and history from there."
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
            )}
          </PageSection>
        </CardContent>
      </Card>
    </>
  );
}
