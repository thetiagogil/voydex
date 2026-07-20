import { formatMilestoneDate } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/journey-status/journey-status-formatters";
import { JourneyStatusItem } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/journey-status/journey-status-item";
import type { MainlinePlayMilestone } from "@/modules/mainline/features/plays/hub/types";
import type { AppIconComponent } from "@/shared/components/app-icon";

type MilestoneSummaryProps = {
  fallback: string;
  icon: AppIconComponent;
  label: string;
  milestone: MainlinePlayMilestone | null;
};

export const MilestoneSummary = ({
  fallback,
  icon,
  label,
  milestone,
}: MilestoneSummaryProps) => {
  const milestoneDate = milestone ? formatMilestoneDate(milestone) : "";

  return (
    <JourneyStatusItem icon={icon} label={label} contentClassName="grid gap-1">
      {milestone ? (
        <>
          <p className="text-foreground font-serif text-base font-semibold">
            {milestone.milestone_name ?? "Unnamed milestone"}
          </p>
          {milestone.category_name || milestone.milestone_type_name ? (
            <p className="text-muted-foreground text-sm">
              {milestone.category_name ?? milestone.milestone_type_name}
            </p>
          ) : null}
          {milestoneDate ? (
            <p className="text-muted-foreground text-xs">{milestoneDate}</p>
          ) : null}
        </>
      ) : (
        <p className="text-muted-foreground text-sm">{fallback}</p>
      )}
    </JourneyStatusItem>
  );
};
