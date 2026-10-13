import type { ReactNode } from "react";
import { ChevronRight, CircleDot, Route } from "lucide-react";

import { MainlinePlayMetricIcon } from "@/modules/mainline/features/plays/hub/shell/mainline-play-metric-icon";
import { appIcons, type AppIconComponent } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

import type { StoryMilestone, StoryProgressModel } from "../../types";

const SummaryItemContent = ({
  footer,
  icon: Icon,
  label,
  title,
}: {
  footer: ReactNode;
  icon: AppIconComponent;
  label: string;
  title: string;
}) => {
  return (
    <>
      <MainlinePlayMetricIcon icon={Icon} />
      <span className="grid min-w-0 flex-1 text-left">
        <span className="text-muted-foreground text-[0.7rem] font-semibold tracking-wide uppercase">
          {label}
        </span>
        <span className="truncate text-sm font-semibold">{title}</span>
        {footer}
      </span>
    </>
  );
};

const SummaryItem = ({
  icon,
  label,
  milestone,
  onSelect,
  unavailableDescription,
  unavailableTitle,
}: {
  icon: AppIconComponent;
  label: string;
  milestone: StoryMilestone | null;
  onSelect: (milestone: StoryMilestone) => void;
  unavailableDescription: string;
  unavailableTitle: string;
}) => {
  const footer = milestone ? (
    <Button
      type="button"
      variant="link"
      className="group/summary text-muted-foreground hover:text-primary h-auto w-fit min-w-0 justify-start gap-1 rounded-sm p-0 text-xs font-medium no-underline"
      aria-label={`Open milestone ${milestone.sequence}, ${milestone.name}`}
      onClick={() => onSelect(milestone)}
    >
      Milestone {milestone.sequence}
      <ChevronRight
        className="size-3 transition-transform group-hover/summary:translate-x-0.5"
        aria-hidden
      />
    </Button>
  ) : (
    <span className="text-muted-foreground truncate text-xs">
      {unavailableDescription}
    </span>
  );

  return (
    <div className="flex min-w-0 items-center gap-3 px-4 py-3">
      <SummaryItemContent
        footer={footer}
        icon={icon}
        label={label}
        title={milestone?.name ?? unavailableTitle}
      />
    </div>
  );
};

export const StoryProgressSummarySection = ({
  model,
  onMilestoneSelect,
}: {
  model: StoryProgressModel;
  onMilestoneSelect: (milestone: StoryMilestone) => void;
}) => {
  const completionPercent = model.requiredCount
    ? Math.round((model.completedRequiredCount / model.requiredCount) * 100)
    : 0;

  return (
    <Card className="gap-0 py-0">
      <CardHeader className="sr-only">
        <CardTitle>
          <h2>Story progress summary</h2>
        </CardTitle>
      </CardHeader>
      <CardContent className="p-0">
        <div className="divide-line grid divide-y sm:grid-cols-3 sm:divide-x sm:divide-y-0">
          <SummaryItem
            icon={appIcons.product.completion}
            label="Last completed"
            milestone={model.lastCompletedMilestone}
            onSelect={onMilestoneSelect}
            unavailableDescription="Completed milestones will appear here"
            unavailableTitle="Nothing recorded yet"
          />
          <SummaryItem
            icon={CircleDot}
            label="Next objective"
            milestone={model.nextMilestone}
            onSelect={onMilestoneSelect}
            unavailableDescription="All required milestones are recorded"
            unavailableTitle="Story complete"
          />
          <div className="flex min-w-0 items-center gap-3 px-4 py-3">
            <SummaryItemContent
              footer={
                <span className="text-muted-foreground truncate text-xs">
                  <span className="text-primary font-semibold tabular-nums">
                    {completionPercent}%
                  </span>{" "}
                  complete
                </span>
              }
              icon={Route}
              label="Required story"
              title={`${model.completedRequiredCount}/${model.requiredCount} completed`}
            />
          </div>
        </div>
      </CardContent>
    </Card>
  );
};
