import { Progress } from "@/shared/components/ui/progress";
import { cn } from "@/shared/utils/cn";

type ProgressMeterProps = {
  className?: string;
  label?: string;
  max?: number;
  value: number;
};

export const ProgressMeter = ({
  className,
  label,
  max = 100,
  value,
}: ProgressMeterProps) => {
  const safeMax = max > 0 ? max : 100;
  const safeValue = Math.min(Math.max(value, 0), safeMax);
  const percentage = Math.round((safeValue / safeMax) * 100);
  return (
    <div className={cn("flex flex-col gap-2", className)}>
      {label ? (
        <div className="flex items-center justify-between gap-3 text-sm">
          <span className="text-foreground font-medium">{label}</span>
          <span className="text-muted-foreground">{percentage}%</span>
        </div>
      ) : null}
      <Progress
        value={safeValue}
        max={safeMax}
        aria-label={label ?? "Progress"}
      />
    </div>
  );
};
