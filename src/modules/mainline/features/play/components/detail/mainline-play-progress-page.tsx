import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import { getFirstIncompleteMilestone } from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import { OverallCompletionCard } from "@/modules/mainline/features/play/components/detail/progress/overall-completion-card";
import { ProgressDetailGrid } from "@/modules/mainline/features/play/components/detail/progress/progress-detail-grid";
import { ProgressHeader } from "@/modules/mainline/features/play/components/detail/progress/progress-header";
import { TrackingCategoriesCard } from "@/modules/mainline/features/play/components/detail/progress/tracking-categories-card";

type MainlinePlayProgressPageProps = {
  data: MainlinePlayDetailData;
};

export const MainlinePlayProgressPage = ({
  data,
}: MainlinePlayProgressPageProps) => {
  const playId = String(data.overview.play_id);
  const nextMilestone = getFirstIncompleteMilestone(data.milestones);

  return (
    <MainlinePlayShell
      activeProgressTab="summary"
      activeTab="progress"
      data={data}
    >
      <div className="flex flex-col gap-5">
        <ProgressHeader playId={playId} />
        <OverallCompletionCard overview={data.overview} />
        <TrackingCategoriesCard overview={data.overview} playId={playId} />
        <ProgressDetailGrid
          data={data}
          nextMilestone={nextMilestone}
          playId={playId}
        />
      </div>
    </MainlinePlayShell>
  );
};
