import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

/*
 * How many Plays follow this Plan, in one quiet line. While the Plan is
 * locked it says so, with Unlock; once unlocked, that saving updates their
 * comparison. The ⋯ menu's See Plays lists them.
 */
export const PlannerFollowersSection = ({
  count,
  locked,
  onUnlock,
}: {
  count: number;
  locked: boolean;
  onUnlock: () => void;
}) => {
  const plays = `${count} ${count === 1 ? "Play" : "Plays"}`;

  return (
    <div className="flex flex-wrap items-center gap-x-3 gap-y-2">
      <p className="text-ink-tint text-14 flex items-center gap-1.5 font-semibold">
        <AppIcon
          icon={locked ? appIcons.status.locked : appIcons.milestones.story}
          size="sm"
        />
        {locked
          ? `Locked: followed by ${plays}.`
          : `Followed by ${plays}. Saving updates ${count === 1 ? "its" : "their"} comparison.`}
      </p>
      {locked ? (
        <Button type="button" variant="tint" size="sm" onClick={onUnlock}>
          <AppIcon icon={appIcons.actions.unlock} inline="start" />
          Unlock to edit
        </Button>
      ) : null}
    </div>
  );
};
