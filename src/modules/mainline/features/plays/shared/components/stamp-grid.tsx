"use client";

import {
  BadgeStamp,
  type BadgeStampState,
} from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import {
  describePlayStamp,
  type PlayStamp,
} from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { getMilestoneIcon } from "@/modules/mainline/features/plays/shared/utils/milestone-icon";
import { formatPlayMoment } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { cn } from "@/shared/utils/cn";

/* Stamps tilt at rest, each by its own small angle. */
const stampTilts = [-6, 4, -3, 7, -5, 3, -7, 5, -2, 4, -4, 6];

const getBadgeStampState = (stamp: PlayStamp): BadgeStampState => {
  if (stamp.kind === "gym") {
    return stamp.state === "earned"
      ? { kind: "badge", type: stamp.badgeType }
      : { kind: stamp.state };
  }

  const icon = getMilestoneIcon(stamp.milestoneTypeSlug ?? "");

  return stamp.state === "earned"
    ? { icon, kind: "earned" }
    : { icon, kind: stamp.state };
};

/*
 * A Play's stamps, tilted like stamps: Overview's badge case and Story's
 * stamp card. With `captions` each stamp prints its label under it. The one
 * just recorded slaps down once; nothing moves on load. A client part so the
 * day each was earned reads in the viewer's time zone.
 */
export const StampGrid = ({
  captions = false,
  className,
  onSlapEnd,
  scrollLabel,
  slappingMilestoneId = null,
  stamps,
}: {
  captions?: boolean;
  /* The grid's columns and gaps. */
  className?: string;
  /* Called once the just-recorded slap has played. */
  onSlapEnd?: () => void;
  /*
   * Names a row that scrolls sideways (phones), which can then take focus
   * so the keyboard can scroll it.
   */
  scrollLabel?: string;
  /* The milestone recorded a moment ago, whose stamp slaps once. */
  slappingMilestoneId?: number | null;
  stamps: PlayStamp[];
}) => {
  const clock = useViewerClock();

  return (
    <ul
      aria-label={scrollLabel}
      tabIndex={scrollLabel ? 0 : undefined}
      className={cn("grid", scrollLabel && "focus-ring-inset", className)}
    >
      {stamps.map((stamp, index) => (
        <li key={stamp.milestoneId} className="flex flex-col">
          <BadgeStamp
            label={describePlayStamp(
              stamp,
              formatPlayMoment(stamp.completedAt, clock)?.date,
            )}
            state={getBadgeStampState(stamp)}
            tilt={stampTilts[index % stampTilts.length]}
            slap={
              stamp.state === "earned" &&
              stamp.milestoneId === slappingMilestoneId
            }
            onSlapEnd={onSlapEnd}
          />
          {captions ? (
            <span
              aria-hidden
              className="text-ink-3 text-12 mt-4 text-center leading-tight font-bold"
            >
              {stamp.label}
            </span>
          ) : null}
        </li>
      ))}
    </ul>
  );
};
