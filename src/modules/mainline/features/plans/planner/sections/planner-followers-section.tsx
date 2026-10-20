import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { PlanTeamStrip } from "@/modules/mainline/features/plans/components/plan-team-strip";
import type { PlanFollower } from "@/modules/mainline/features/plans/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Card } from "@/shared/components/ui/card";

/*
 * The Plays that follow a Plan, each with its current team and a way into
 * its comparison with the Plan. Saving the Plan updates those comparisons.
 */
export const PlannerFollowersSection = ({
  archived = false,
  followers,
}: {
  /* An archived Plan can't be saved, so it doesn't promise updates. */
  archived?: boolean;
  followers: PlanFollower[];
}) => {
  const one = followers.length === 1;
  const line = `Followed by ${followers.length} ${one ? "Play" : "Plays"}.${
    archived ? "" : ` Saving updates ${one ? "its" : "their"} comparison.`
  }`;

  return (
    <section aria-labelledby="planner-followers-title" className="grid gap-3">
      <p
        id="planner-followers-title"
        className="text-ink-tint text-14 flex items-center gap-1.5 font-semibold"
      >
        <AppIcon icon={appIcons.milestones.story} size="sm" />
        {line}
      </p>
      <ul className="grid gap-3 sm:grid-cols-2 xl:grid-cols-3">
        {followers.map((follower) => (
          <li key={follower.playId} className="min-w-0">
            <Card size="sm" className="gap-3 px-4 py-3.5">
              <div className="flex min-w-0 items-baseline justify-between gap-3">
                <h2 className="text-ink text-15 truncate font-extrabold">
                  {follower.playName}
                </h2>
                <Link
                  href={appRoutes.mainlinePlayTeamPlan(follower.playId)}
                  className="text-link text-14 focus-ring shrink-0 rounded-xs font-bold hover:underline"
                >
                  Compare<span className="sr-only"> {follower.playName}</span>
                </Link>
              </div>
              <PlanTeamStrip members={follower.members} />
            </Card>
          </li>
        ))}
      </ul>
    </section>
  );
};
