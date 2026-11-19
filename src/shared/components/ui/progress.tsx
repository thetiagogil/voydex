"use client";

import { Progress as ProgressPrimitive } from "@base-ui/react/progress";
import { cn } from "@/shared/utils/cn";

/*
 * How far along something is, as a bar in the progress blue. `showValue`
 * is the thick bar (20px) with its figure written inside the fill, or just
 * past it while the fill is too short to hold it, so a row needs no column
 * of numbers beside its bars. `emptyLabel` is what an empty bar says
 * instead of 0%, such as "Off" for a part a Play doesn't track.
 */
const Progress = ({
  className,
  children,
  emptyLabel,
  max = 100,
  showValue = false,
  value,
  ...props
}: ProgressPrimitive.Root.Props & {
  emptyLabel?: string;
  showValue?: boolean;
}) => {
  const percent =
    typeof value === "number" && max > 0
      ? Math.round(Math.min(Math.max(value / max, 0), 1) * 100)
      : 0;
  const isInside = percent >= 24;

  return (
    <ProgressPrimitive.Root
      value={value}
      max={max}
      data-slot="progress"
      className={cn("flex flex-wrap gap-3", className)}
      {...props}
    >
      {children}
      <ProgressTrack className={showValue ? "h-5" : undefined}>
        <ProgressIndicator />
        {showValue ? (
          <span
            aria-hidden
            style={
              emptyLabel
                ? undefined
                : isInside
                  ? { right: `${100 - percent}%` }
                  : { left: `${percent}%` }
            }
            className={cn(
              "text-12 pointer-events-none absolute inset-y-0 flex items-center px-2 font-extrabold tabular-nums",
              emptyLabel
                ? "text-ink-3"
                : isInside
                  ? "text-white"
                  : "text-ink-2",
            )}
          >
            {emptyLabel ?? `${percent}%`}
          </span>
        ) : null}
      </ProgressTrack>
    </ProgressPrimitive.Root>
  );
};

const ProgressTrack = ({
  className,
  ...props
}: ProgressPrimitive.Track.Props) => {
  return (
    <ProgressPrimitive.Track
      className={cn(
        "bg-track relative flex h-3 w-full items-center overflow-x-hidden rounded-full",
        className,
      )}
      data-slot="progress-track"
      {...props}
    />
  );
};

const ProgressIndicator = ({
  className,
  ...props
}: ProgressPrimitive.Indicator.Props) => {
  return (
    <ProgressPrimitive.Indicator
      data-slot="progress-indicator"
      className={cn(
        "bg-progress h-full rounded-full transition-all duration-700",
        className,
      )}
      {...props}
    />
  );
};

export { Progress, ProgressTrack, ProgressIndicator };
