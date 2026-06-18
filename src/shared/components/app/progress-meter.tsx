import { cn } from "@/lib/utils";

type ProgressMeterProps = {
  className?: string;
  label?: string;
  max?: number;
  value: number;
};

export function ProgressMeter({
  className,
  label,
  max = 100,
  value,
}: ProgressMeterProps) {
  const safeMax = max > 0 ? max : 100;
  const safeValue = Math.min(Math.max(value, 0), safeMax);
  const percentage = Math.round((safeValue / safeMax) * 100);

  return (
    <div className={cn("space-y-2", className)}>
      {label ? (
        <div className="flex items-center justify-between gap-3 text-sm">
          <span className="text-foreground font-medium">{label}</span>
          <span className="text-muted-foreground">{percentage}%</span>
        </div>
      ) : null}
      <div
        className="bg-muted h-2 overflow-hidden rounded-full"
        role="progressbar"
        aria-valuemin={0}
        aria-valuemax={safeMax}
        aria-valuenow={safeValue}
        aria-label={label ?? "Progress"}
      >
        <div
          className="bg-primary h-full rounded-full transition-[width]"
          style={{ width: `${percentage}%` }}
        />
      </div>
    </div>
  );
}
