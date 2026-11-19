import { Link } from "@/shared/components/link";

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
      size="sm"
      variant={play.play_id ? "interactive" : "default"}
      className="h-full gap-3 sm:gap-4"
    >
      <PlayToken coverImageUrl={play.coverImageUrl} gameName={gameName} />

      <PlayCardHeading play={play} title={play.play_name ?? "Untitled Play"}>
        {play.status_name ? <PlayCardStatus play={play} /> : null}
      </PlayCardHeading>

      <div className="mt-auto">
        {percent === null ? (
          <p className="text-ink-3 copy-meta">{getProgressNote(play)}</p>
        ) : (
          <Progress
            showValue
            value={percent}
            max={100}
            aria-label="Combined progress"
          />
        )}
      </div>
    </Card>
  );

  return (
    <li>
      {play.play_id ? (
        <Link
          href={appRoutes.mainlinePlay(play.play_id)}
          className="group/card-link block h-full rounded-lg outline-none"
        >
          {content}
        </Link>
      ) : (
        content
      )}
    </li>
  );
};
