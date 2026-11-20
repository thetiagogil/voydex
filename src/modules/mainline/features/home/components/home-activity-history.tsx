"use client";

import { useState } from "react";

import {
  buildHomeActivityWeeks,
  formatHomeActivityDay,
  getHomeActivityMonthLabels,
  type HomeActivityDay,
} from "@/modules/mainline/features/home/data/home-activity-model";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { cn } from "@/shared/utils/cn";

/* Phones show the last half of the weeks, so each day stays a fair size. */
const PHONE_WEEKS = 13;

const levelClassNames = [
  "bg-track",
  "bg-calm/30",
  "bg-calm/60",
  "bg-calm",
] as const;

const describeDay = (day: HomeActivityDay) =>
  `${formatHomeActivityDay(day.day)}: ${day.count} ${day.count === 1 ? "moment" : "moments"}`;

/*
 * A square for each of the last 26 weeks' days, Sunday at the top, the
 * deeper the blue the more moments happened that day, with the months over
 * the columns and a legend. Pointing at (or tabbing to) a day with moments
 * says which day it is and how many; otherwise the line sums the weeks up.
 */
export const HomeActivityHistory = ({ instants }: { instants: string[] }) => {
  const { timeZone } = useViewerClock();
  const [pointed, setPointed] = useState<HomeActivityDay | null>(null);
  const weeks = buildHomeActivityWeeks(instants, timeZone);
  const months = getHomeActivityMonthLabels(weeks);
  const activeDays = weeks.flat().filter((day) => day.count > 0);
  const hiddenOnPhone = (weekIndex: number) =>
    weekIndex < weeks.length - PHONE_WEEKS && "max-sm:hidden";

  return (
    <div className="flex flex-col gap-2">
      <div
        aria-hidden
        className="text-ink-3 copy-meta grid auto-cols-fr grid-flow-col gap-1 sm:gap-1.5"
      >
        {months.map((month, weekIndex) => (
          <span
            key={weeks[weekIndex][0].day}
            className={cn(
              "overflow-visible whitespace-nowrap",
              hiddenOnPhone(weekIndex),
            )}
          >
            {month ?? ""}
          </span>
        ))}
      </div>
      <div
        role="group"
        aria-label="Activity history"
        className="grid auto-cols-fr grid-flow-col grid-rows-7 gap-1 sm:gap-1.5"
        onMouseLeave={() => setPointed(null)}
      >
        {weeks.flatMap((week, weekIndex) =>
          week.map((day) => {
            const className = cn(
              "aspect-square rounded-[3px]",
              day.future ? "bg-transparent" : levelClassNames[day.level],
              hiddenOnPhone(weekIndex),
            );

            return day.count ? (
              <button
                key={day.day}
                type="button"
                aria-label={describeDay(day)}
                className={cn(
                  className,
                  "focus-ring",
                  pointed?.day === day.day && "ring-ink ring-2 ring-offset-1",
                )}
                onMouseEnter={() => setPointed(day)}
                onFocus={() => setPointed(day)}
                onBlur={() => setPointed(null)}
                onClick={() => setPointed(day)}
              />
            ) : (
              <span key={day.day} aria-hidden className={className} />
            );
          }),
        )}
      </div>
      <div className="flex flex-wrap items-center justify-between gap-x-4 gap-y-1">
        <p aria-live="polite" className="text-ink-2 copy-note">
          {pointed
            ? describeDay(pointed)
            : activeDays.length
              ? `Moments on ${activeDays.length} ${activeDays.length === 1 ? "day" : "days"} in the last ${weeks.length} weeks`
              : `Nothing recorded in the last ${weeks.length} weeks`}
        </p>
        <p aria-hidden className="text-ink-3 copy-meta flex items-center gap-1">
          Less
          {levelClassNames.map((levelClassName) => (
            <span
              key={levelClassName}
              className={cn("size-3 rounded-[3px]", levelClassName)}
            />
          ))}
          More
        </p>
      </div>
    </div>
  );
};
