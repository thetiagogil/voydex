import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import { PlayHero } from "@/modules/mainline/features/play/detail/shared/components/play-hero";
import { PlayHubNavigation } from "@/modules/mainline/features/play/detail/shared/components/play-hub-navigation";
import {
  getActiveSurface,
  type MainlinePlayProgressTab,
  type MainlinePlayTab,
} from "@/modules/mainline/features/play/detail/shared/utils/play-detail-navigation";

type MainlinePlayShellProps = {
  activeProgressTab?: MainlinePlayProgressTab;
  activeTab: MainlinePlayTab;
  children: React.ReactNode;
  data: MainlinePlayDetailData;
};

export const MainlinePlayShell = ({
  activeProgressTab,
  activeTab,
  children,
  data,
}: MainlinePlayShellProps) => {
  const playId = String(data.overview.play_id);
  const activeSurface = getActiveSurface(activeTab, activeProgressTab);

  return (
    <div className="flex flex-col gap-5">
      <PlayHero data={data} />
      <PlayHubNavigation activeSurface={activeSurface} playId={playId} />
      <div className="flex flex-col gap-5">{children}</div>
    </div>
  );
};
