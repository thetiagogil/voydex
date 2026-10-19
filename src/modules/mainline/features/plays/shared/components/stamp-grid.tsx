"use client";

import { useState, type ReactNode } from "react";

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

/*
 * A stamp you can open: it lifts a little under the pointer and pops once
 * when picked, the Pokédex's pop at the stamp's size.
 */
const PickableStamp = ({
  children,
  label,
  onSelect,
}: {
  children: ReactNode;
  label: string;
  onSelect: () => void;
}) => {
  const [isPopping, setIsPopping] = useState(false);

  return (
    <button
      type="button"
      aria-label={`${label}. Open it`}
      onClick={() => {
        setIsPopping(true);
        onSelect();
      }}
      onAnimationEnd={() => setIsPopping(false)}
      className={cn(
        "focus-ring ease-hop flex flex-col rounded-lg transition-transform duration-200 hover:-translate-y-1",
        isPopping && "animate-pop",
      )}
    >
      {children}
    </button>
  );
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
 * A Play's stamps, tilted like stamps, each with its label: Story's stamp
 * card. Each stamp opens its milestone: it lifts under the pointer and pops
 * when picked.
 * Recording never moves it: the row you see in the list slaps instead. A
 * client part so the day each was earned reads in the viewer's time zone.
 */
export const StampGrid = ({
  className,
  onStampSelect,
  scrollLabel,
  stamps,
}: {
  /* The grid's columns and gaps. */
  className?: string;
  /* Opens a stamp's milestone, such as Story's row and panel. */
  onStampSelect: (milestoneId: number) => void;
  /*
   * Names a row that scrolls sideways (phones), which can then take focus
   * so the keyboard can scroll it.
   */
  scrollLabel?: string;
  stamps: PlayStamp[];
}) => {
  const clock = useViewerClock();

  return (
    <ul
      aria-label={scrollLabel}
      tabIndex={scrollLabel ? 0 : undefined}
      className={cn("grid", scrollLabel && "focus-ring-inset", className)}
    >
      {stamps.map((stamp, index) => {
        const label = describePlayStamp(
          stamp,
          formatPlayMoment(stamp.completedAt, clock)?.date,
        );

        return (
          <li key={stamp.milestoneId} className="flex flex-col">
            <PickableStamp
              label={label}
              onSelect={() => onStampSelect(stamp.milestoneId)}
            >
              <BadgeStamp
                label={label}
                state={getBadgeStampState(stamp)}
                tilt={stampTilts[index % stampTilts.length]}
              />
              <span
                aria-hidden
                className="text-ink-3 text-12 mt-4 text-center leading-tight font-bold"
              >
                {stamp.label}
              </span>
            </PickableStamp>
          </li>
        );
      })}
    </ul>
  );
};
