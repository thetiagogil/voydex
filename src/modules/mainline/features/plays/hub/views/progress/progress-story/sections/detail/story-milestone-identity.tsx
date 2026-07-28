import type { ReactNode } from "react";

import { Badge } from "@/shared/components/ui/badge";

import { StoryMilestoneTypeBadge } from "../../components/story-milestone-type-badge";
import type { StoryMilestone } from "../../types";

export const StoryMilestoneIdentity = ({
  milestone,
  title,
}: {
  milestone: StoryMilestone;
  title: ReactNode;
}) => {
  return (
    <div className="grid gap-1.5">
      <span className="text-muted-foreground text-[0.7rem] font-semibold tracking-wide uppercase">
        Milestone {milestone.sequence}
      </span>
      <div className="flex flex-wrap items-center gap-2">
        {title}
        <StoryMilestoneTypeBadge
          name={milestone.typeName}
          slug={milestone.typeSlug}
        />
        {!milestone.isRequired ? (
          <Badge variant="secondary">Optional</Badge>
        ) : null}
      </div>
    </div>
  );
};
