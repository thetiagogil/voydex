import type { MainlinePlayMilestoneDetail } from "@/modules/mainline/shared/types/mainline.types";
import { CompleteMilestoneButton } from "@/modules/mainline/features/play/components/detail/actions/complete-milestone-button";
import { getMilestoneTone } from "@/modules/mainline/features/play/components/detail/story/milestone-style";
import { StatusBadge } from "@/shared/components/status-badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Separator } from "@/shared/components/ui/separator";

type MilestoneFocusPanelProps = {
  milestone: MainlinePlayMilestoneDetail | null;
  playId: string;
};

export const MilestoneFocusPanel = ({
  playId,
  milestone,
}: MilestoneFocusPanelProps) => {
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
