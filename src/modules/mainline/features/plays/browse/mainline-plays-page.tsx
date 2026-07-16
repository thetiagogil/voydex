import { PlaysBrowser } from "@/modules/mainline/features/plays/browse/components/plays-browser";
import type { PlayBrowseParams } from "@/modules/mainline/features/plays/browse/play-browse-model";
import { EmptyState } from "@/shared/components/empty-state";
import { PageHeader } from "@/shared/components/page-header";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/plays/shared/types";

type MainlinePlaysPageProps = {
  data: MainlinePlaysPageData;
  params?: PlayBrowseParams;
};

export const MainlinePlaysPage = ({ data, params }: MainlinePlaysPageProps) => {
  return (
    <div className="flex flex-col gap-6">
      <PageHeader
        title="Plays"
        description="Find an adventure and pick up where you left off."
      />

      {data.plays.length ? (
        <PlaysBrowser data={data} params={params} />
      ) : (
        <EmptyState
          title="No plays yet"
          description="Your adventures will appear here once you create your first Play."
        />
      )}
    </div>
  );
};
