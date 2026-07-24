import type { ProgressSummaryItem } from "./progress-summary-model";
import { AppIcon } from "@/shared/components/app-icon";
import { Progress } from "@/shared/components/ui/progress";

type ProgressSummaryRowProps = {
  item: ProgressSummaryItem;
};

export const ProgressSummaryRow = ({ item }: ProgressSummaryRowProps) => {
  return (
    <div className="grid min-w-0 grid-cols-[minmax(6rem,1fr)_minmax(5rem,1.25fr)_3rem] items-center gap-2 sm:gap-3">
      <div className="flex min-w-0 items-center gap-2">
        <AppIcon
          icon={item.icon}
          size="md"
          className="text-primary shrink-0"
          aria-hidden
        />
        <span className="text-foreground truncate text-sm font-medium">
          {item.label}
        </span>
      </div>

      <Progress
        value={item.percent}
        max={100}
        aria-label={`${item.label} progress`}
        className="min-w-0"
      />

      <span className="text-muted-foreground text-right text-xs tabular-nums">
        {item.percent}%
      </span>
    </div>
  );
};
