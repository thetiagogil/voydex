import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { PlanTeamStrip } from "@/modules/mainline/features/plans/components/plan-team-strip";
import type { PlanFollower } from "@/modules/mainline/features/plans/types";

/*
 * The Plays that follow a Plan, each a card that opens the Play: its name
 * and its current team.
 */
export const PlanFollowersList = ({
  followers,
}: {
  followers: PlanFollower[];
}) => (
  <ul className="grid gap-2">
    {followers.map((follower) => (
      <li key={follower.playId} className="min-w-0">
        <Link
          href={appRoutes.mainlinePlay(follower.playId)}
          className="bg-surface-2 hover:bg-hover focus-ring grid min-w-0 gap-3 rounded-xl px-4 py-3.5 transition-colors"
        >
          <span className="text-ink text-15 truncate font-extrabold">
            {follower.playName}
          </span>
          <PlanTeamStrip members={follower.members} />
        </Link>
      </li>
    ))}
  </ul>
);
