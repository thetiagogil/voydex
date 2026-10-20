import { AppIcon, appIcons } from "@/shared/components/app-icon";

/*
 * How many Plays follow this Plan, in one quiet line: locked while it reads
 * (Unlock to edit sits where Save does), and once unlocked, that saving
 * updates their comparison. The ⋯ menu's See Plays lists them.
 */
export const PlannerFollowersSection = ({
  count,
  locked,
}: {
  count: number;
  locked: boolean;
}) => {
  const plays = `${count} ${count === 1 ? "Play" : "Plays"}`;

  return (
    <p className="text-ink-tint text-14 flex items-center gap-1.5 font-semibold">
      <AppIcon
        icon={locked ? appIcons.status.locked : appIcons.milestones.story}
        size="sm"
      />
      {locked
        ? `Locked: followed by ${plays}.`
        : `Followed by ${plays}. Saving updates ${count === 1 ? "its" : "their"} comparison.`}
    </p>
  );
};
