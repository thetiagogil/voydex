import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";

const milestoneTypeToneBySlug: Record<string, StatusBadgeTone> = {
  boss: "destructive",
  champion: "warning",
  decision: "decision",
  "elite-four": "battle",
  "grand-trial": "info",
  "hall-of-fame": "success",
  gym: "info",
  noble: "battle",
  rival: "warning",
  story: "milestone",
  "team-star": "destructive",
  titan: "battle",
  trial: "info",
};

export const StoryMilestoneTypeBadge = ({
  className,
  name,
  slug,
}: {
  className?: string;
  name: string;
  slug: string;
}) => {
  return (
    <StatusBadge
      className={className}
      tone={milestoneTypeToneBySlug[slug] ?? "neutral"}
    >
      {name}
    </StatusBadge>
  );
};
