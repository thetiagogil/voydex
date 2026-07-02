import {
  MainlinePlaySectionCard,
  MainlinePlaySectionList,
} from "@/modules/mainline/features/play/detail/shared/components/mainline-play-section-card";
import { MainlinePlayShell } from "@/modules/mainline/features/play/detail/shared/components/mainline-play-shell";
import {
  formatNumber,
  getFirstIncompleteMilestone,
  getLastCompletedMilestone,
} from "@/modules/mainline/features/play/detail/shared/display/play-detail-display";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import type { MainlinePlayMilestoneDetail } from "@/modules/mainline/shared/types/mainline.types";
import { StatusBadge } from "@/shared/components/status-badge";

type MainlinePlayStoryPageProps = {
  data: MainlinePlayDetailData;
};

const getMilestoneKey = (
  milestone: MainlinePlayMilestoneDetail,
  index: number,
) => {
  return `${milestone.milestone_id ?? "milestone"}-${index}`;
};

const renderMilestone = (milestone: MainlinePlayMilestoneDetail) => {
  return (
    <div className="flex items-start justify-between gap-3">
      <div className="min-w-0">
        <div className="font-medium">
          {milestone.milestone_name ?? "Milestone"}
        </div>
        <div className="text-muted-foreground text-sm">
          {milestone.category_name ?? "Story"} ·{" "}
          {milestone.milestone_game_name ?? "Shared scope"}
        </div>
        {milestone.description ? (
          <p className="text-muted-foreground mt-2 text-sm">
            {milestone.description}
          </p>
        ) : null}
      </div>
      <StatusBadge tone={milestone.is_completed ? "success" : "neutral"}>
        {milestone.is_completed ? "Complete" : "Open"}
      </StatusBadge>
    </div>
  );
};

export const MainlinePlayStoryPage = ({ data }: MainlinePlayStoryPageProps) => {
  const play = data.overview;
  const nextMilestone = getFirstIncompleteMilestone(data.milestones);
  const lastCompletedMilestone = getLastCompletedMilestone(data.milestones);

  return (
    <MainlinePlayShell
      activeProgressTab="story"
      activeTab="progress"
      data={data}
    >
      <div className="grid gap-5">
        <MainlinePlaySectionCard
          title="Story"
          description="Read-only milestone tracking. Completing milestones will be rebuilt as its own focused slice."
          metrics={[
            {
              label: "Required complete",
              value: `${formatNumber(
                play.completed_required_milestone_count,
              )} / ${formatNumber(play.required_milestone_count)}`,
            },
            {
              label: "All complete",
              value: `${formatNumber(
                play.completed_milestone_count,
              )} / ${formatNumber(data.milestones.length)}`,
            },
            {
              label: "Next milestone",
              value: nextMilestone?.milestone_name ?? "None",
            },
            {
              label: "Last completed",
              value: lastCompletedMilestone?.milestone_name ?? "None",
            },
          ]}
        />

        <MainlinePlaySectionCard title="Milestones">
          <MainlinePlaySectionList
            emptyLabel="No milestones are available yet."
            getKey={getMilestoneKey}
            items={data.milestones}
            renderItem={renderMilestone}
          />
        </MainlinePlaySectionCard>
      </div>
    </MainlinePlayShell>
  );
};
