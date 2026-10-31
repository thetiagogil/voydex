import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { PlayCardHeading } from "@/modules/mainline/features/plays/browse/components/play-card-heading";
import { PlayCardStatus } from "@/modules/mainline/features/plays/browse/components/play-card-status";
import { PlayToken } from "@/modules/mainline/features/plays/browse/components/play-token";
import { getPlayCombinedPercent } from "@/modules/mainline/features/plays/browse/play-browse-display";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { Card } from "@/shared/components/ui/card";
import { Progress } from "@/shared/components/ui/progress";

type PlayGridCardProps = {
  play: PlayBrowseItem;
};

/* What stands in for the bar when there is no figure to draw. */
const getProgressNote = ({ progress }: PlayBrowseItem) => {
  if (progress.state === "unavailable") {
    return "Progress unavailable";
  }

  return progress.items.length
    ? "Progress not tracked"
    : "Progress not recorded";
};

/*
 * One Play in the grid: the cover, the Play's and game's names, its status
 * and one bar for how far along it is. No team; the list has that.
 */
export const PlayGridCard = ({ play }: PlayGridCardProps) => {
  const gameName = play.game_name ?? "Unknown game";
  const percent = getPlayCombinedPercent(play.progress);
  const content = (
    <Card
      variant={play.play_id ? "interactive" : "default"}
      className="h-full gap-3 p-3 sm:gap-4 sm:p-4"
    >
      <PlayToken coverImageUrl={play.coverImageUrl} gameName={gameName} />

      <PlayCardHeading play={play} title={play.play_name ?? "Untitled Play"}>
        <PlayCardStatus play={play} />
      </PlayCardHeading>

      <div className="mt-auto">
        {percent === null ? (
          <p className="text-ink-3 text-13 font-semibold">
            {getProgressNote(play)}
          </p>
        ) : (
          <div className="grid grid-cols-[minmax(0,1fr)_38px] items-center gap-x-2">
            <Progress
              value={percent}
              max={100}
              aria-label="Progress"
              className="**:data-[slot=progress-track]:h-2.25"
            />
            <span className="text-ink text-13 text-right font-bold tabular-nums">
              {percent}%
            </span>
          </div>
        )}
      </div>
    </Card>
  );

  return (
    <li>
      {play.play_id ? (
        <Link
          href={appRoutes.mainlinePlay(play.play_id)}
          className="group/card-link block h-full rounded-2xl outline-none"
        >
          {content}
        </Link>
      ) : (
        content
      )}
    </li>
  );
};
