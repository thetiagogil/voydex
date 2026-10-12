import type { LucideIcon } from "lucide-react";
import {
  BookOpen,
  CircleDot,
  GitFork,
  Medal,
  Shield,
  Swords,
  Trophy,
} from "lucide-react";

import {
  Card,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Badge } from "@/shared/components/ui/badge";

import { StoryMilestoneTypeBadge } from "../../components/story-milestone-type-badge";
import type { StoryMilestone } from "../../types";

const milestoneIconByType: Record<string, LucideIcon> = {
  boss: Swords,
  champion: Trophy,
  decision: GitFork,
  "elite-four": Medal,
  "grand-trial": Shield,
  "hall-of-fame": Trophy,
  gym: Medal,
  noble: Swords,
  rival: Swords,
  story: BookOpen,
  "team-star": Shield,
  titan: Swords,
  trial: Shield,
};

export const StoryMilestoneEditorContext = ({
  milestone,
}: {
  milestone: StoryMilestone;
}) => {
  const MilestoneIcon = milestoneIconByType[milestone.typeSlug] ?? CircleDot;

  return (
    <Card
      size="sm"
      className="bg-muted/30 shadow-none ring-inset"
      aria-labelledby="story-milestone-editor-context-title"
    >
      <CardHeader className="grid grid-cols-[auto_minmax(0,1fr)] gap-x-3 gap-y-1">
        <span className="border-primary/20 bg-primary/8 text-primary row-span-3 flex size-10 items-center justify-center rounded-lg border">
          <MilestoneIcon className="size-5" aria-hidden />
        </span>

        <span className="text-muted-foreground text-[0.6875rem] font-semibold tracking-wide uppercase">
          Milestone {milestone.sequence}
        </span>
        <CardTitle
          id="story-milestone-editor-context-title"
          className="flex flex-wrap items-center gap-2 font-display"
        >
          {milestone.name}
          <StoryMilestoneTypeBadge
            name={milestone.typeName}
            slug={milestone.typeSlug}
          />
          {!milestone.isRequired ? (
            <Badge variant="secondary">Optional</Badge>
          ) : null}
        </CardTitle>
        <CardDescription className="leading-5">
          {milestone.description ?? "No milestone description is available."}
        </CardDescription>
      </CardHeader>
    </Card>
  );
};
