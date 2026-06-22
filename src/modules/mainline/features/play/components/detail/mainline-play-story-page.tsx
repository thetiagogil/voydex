import {
  BookOpen,
  Camera,
  CheckCircle2,
  ChevronRight,
  Filter,
  Layers3,
  ListChecks,
} from "lucide-react";

import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import type { MainlinePlayMilestoneDetail } from "@/modules/mainline/shared/types/mainline.types";
import {
  formatDateTime,
  formatNumber,
  getFirstIncompleteMilestone,
  getLastCompletedMilestone,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import { StatusBadge } from "@/shared/components/app/status-badge";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Checkbox } from "@/shared/components/ui/checkbox";
import { Separator } from "@/shared/components/ui/separator";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetFooter,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";
import { cn } from "@/lib/utils";

type MainlinePlayStoryPageProps = {
  data: MainlinePlayDetailData;
};

function getMilestoneTone(
  milestone: MainlinePlayMilestoneDetail,
): "battle" | "decision" | "info" | "milestone" | "neutral" | "warning" {
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
}

function StoryStatus({ data }: MainlinePlayStoryPageProps) {
  const lastCompleted = getLastCompletedMilestone(data.milestones);
  const nextMilestone = getFirstIncompleteMilestone(data.milestones);
  const completed = data.overview.completed_required_milestone_count ?? 0;
  const total = data.overview.required_milestone_count ?? 0;

  return (
    <Card>
      <CardContent className="grid gap-5 lg:grid-cols-3">
        <div>
          <p className="text-muted-foreground text-xs font-medium uppercase">
            Last completed
          </p>
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
          <p className="text-warning text-xs font-medium uppercase">Next up</p>
          <p className="mt-1 font-medium">
            {nextMilestone?.milestone_name ?? "No next milestone"}
          </p>
          <p className="text-muted-foreground text-sm">
            {nextMilestone?.milestone_game_name ?? "Story complete"}
          </p>
        </div>
        <div>
          <p className="text-success text-xs font-medium uppercase">
            Story path
          </p>
          <p className="mt-1 text-2xl font-semibold">
            {formatNumber(completed)} / {formatNumber(total)}
          </p>
          <p className="text-muted-foreground text-sm">milestones completed</p>
        </div>
      </CardContent>
    </Card>
  );
}

function BulkCompleteSheet({ data }: MainlinePlayStoryPageProps) {
  const target = getFirstIncompleteMilestone(data.milestones);
  const previewMilestones = target
    ? data.milestones.filter(
        (milestone) =>
          milestone.is_completed ||
          (milestone.sort_order ?? 0) <= (target.sort_order ?? 0),
      )
    : data.milestones.slice(0, 6);
  const willCompleteCount = previewMilestones.filter(
    (milestone) => !milestone.is_completed,
  ).length;

  return (
    <Sheet>
      <SheetTrigger render={<Button variant="outline" />}>
        <Layers3 data-icon="inline-start" />
        Bulk complete
      </SheetTrigger>
      <SheetContent className="w-full sm:max-w-xl">
        <SheetHeader>
          <SheetTitle>Bulk complete story</SheetTitle>
          <SheetDescription>
            Useful when logging an existing save or catching up story progress.
          </SheetDescription>
        </SheetHeader>

        <div className="flex min-h-0 flex-1 flex-col gap-5 overflow-y-auto px-4">
          <section className="flex flex-col gap-2">
            <h3 className="font-medium">1. Target</h3>
            <div className="rounded-lg border p-3 font-medium">
              {target?.milestone_name ?? "No pending milestone"}
            </div>
            <p className="text-muted-foreground text-sm">
              {formatNumber(willCompleteCount)} required milestones will be
              completed.
            </p>
          </section>

          <Separator />

          <section className="flex flex-col gap-3">
            <h3 className="font-medium">2. Preview</h3>
            <div className="flex flex-col gap-2">
              {previewMilestones.map((milestone) => (
                <div
                  key={milestone.milestone_id}
                  className={cn(
                    "grid grid-cols-[auto_minmax(0,1fr)_auto] items-center gap-3 rounded-lg border p-3",
                    !milestone.is_completed &&
                      milestone.milestone_id === target?.milestone_id &&
                      "bg-primary/5",
                  )}
                >
                  {milestone.is_completed ? (
                    <CheckCircle2 className="text-primary size-5" />
                  ) : (
                    <span className="size-5 rounded-full border" />
                  )}
                  <div className="min-w-0">
                    <p className="truncate font-medium">
                      {milestone.milestone_name}
                    </p>
                    <p className="text-muted-foreground truncate text-sm">
                      {milestone.milestone_game_name ?? "No location"}
                    </p>
                  </div>
                  <StatusBadge
                    tone={milestone.is_completed ? "success" : "neutral"}
                  >
                    {milestone.is_completed
                      ? "Already completed"
                      : "Will complete"}
                  </StatusBadge>
                </div>
              ))}
            </div>
          </section>

          <Separator />

          <section className="flex flex-col gap-3">
            <h3 className="font-medium">3. Options</h3>
            <label className="flex items-start gap-3 rounded-lg border p-3">
              <Checkbox />
              <span>
                <span className="block font-medium">
                  Include optional milestones
                </span>
                <span className="text-muted-foreground text-sm">
                  Also complete optional and decision milestones.
                </span>
              </span>
            </label>
            <label className="flex items-start gap-3 rounded-lg border p-3">
              <Checkbox defaultChecked />
              <span>
                <span className="block font-medium">Skip snapshots</span>
                <span className="text-muted-foreground text-sm">
                  Do not take team snapshots for these milestones.
                </span>
              </span>
            </label>
          </section>
        </div>

        <SheetFooter className="border-t">
          <Button variant="outline">Cancel</Button>
          <Button disabled>Complete {formatNumber(willCompleteCount)}</Button>
        </SheetFooter>
      </SheetContent>
    </Sheet>
  );
}

function SelectedMilestonePanel({
  milestone,
}: {
  milestone: MainlinePlayMilestoneDetail | null;
}) {
  return (
    <Card>
      <CardHeader>
        <CardDescription>Selected milestone</CardDescription>
        <CardTitle>
          {milestone?.milestone_name ?? "No milestone selected"}
        </CardTitle>
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
          <p className="text-muted-foreground text-xs font-medium uppercase">
            Requires
          </p>
          <p className="mt-1 text-sm">
            {milestone?.prerequisites ? "Prerequisites available" : "None"}
          </p>
        </div>
        <Separator />
        <div>
          <p className="text-muted-foreground text-xs font-medium uppercase">
            Snapshot
          </p>
          <p className="mt-1 text-sm">
            {milestone?.snapshot_policy_name ?? "Optional"}
          </p>
        </div>
        <Separator />
        <div>
          <p className="text-muted-foreground text-xs font-medium uppercase">
            Description
          </p>
          <p className="mt-1 text-sm">
            {milestone?.description ?? "No description available."}
          </p>
        </div>
        <Button disabled>
          <CheckCircle2 data-icon="inline-start" />
          Mark complete
        </Button>
        <Button variant="outline" disabled>
          <Camera data-icon="inline-start" />
          Add team snapshot
        </Button>
      </CardContent>
    </Card>
  );
}

export function MainlinePlayStoryPage({ data }: MainlinePlayStoryPageProps) {
  const selectedMilestone =
    getFirstIncompleteMilestone(data.milestones) ?? data.milestones[0] ?? null;

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
              <h2 className="cn-font-heading flex items-center gap-2 text-2xl font-semibold">
                <BookOpen className="text-primary size-6" />
                Story Progress
              </h2>
              <p className="text-muted-foreground text-sm">
                Track ordered milestones, decisions, badges, and major story
                steps.
              </p>
            </div>
            <div className="flex flex-wrap gap-2">
              <Button disabled>
                <CheckCircle2 data-icon="inline-start" />
                Complete next
              </Button>
              <BulkCompleteSheet data={data} />
              <Button variant="outline" disabled>
                <Filter data-icon="inline-start" />
                Filter
              </Button>
            </div>
          </div>

          <StoryStatus data={data} />

          <Card>
            <CardContent>
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead>Status</TableHead>
                    <TableHead>#</TableHead>
                    <TableHead>Milestone</TableHead>
                    <TableHead>Location</TableHead>
                    <TableHead>Category</TableHead>
                    <TableHead className="text-right">Open</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {data.milestones.map((milestone) => (
                    <TableRow
                      key={milestone.milestone_id}
                      className={
                        milestone.milestone_id ===
                        selectedMilestone?.milestone_id
                          ? "bg-primary/5"
                          : undefined
                      }
                    >
                      <TableCell>
                        {milestone.is_completed ? (
                          <CheckCircle2 className="text-primary size-5" />
                        ) : (
                          <span className="block size-5 rounded-full border" />
                        )}
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
                      <TableCell className="text-right">
                        <Button variant="ghost" size="icon-sm" disabled>
                          <ChevronRight />
                          <span className="sr-only">Open milestone</span>
                        </Button>
                      </TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </CardContent>
          </Card>
        </div>

        <div className="flex flex-col gap-5">
          <SelectedMilestonePanel milestone={selectedMilestone} />
          <Card>
            <CardContent className="flex items-center gap-3">
              <ListChecks className="text-primary size-8" />
              <div>
                <p className="font-medium">Logging an old save?</p>
                <p className="text-muted-foreground text-sm">
                  Use bulk complete to catch up without snapshots.
                </p>
              </div>
            </CardContent>
          </Card>
        </div>
      </div>
    </MainlinePlayShell>
  );
}
