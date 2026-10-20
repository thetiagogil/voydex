import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { PlanTeamStrip } from "@/modules/mainline/features/plans/components/plan-team-strip";
import type { PlanFollower } from "@/modules/mainline/features/plans/types";

/*
 * The Plays that follow a Plan: each by name with its current team and a
 * Compare link into that Play's comparison with the Plan.
 */
export const PlanFollowersList = ({
  followers,
}: {
  followers: PlanFollower[];
}) => (
  <ul className="grid gap-2">
    {followers.map((follower) => (
      <li
        key={follower.playId}
        className="bg-surface-2 grid min-w-0 gap-3 rounded-xl px-4 py-3.5"
      >
        <div className="flex min-w-0 items-baseline justify-between gap-3">
          <h3 className="text-ink text-15 truncate font-sans font-extrabold">
            {follower.playName}
          </h3>
          <Link
            href={appRoutes.mainlinePlayTeamPlan(follower.playId)}
            className="text-link text-14 focus-ring shrink-0 rounded-xs font-bold hover:underline"
          >
            Compare<span className="sr-only"> {follower.playName}</span>
          </Link>
        </div>
        <PlanTeamStrip members={follower.members} />
      </li>
    ))}
  </ul>
);
