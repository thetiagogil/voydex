import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";

const milestoneTypeToneBySlug: Record<string, StatusBadgeTone> = {
  boss: "danger",
  champion: "gold",
  "hall-of-fame": "gold",
  "team-star": "danger",
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
