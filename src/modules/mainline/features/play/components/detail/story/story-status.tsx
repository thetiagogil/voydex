import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatDateTime,
  formatNumber,
  getFirstIncompleteMilestone,
  getLastCompletedMilestone,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { Card, CardContent } from "@/shared/components/ui/card";

type StoryStatusProps = {
  data: MainlinePlayDetailData;
};

export const StoryStatus = ({ data }: StoryStatusProps) => {
  const lastCompleted = getLastCompletedMilestone(data.milestones);
  const nextMilestone = getFirstIncompleteMilestone(data.milestones);
  const completed = data.overview.completed_required_milestone_count ?? 0;
  const total = data.overview.required_milestone_count ?? 0;

  return (
    <Card>
      <CardContent className="grid gap-5 lg:grid-cols-3">
        <div>
          <p className="text-muted-foreground text-sm">Last completed</p>
          <p className="mt-1 font-medium">
            {lastCompleted?.milestone_name ?? "No milestone completed"}
          </p>
          <p className="text-muted-foreground text-sm">
            {lastCompleted?.milestone_game_name ?? "Start your journey"}
          </p>
          <p className="text-muted-foreground text-xs">
            {lastCompleted?.completed_at
              ? formatDateTime(lastCompleted.completed_at)
              : "No date"}
          </p>
        </div>
        <div>
          <p className="text-warning text-sm font-medium">Next up</p>
          <p className="mt-1 font-medium">
            {nextMilestone?.milestone_name ?? "No next milestone"}
          </p>
          <p className="text-muted-foreground text-sm">
            {nextMilestone?.milestone_game_name ?? "Story complete"}
          </p>
        </div>
        <div>
          <p className="text-success text-sm font-medium">Story path</p>
          <p className="mt-1 text-2xl font-semibold">
            {formatNumber(completed)} / {formatNumber(total)}
          </p>
          <p className="text-muted-foreground text-sm">milestones completed</p>
        </div>
      </CardContent>
    </Card>
  );
};
