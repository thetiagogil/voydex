import { BookOpen, ListChecks } from "lucide-react";

import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatNumber,
  getFirstIncompleteMilestone,
  getLastCompletedMilestone,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { CompleteMilestoneButton } from "@/modules/mainline/features/play/components/detail/actions/complete-milestone-button";
import { MilestoneFocusPanel } from "@/modules/mainline/features/play/components/detail/story/milestone-focus-panel";
import { MilestonesTable } from "@/modules/mainline/features/play/components/detail/story/milestones-table";
import { StoryStatus } from "@/modules/mainline/features/play/components/detail/story/story-status";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import { StatusBadge } from "@/shared/components/app/status-badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type MainlinePlayStoryPageProps = {
  data: MainlinePlayDetailData;
};

export const MainlinePlayStoryPage = ({ data }: MainlinePlayStoryPageProps) => {
  const nextMilestone = getFirstIncompleteMilestone(data.milestones);
  const focusMilestone =
    nextMilestone ?? getLastCompletedMilestone(data.milestones) ?? null;
  const playId = String(data.overview.play_id);
  const completedMilestones = data.overview.completed_required_milestone_count;
  const requiredMilestones = data.overview.required_milestone_count;

  return (
    <MainlinePlayShell
      activeProgressTab="story"
      activeTab="progress"
      data={data}
    >
      <div className="grid gap-5 xl:grid-cols-[minmax(0,1fr)_22rem]">
        <div className="flex flex-col gap-5">
          <div className="flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
            <div>
              <h2 className="flex items-center gap-2 text-2xl font-semibold tracking-normal">
                <BookOpen className="text-primary size-6" />
                Story Progress
              </h2>
              <p className="text-muted-foreground text-sm">
                Track ordered milestones, decisions, badges, and major story
                steps.
              </p>
            </div>
            <div className="flex flex-wrap gap-2">
              {nextMilestone ? (
                <CompleteMilestoneButton
                  label="Complete next"
                  milestoneId={nextMilestone.milestone_id}
                  playId={playId}
                />
              ) : (
                <StatusBadge tone="success">Story complete</StatusBadge>
              )}
            </div>
          </div>

          <StoryStatus data={data} />

          <Card>
            <CardHeader>
              <CardTitle>Milestones</CardTitle>
              <CardDescription>
                {formatNumber(completedMilestones)} /{" "}
                {formatNumber(requiredMilestones)} required milestones complete.
              </CardDescription>
            </CardHeader>
            <CardContent>
              <MilestonesTable
                focusMilestone={focusMilestone}
                milestones={data.milestones}
                nextMilestone={nextMilestone}
              />
            </CardContent>
          </Card>
        </div>

        <div className="flex flex-col gap-5">
          <MilestoneFocusPanel milestone={focusMilestone} playId={playId} />
          <Card>
            <CardContent className="flex items-center gap-3">
              <ListChecks className="text-primary size-8" />
              <div>
                <p className="font-medium">Logging an old save?</p>
                <p className="text-muted-foreground text-sm">
                  Complete milestones in order and the next target updates
                  automatically.
                </p>
              </div>
            </CardContent>
          </Card>
        </div>
      </div>
    </MainlinePlayShell>
  );
};
