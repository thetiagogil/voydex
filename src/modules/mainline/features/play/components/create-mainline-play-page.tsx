import { EmptyState } from "@/shared/components/app/empty-state";
import { PageHeader } from "@/shared/components/app/page-header";
import { Card, CardContent } from "@/shared/components/ui/card";
import type { CreateMainlinePlayPageData } from "@/modules/mainline/features/play/types";
import { CreateMainlinePlayForm } from "@/modules/mainline/features/play/components/create-mainline-play-form";

type CreateMainlinePlayPageProps = {
  data: CreateMainlinePlayPageData;
};

export const CreateMainlinePlayPage = ({
  data,
}: CreateMainlinePlayPageProps) => {
  return (
    <div className="flex w-full flex-col gap-6">
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
    </div>
  );
};
