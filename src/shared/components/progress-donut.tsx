import { cn } from "@/shared/utils/cn";

const RADIUS = 42;
const CIRCUMFERENCE = 2 * Math.PI * RADIUS;

type ProgressDonutProps = {
  className?: string;
  /* What it measures, as the meter's accessible name. */
  label: string;
  /* 0 to 100. */
  value: number;
};

/*
 * A ring that fills clockwise in the progress blue, like an EXP bar, with the figure in its
 * middle: a progress metric that fits a tile, such as Overview's trackers.
 */
export const ProgressDonut = ({
  className,
  label,
  value,
}: ProgressDonutProps) => {
  const percentage = Math.round(Math.min(Math.max(value, 0), 100));

  return (
    <div
      role="meter"
      aria-label={label}
      aria-valuemin={0}
      aria-valuemax={100}
      aria-valuenow={percentage}
      className={cn(
        "relative grid aspect-square place-items-center",
        className,
      )}
    >
      <svg
        viewBox="0 0 100 100"
        aria-hidden
        className="absolute inset-0 -rotate-90"
      >
        <circle
          cx="50"
          cy="50"
          r={RADIUS}
          fill="none"
          strokeWidth="11"
          className="stroke-track"
        />
        <circle
          cx="50"
          cy="50"
          r={RADIUS}
          fill="none"
          strokeWidth="11"
          strokeLinecap="round"
          strokeDasharray={CIRCUMFERENCE}
          strokeDashoffset={CIRCUMFERENCE * (1 - percentage / 100)}
          className={cn(
            "stroke-progress transition-[stroke-dashoffset] duration-700",
            percentage === 0 && "opacity-0",
          )}
        />
      </svg>
      <span className="font-display text-20 relative leading-none font-semibold tracking-[-0.02em] tabular-nums">
        {percentage}
        <small className="text-ink-3 ml-px text-[0.55em]">%</small>
      </span>
    </div>
  );
};
