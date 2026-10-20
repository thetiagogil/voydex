import { AppIcon, appIcons } from "@/shared/components/app-icon";

/*
 * How many Plays follow this Plan, in one quiet line: saving updates their
 * comparison. The ⋯ menu's See Plays lists them.
 */
export const PlannerFollowersSection = ({ count }: { count: number }) => (
  <p className="text-ink-tint text-14 flex items-center gap-1.5 font-semibold">
    <AppIcon icon={appIcons.milestones.story} size="sm" />
    {`Followed by ${count} ${count === 1 ? "Play" : "Plays"}. Saving updates ${count === 1 ? "its" : "their"} comparison.`}
  </p>
);
