"use client";

import {
  BadgeStamp,
  type BadgeStampState,
} from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import type { CSSProperties } from "react";

import {
  describePlayStamp,
  getStampDelay,
  type PlayStamp,
  type StampOrder,
} from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { getMilestoneIcon } from "@/modules/mainline/features/plays/shared/utils/milestone-icon";
import { formatPlayMoment } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { cn } from "@/shared/utils/cn";

const emptyStampOrder: StampOrder = new Map();

/* Sideways only: the page itself never moves to show a stamp. */
const scrollStampIntoRow = (stamp: HTMLElement) => {
  const row = stamp.parentElement;

  if (row && row.scrollWidth > row.clientWidth) {
    const stampBox = stamp.getBoundingClientRect();
    const rowBox = row.getBoundingClientRect();

    row.scrollTo({
      behavior: "smooth",
      left:
        row.scrollLeft +
        stampBox.left -
        rowBox.left -
        (row.clientWidth - stampBox.width) / 2,
    });
  }
};

/* Stamps tilt at rest, each by its own small angle. */
const stampTilts = [-6, 4, -3, 7, -5, 3, -7, 5, -2, 4, -4, 6];

/* A Play's stamp as a badge stamp: its badge or League icon, earned or ahead. */
export const getBadgeStampState = (stamp: PlayStamp): BadgeStampState => {
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
 * stamp card. With `captions` each stamp prints its label under it. The ones
 * just recorded slap down once, one after another in Story order; nothing
 * moves on load. A client part so the
 * day each was earned reads in the viewer's time zone.
 */
export const StampGrid = ({
  captions = false,
  className,
  onSlapEnd,
  scrollLabel,
  slapOrder = emptyStampOrder,
  stamps,
}: {
  captions?: boolean;
  /* The grid's columns and gaps. */
  className?: string;
  /* Called once a just-recorded stamp's slap has played. */
  onSlapEnd?: (milestoneId: number) => void;
  /*
   * Names a row that scrolls sideways (phones), which can then take focus
   * so the keyboard can scroll it.
   */
  scrollLabel?: string;
  /* The milestones recorded a moment ago, in the order their stamps slap. */
  slapOrder?: StampOrder;
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
        <li
          key={stamp.milestoneId}
          className="flex flex-col"
          /* A row that scrolls sideways brings each stamp into view as it lands. */
          onAnimationStart={(event) => scrollStampIntoRow(event.currentTarget)}
          style={
            {
              "--stamp-delay":
                getStampDelay(slapOrder, stamp.milestoneId) ?? undefined,
            } as CSSProperties
          }
        >
          <BadgeStamp
            label={describePlayStamp(
              stamp,
              formatPlayMoment(stamp.completedAt, clock)?.date,
            )}
            state={getBadgeStampState(stamp)}
            tilt={stampTilts[index % stampTilts.length]}
            slap={stamp.state === "earned" && slapOrder.has(stamp.milestoneId)}
            onSlapEnd={() => onSlapEnd?.(stamp.milestoneId)}
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
