import Link from "next/link";
import { appRoutes } from "@/config/routes";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatDateTime,
  formatNumber,
  getFirstIncompleteMilestone,
  getLastCompletedMilestone,
  getPlayTitle,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type JourneyStatusCardProps = {
  data: MainlinePlayDetailData;
};

export const JourneyStatusCard = ({ data }: JourneyStatusCardProps) => {
  const lastCompleted = getLastCompletedMilestone(data.milestones);
  const nextMilestone = getFirstIncompleteMilestone(data.milestones);
  const completed = data.overview.completed_required_milestone_count ?? 0;
  const total = data.overview.required_milestone_count ?? 0;
  const progressDots = Array.from({ length: Math.min(Math.max(total, 1), 12) });
  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <AppIcon
            icon={appIcons.product.journey}
            className="text-primary size-5"
          />
          Journey Status
        </CardTitle>
      </CardHeader>
      <CardContent className="flex flex-col gap-4">
        <div className="bg-muted relative min-h-24 overflow-hidden rounded-xl border">
          <div className="from-primary/15 to-background absolute inset-0 bg-gradient-to-r" />
          <div className="relative flex h-full min-h-24 items-center px-5">
            <p className="text-muted-foreground max-w-xl text-sm">
              {nextMilestone
                ? `Next: ${nextMilestone.milestone_name}`
                : `${getPlayTitle(data.overview)} has no pending story milestone.`}
            </p>
          </div>
        </div>

        <div className="grid gap-4 lg:grid-cols-[1fr_1fr_1.2fr]">
          <div className="flex gap-3">
            <AppIcon
              icon={appIcons.product.completion}
              className="text-success mt-1 size-5"
            />
            <div>
              <p className="text-muted-foreground text-sm">Last completed</p>
              <p className="font-medium">
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
          </div>

          <div className="flex gap-3">
            <AppIcon
              icon={appIcons.product.nextMilestone}
              className="text-warning mt-1 size-5"
            />
            <div>
              <p className="text-muted-foreground text-sm">Next up</p>
              <p className="font-medium">
                {nextMilestone?.milestone_name ?? "No next milestone"}
              </p>
              <p className="text-muted-foreground text-sm">
                {nextMilestone?.milestone_game_name ?? "Story complete"}
              </p>
            </div>
          </div>

          <div className="flex flex-col gap-2">
            <div className="flex items-end justify-between gap-3">
              <div>
                <p className="text-muted-foreground text-sm">Story path</p>
                <p className="text-primary text-2xl font-semibold">
                  {formatNumber(completed)} / {formatNumber(total)}
                </p>
              </div>
              <span className="text-muted-foreground text-xs">
                milestones completed
              </span>
            </div>
            <div className="flex gap-1">
              {progressDots.map((_, index) => {
                const isDone = index < completed;

                return (
                  <span
                    key={index}
                    className={
                      isDone
                        ? "bg-primary h-2 flex-1 rounded-full"
                        : "bg-muted-foreground/20 h-2 flex-1 rounded-full"
                    }
                  />
                );
              })}
            </div>
          </div>
        </div>

        <Button
          render={
            <Link
              href={appRoutes.mainlinePlayStory(String(data.overview.play_id))}
            />
          }
          nativeButton={false}
          variant="outline"
        >
          Open Story
          <AppIcon icon={appIcons.actions.continue} inline="end" />
        </Button>
      </CardContent>
    </Card>
  );
};
