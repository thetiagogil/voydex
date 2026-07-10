import { MainlinePlayHubTabs } from "@/modules/mainline/features/plays/hub/shell/mainline-play-hub-tabs";
import { MainlinePlayTopSection } from "@/modules/mainline/features/plays/hub/shell/top-section/mainline-play-top-section";
import type { MainlinePlayHubData } from "@/modules/mainline/features/plays/hub/types";

type MainlinePlayHubPageProps = {
  data: MainlinePlayHubData;
};

export const MainlinePlayHubPage = ({ data }: MainlinePlayHubPageProps) => {
  return (
    <div className="flex flex-col gap-6">
      <MainlinePlayTopSection data={data} />
      <MainlinePlayHubTabs data={data} />
    </div>
  );
};
