import { EmptyState } from "@/shared/components/empty-state";
import { PageHeader } from "@/shared/components/page-header";
import { Card, CardContent } from "@/shared/components/ui/card";
import { PlaySummaryCard } from "@/modules/mainline/features/plays/components/play-summary-card";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/plays/types";

type MainlinePlaysPageProps = {
  data: MainlinePlaysPageData;
};

export const MainlinePlaysPage = ({ data }: MainlinePlaysPageProps) => {
  return (
    <div className="flex flex-col gap-6">
      <PageHeader
        title="Plays"
        description="A simple read-only list for testing Mainline play data."
      />

      {data.plays.length ? (
        <div className="grid gap-3">
          {data.plays.map((play) => (
            <PlaySummaryCard
              key={play.play_id ?? `${play.game_id}-${play.created_at}`}
              play={play}
            />
          ))}
        </div>
      ) : (
        <Card>
          <CardContent>
            <EmptyState
              title="No plays found"
              description="Create or seed a Mainline play to verify this list."
            />
          </CardContent>
        </Card>
      )}
    </div>
  );
};
