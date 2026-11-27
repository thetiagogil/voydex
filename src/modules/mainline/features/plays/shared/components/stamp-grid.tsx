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
  compact,
  label,
  onSelect,
}: {
  children: ReactNode;
  compact: boolean;
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
        /* A stamp keeps its size where its column is wider than it. */
        "focus-ring ease-hop flex w-full flex-col transition-transform duration-200 hover:-translate-y-1",
        compact ? "max-w-11 rounded-full" : "max-w-14 rounded-lg sm:max-w-16",
        isPopping && "animate-pop",
      )}
    >
      {children}
    </button>
  );
};

/* Stamps tilt at rest, each by its own small angle. */
const stampTilts = [-6, 4, -3, 7, -5, 3, -7, 5, -2, 4, -4, 6];

/*
 * A Play's stamp as a badge stamp: its badge (or trial) or League icon,
 * earned or ahead.
 */
export const getBadgeStampState = (stamp: PlayStamp): BadgeStampState => {
  if (stamp.kind !== "league") {
    return stamp.state === "earned"
      ? {
          badge: stamp.badge,
          grand: stamp.kind === "grand-trial",
          kind: "badge",
        }
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
 * In Story recording never moves it: the row you see in the list slaps
 * instead. Overview has no such row, so there the stamp recorded a moment
 * ago slaps down in the grid (`slapMilestoneId`). A client part so the day
 * each was earned reads in the viewer's time zone.
 */
export const StampGrid = ({
  className,
  compact = false,
  earnedMilestoneId = null,
  label: listLabel,
  onSlapEnd,
  onStampSelect,
  scrollLabel,
  slapMilestoneId = null,
  stamps,
}: {
  /* The grid's columns and gaps. */
  className?: string;
  /*
   * A badge case: small stamps with no words under them (each still says
   * its name to a pointer, the keyboard and a screen reader), so a game with
   * seventeen fits where another has eight.
   */
  compact?: boolean;
  /* Names the list where it doesn't scroll. */
  label?: string;
  /* Recorded a moment ago: shown earned at once, before the save comes back. */
  earnedMilestoneId?: number | null;
  /* Called once the slap has played. */
  onSlapEnd?: () => void;
  /* Opens a stamp's milestone, such as Story's row and panel. */
  onStampSelect: (milestoneId: number) => void;
  /*
   * Names a row that scrolls sideways (phones), which can then take focus
   * so the keyboard can scroll it.
   */
  scrollLabel?: string;
  /* The stamp that slaps down now. */
  slapMilestoneId?: number | null;
  stamps: PlayStamp[];
}) => {
  const clock = useViewerClock();

  return (
    <ul
      aria-label={scrollLabel ?? listLabel}
      tabIndex={scrollLabel ? 0 : undefined}
      className={cn("grid", scrollLabel && "focus-ring-inset", className)}
    >
      {stamps.map((saved, index) => {
        const stamp =
          saved.milestoneId === earnedMilestoneId
            ? { ...saved, state: "earned" as const }
            : saved;
        const earnedOn = formatPlayMoment(stamp.completedAt, clock)?.date;
        const label = describePlayStamp(stamp, earnedOn);

        return (
          <li key={stamp.milestoneId} className="flex flex-col items-center">
            <PickableStamp
              compact={compact}
              label={label}
              onSelect={() => onStampSelect(stamp.milestoneId)}
            >
              <BadgeStamp
                facts={{
                  description: stamp.description,
                  earnedOn,
                  name: stamp.name,
                  state: stamp.state,
                }}
                label={label}
                onSlapEnd={onSlapEnd}
                slap={stamp.milestoneId === slapMilestoneId}
                state={getBadgeStampState(stamp)}
                tilt={stampTilts[index % stampTilts.length]}
              />
              {compact ? null : (
                <span
                  aria-hidden
                  className="text-ink-3 copy-mark mt-4 text-center leading-tight"
                >
                  {stamp.label}
                </span>
              )}
            </PickableStamp>
          </li>
        );
      })}
    </ul>
  );
};
