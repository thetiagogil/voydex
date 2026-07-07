import { MainlinePlayTopSection } from "@/modules/mainline/features/plays/components/detail/top-section/mainline-play-top-section";
import type { MainlinePlayPageData } from "@/modules/mainline/features/plays/types";

type MainlinePlayPageProps = {
  data: MainlinePlayPageData;
};

export const MainlinePlayPage = ({ data }: MainlinePlayPageProps) => {
  return (
    <div className="flex flex-col gap-6">
      <MainlinePlayTopSection data={data} />
    </div>
  );
};
