import type { MainlinePlayMilestoneDetail } from "@/modules/mainline/shared/types/mainline.types";
import { getMilestoneTone } from "@/modules/mainline/features/play/components/detail/story/milestone-style";
import { StatusBadge } from "@/shared/components/status-badge";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";

type MilestonesTableProps = {
  focusMilestone: MainlinePlayMilestoneDetail | null;
  milestones: MainlinePlayMilestoneDetail[];
  nextMilestone: MainlinePlayMilestoneDetail | null;
};

export const MilestonesTable = ({
  focusMilestone,
  milestones,
  nextMilestone,
}: MilestonesTableProps) => {
  return (
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
        {milestones.map((milestone) => {
          const isNext = milestone.milestone_id === nextMilestone?.milestone_id;
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
                milestone.milestone_id === focusMilestone?.milestone_id
                  ? "bg-primary/5"
                  : undefined
              }
            >
              <TableCell>
                <StatusBadge tone={statusTone}>{statusLabel}</StatusBadge>
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
  );
};
