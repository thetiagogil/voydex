import {
  getTeamPlanStatusDescription,
  getTeamPlanStatusLabel,
  getTeamPlanStatusSummary,
} from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-display";
import type { MainlinePlayTeamPlanStatus } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

const statusConfig = {
  "alternate-form": {
    icon: appIcons.product.formChanged,
    tone: "border-info/30 bg-info/8 text-info",
  },
  "branched-evolution": {
    icon: appIcons.actions.move,
    tone: "border-warning/30 bg-warning/8 text-warning",
  },
  "build-differs": {
    icon: appIcons.status.warning,
    tone: "border-warning/30 bg-warning/8 text-warning",
  },
  "earlier-evolution": {
    icon: appIcons.product.evolved,
    tone: "border-info/30 bg-info/8 text-info",
  },
  exact: {
    icon: appIcons.product.caught,
    tone: "border-success/30 bg-success/8 text-success",
  },
  "exact-match": {
    icon: appIcons.product.caught,
    tone: "border-success/30 bg-success/8 text-success",
  },
  "later-evolution": {
    icon: appIcons.product.evolved,
    tone: "border-info/30 bg-info/8 text-info",
  },
  "not-found": {
    icon: appIcons.status.unknown,
    tone: "border-muted-foreground/25 bg-muted/50 text-muted-foreground",
  },
  replaced: {
    icon: appIcons.product.replaced,
    tone: "border-warning/30 bg-warning/8 text-warning",
  },
  retired: {
    icon: appIcons.product.retired,
    tone: "border-muted-foreground/25 bg-muted/50 text-muted-foreground",
  },
} satisfies Record<
  MainlinePlayTeamPlanStatus,
  { icon: typeof appIcons.product.caught; tone: string }
>;

type TeamPlanStatusProps = {
  className?: string;
  detail?: boolean;
  status: MainlinePlayTeamPlanStatus;
};

export const TeamPlanStatus = ({
  className,
  detail = false,
  status,
}: TeamPlanStatusProps) => {
  const config = statusConfig[status];

  return (
    <div className={cn("flex min-w-0 items-center gap-2.5", className)}>
      <span
        className={cn(
          "flex size-8 shrink-0 items-center justify-center rounded-full border",
          config.tone,
        )}
      >
        <AppIcon icon={config.icon} size="sm" aria-hidden />
      </span>
      <span className="grid min-w-0 gap-0.5">
        <span className="text-foreground text-xs font-semibold">
          {getTeamPlanStatusLabel(status)}
        </span>
        <span className="text-muted-foreground text-[0.6875rem] leading-4">
          {detail
            ? getTeamPlanStatusDescription(status)
            : getTeamPlanStatusSummary(status)}
        </span>
      </span>
    </div>
  );
};
