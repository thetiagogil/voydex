import type { ReactNode } from "react";

import { Progress } from "@/shared/components/ui/progress";
import { cn } from "@/shared/utils/cn";

type ProgressMeterProps = {
  className?: string;
  /* One quiet line under the bar, such as "112 of 400 caught". */
  detail?: ReactNode;
  label?: string;
  max?: number;
  value: number;
};

/*
 * v3's progress metric: a name, a big Fredoka figure, a bar in the context
 * colour and one line of detail. Quiet: no card of its own.
 */
export const ProgressMeter = ({
  className,
  detail,
  label,
  max = 100,
  value,
}: ProgressMeterProps) => {
  const safeMax = max > 0 ? max : 100;
  const safeValue = Math.min(Math.max(value, 0), safeMax);
  const percentage = Math.round((safeValue / safeMax) * 100);

  return (
    <div
      className={cn(
        "grid grid-cols-[minmax(0,1fr)_auto] items-end gap-x-3 gap-y-1",
        className,
      )}
    >
      <span className="text-16 truncate font-extrabold">{label}</span>
      <span className="font-display text-28 leading-none font-semibold tracking-[-0.02em] tabular-nums">
        {percentage}
        <small className="text-ink-3 ml-px text-[0.5em]">%</small>
      </span>
      <Progress
        value={safeValue}
        max={safeMax}
        aria-label={label ? `${label} progress` : "Progress"}
        className="col-span-2 mt-1.5 [&_[data-slot=progress-track]]:h-3.5"
      />
      {detail ? (
        <span className="text-13 text-ink-2 col-span-2 font-semibold">
          {detail}
        </span>
      ) : null}
    </div>
  );
};
