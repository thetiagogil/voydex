import { MainlinePlayDetailTabs } from "@/modules/mainline/features/plays/detail/components/mainline-play-detail-tabs";
import { MainlinePlayTopSection } from "@/modules/mainline/features/plays/detail/components/top-section/mainline-play-top-section";
import type { MainlinePlayPageData } from "@/modules/mainline/features/plays/shared/types";

type MainlinePlayPageProps = {
  data: MainlinePlayPageData;
};

export const MainlinePlayPage = ({ data }: MainlinePlayPageProps) => {
  return (
    <div className="flex flex-col gap-6">
      <MainlinePlayTopSection data={data} />
      <MainlinePlayDetailTabs data={data} />
    </div>
  );
};
