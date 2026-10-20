import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { TeamStrip } from "@/modules/mainline/shared/components/team-strip";
import type { PlayTeam } from "@/modules/mainline/shared/types";

/*
 * Plays, each a card that opens the Play: its name and its current team
 * (the Plays that follow a Plan, or keep a rule or wear a tag).
 */
export const PlayTeamList = ({ plays }: { plays: PlayTeam[] }) => (
  <ul className="grid gap-2">
    {plays.map((follower) => (
      <li key={follower.playId} className="min-w-0">
        <Link
          href={appRoutes.mainlinePlay(follower.playId)}
          className="bg-surface-2 hover:bg-hover focus-ring grid min-w-0 gap-3 rounded-xl px-4 py-3.5 transition-colors"
        >
          <span className="text-ink text-15 truncate font-extrabold">
            {follower.playName}
          </span>
          <TeamStrip members={follower.members} />
        </Link>
      </li>
    ))}
  </ul>
);
