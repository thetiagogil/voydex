import { BookOpen, ListChecks } from "lucide-react";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import type { MainlinePlayMilestoneDetail } from "@/modules/mainline/shared/types/mainline.types";
import {
  formatDateTime,
  formatNumber,
  getFirstIncompleteMilestone,
  getLastCompletedMilestone,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { CompleteMilestoneButton } from "@/modules/mainline/features/play/components/detail/mainline-play-actions";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import { StatusBadge } from "@/shared/components/app/status-badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Separator } from "@/shared/components/ui/separator";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";
type MainlinePlayStoryPageProps = {
  data: MainlinePlayDetailData;
};
const getMilestoneTone = (
  milestone: MainlinePlayMilestoneDetail,
): "battle" | "decision" | "info" | "milestone" | "neutral" | "warning" => {
  if (milestone.milestone_type_slug === "decision") {
    return "decision";
  }
  if (milestone.category_slug?.includes("gym")) {
    return "warning";
  }
  if (milestone.category_slug?.includes("battle")) {
    return "battle";
  }
  if (milestone.category_slug?.includes("story")) {
    return "info";
  }
  return "milestone";
};
const StoryStatus = ({ data }: MainlinePlayStoryPageProps) => {
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
const MilestoneFocusPanel = ({
  playId,
  milestone,
}: {
  milestone: MainlinePlayMilestoneDetail | null;
  playId: string;
}) => {
  const isNextMilestone = milestone ? !milestone.is_completed : false;
  return (
    <Card>
      <CardHeader>
        <CardDescription>
          {isNextMilestone ? "Next milestone" : "Latest milestone"}
        </CardDescription>
        <CardTitle>{milestone?.milestone_name ?? "No milestone"}</CardTitle>
        {milestone ? (
          <StatusBadge tone={getMilestoneTone(milestone)}>
            {milestone.category_name ??
              milestone.milestone_type_name ??
              "Story"}
          </StatusBadge>
        ) : null}
      </CardHeader>
      <CardContent className="flex flex-col gap-4">
        <div>
          <p className="text-muted-foreground text-sm">Requires</p>
          <p className="mt-1 text-sm">
            {milestone?.prerequisites ? "Prerequisites available" : "None"}
          </p>
        </div>
        <Separator />
        <div>
          <p className="text-muted-foreground text-sm">Snapshot</p>
          <p className="mt-1 text-sm">
            {milestone?.snapshot_policy_name ?? "Optional"}
          </p>
        </div>
        <Separator />
        <div>
          <p className="text-muted-foreground text-sm">Description</p>
          <p className="mt-1 text-sm">
            {milestone?.description ?? "No description available."}
          </p>
        </div>
        {isNextMilestone ? (
          <CompleteMilestoneButton
            milestoneId={milestone?.milestone_id ?? null}
            playId={playId}
          />
        ) : milestone ? (
          <StatusBadge tone="success">Completed</StatusBadge>
        ) : null}
      </CardContent>
    </Card>
  );
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
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead>Status</TableHead>
                    <TableHead>#</TableHead>
                    <TableHead>Milestone</TableHead>
                    <TableHead>Location</TableHead>
                    <TableHead>Category</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {data.milestones.map((milestone) => {
                    const isNext =
                      milestone.milestone_id === nextMilestone?.milestone_id;
                    const statusTone = milestone.is_completed
                      ? "success"
                      : isNext
                        ? "warning"
                        : "neutral";
                    const statusLabel = milestone.is_completed
                      ? "Done"
                      : isNext
                        ? "Next"
                        : "Pending";
                    return (
                      <TableRow
                        key={milestone.milestone_id}
                        className={
                          milestone.milestone_id ===
                          focusMilestone?.milestone_id
                            ? "bg-primary/5"
                            : undefined
                        }
                      >
                        <TableCell>
                          <StatusBadge tone={statusTone}>
                            {statusLabel}
                          </StatusBadge>
                        </TableCell>
                        <TableCell>{milestone.sort_order ?? "-"}</TableCell>
                        <TableCell className="font-medium">
                          {milestone.milestone_name}
                        </TableCell>
                        <TableCell className="text-muted-foreground">
                          {milestone.milestone_game_name ?? "-"}
                        </TableCell>
                        <TableCell>
                          <StatusBadge tone={getMilestoneTone(milestone)}>
                            {milestone.category_name ??
                              milestone.milestone_type_name ??
                              "Milestone"}
                          </StatusBadge>
                        </TableCell>
                      </TableRow>
                    );
                  })}
                </TableBody>
              </Table>
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
