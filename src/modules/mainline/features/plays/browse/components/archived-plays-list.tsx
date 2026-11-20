"use client";

import { Link } from "@/shared/components/link";

import { appRoutes } from "@/config/routes";
import { PlayToken } from "@/modules/mainline/features/plays/shared/components/play-token";
import { PlayCardHeading } from "@/modules/mainline/features/plays/shared/components/play-card-heading";
import { formatPlayUpdatedDate } from "@/modules/mainline/features/plays/shared/utils/play-browse-display";
import { RestorePlayButton } from "@/modules/mainline/features/plays/shared/components/restore-play-button";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { Card } from "@/shared/components/ui/card";

type ArchivedPlaysListProps = {
  plays: PlayBrowseItem[];
};

/*
 * One archived Play: its cover, name (opening the Play, which reads as
 * archived there too) and when it was archived, with Restore at the end. The
 * name and the button are separate controls, so the card itself stays static.
 */
const ArchivedPlayCard = ({ play }: { play: PlayBrowseItem }) => {
  const { timeZone } = useViewerClock();
  const gameName = play.game_name ?? "Unknown game";
  const playName = play.play_name ?? "Untitled Play";
  const archivedLabel = formatPlayUpdatedDate(play.archived_at, timeZone);

  return (
    <li>
      <Card
        size="sm"
        className="grid grid-cols-[80px_minmax(0,1fr)] items-center gap-x-4 gap-y-3 sm:grid-cols-[100px_minmax(0,1fr)_auto] sm:gap-4"
      >
        <PlayToken coverImageUrl={play.coverImageUrl} gameName={gameName} />

        <PlayCardHeading
          play={play}
          title={
            play.play_id ? (
              <Link
                href={appRoutes.mainlinePlay(play.play_id)}
                className="hover:underline focus-visible:underline"
              >
                {playName}
              </Link>
            ) : (
              playName
            )
          }
        >
          {archivedLabel ? `Archived ${archivedLabel}` : null}
        </PlayCardHeading>

        {play.play_id ? (
          <div className="col-span-2 justify-self-end sm:col-span-1">
            <RestorePlayButton playId={play.play_id} playName={playName} />
          </div>
        ) : null}
      </Card>
    </li>
  );
};

/* The Plays you archived, most recently active first. */
export const ArchivedPlaysList = ({ plays }: ArchivedPlaysListProps) => (
  <ul className="grid gap-3">
    {plays.map((play) => (
      <ArchivedPlayCard
        key={play.play_id ?? `${play.game_id}-${play.created_at}`}
        play={play}
      />
    ))}
  </ul>
);
