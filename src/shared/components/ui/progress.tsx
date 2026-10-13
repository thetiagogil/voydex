"use client";

import { Progress as ProgressPrimitive } from "@base-ui/react/progress";
import { cn } from "@/shared/utils/cn";

const Progress = ({
  className,
  children,
  value,
  ...props
}: ProgressPrimitive.Root.Props) => {
  return (
    <ProgressPrimitive.Root
      value={value}
      data-slot="progress"
      className={cn("flex flex-wrap gap-3", className)}
      {...props}
    >
      {children}
      <ProgressTrack>
        <ProgressIndicator />
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
        "bg-track relative flex h-2.5 w-full items-center overflow-x-hidden rounded-full shadow-[inset_0_2px_0_rgb(90_70_35_/0.08)]",
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
        "bg-game h-full rounded-full shadow-[inset_0_-3px_0_rgb(0_0_0_/0.12)] transition-all duration-700",
        className,
      )}
      {...props}
    />
  );
};

const ProgressLabel = ({
  className,
  ...props
}: ProgressPrimitive.Label.Props) => {
  return (
    <ProgressPrimitive.Label
      className={cn("text-14 font-extrabold", className)}
      data-slot="progress-label"
      {...props}
    />
  );
};

const ProgressValue = ({
  className,
  ...props
}: ProgressPrimitive.Value.Props) => {
  return (
    <ProgressPrimitive.Value
      className={cn(
        "text-14 text-ink-2 ml-auto font-bold tabular-nums",
        className,
      )}
      data-slot="progress-value"
      {...props}
    />
  );
};

export {
  Progress,
  ProgressTrack,
  ProgressIndicator,
  ProgressLabel,
  ProgressValue,
};
