import { EmptyState } from "@/shared/components/app/empty-state";
import { PageHeader } from "@/shared/components/app/page-header";
import { Card, CardContent } from "@/shared/components/ui/card";
import type { CreateMainlinePlayPageData } from "@/modules/mainline/features/play/types";
import { CreateMainlinePlayForm } from "@/modules/mainline/features/play/components/create-mainline-play-form";

type CreateMainlinePlayPageProps = {
  data: CreateMainlinePlayPageData;
};

export function CreateMainlinePlayPage({ data }: CreateMainlinePlayPageProps) {
  return (
    <>
      <PageHeader
        title="New play"
        description="Create a mainline playthrough record for one game save."
      />

      {data.games.length ? (
        <CreateMainlinePlayForm data={data} />
      ) : (
        <Card>
          <CardContent>
            <EmptyState
              title="No mainline games available"
              description="The reference seed data needs at least one mainline game before plays can be created."
            />
          </CardContent>
        </Card>
      )}
    </>
  );
}
