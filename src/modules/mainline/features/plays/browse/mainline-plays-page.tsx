import { PlaysBrowser } from "@/modules/mainline/features/plays/browse/components/plays-browser";
import { PlaysPageHeader } from "@/modules/mainline/features/plays/browse/components/plays-page-header";
import type { PlayBrowseParams } from "@/modules/mainline/features/plays/browse/play-browse-model";
import type { MainlinePlaysPageData } from "@/modules/mainline/features/plays/shared/types";
import { EmptyState } from "@/shared/components/empty-state";

type MainlinePlaysPageProps = {
  data: MainlinePlaysPageData;
  params?: PlayBrowseParams;
};

export const MainlinePlaysPage = ({ data, params }: MainlinePlaysPageProps) => {
  return (
    <div className="flex flex-col gap-6">
      <PlaysPageHeader />

      <section aria-label="Play library">
        {data.plays.length ? (
          <PlaysBrowser data={data} params={params} />
        ) : (
          <EmptyState
            title="No plays yet"
            description="Your adventures will appear here once you create your first Play."
          />
        )}
      </section>
    </div>
  );
};
