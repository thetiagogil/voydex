import { cn } from "@/shared/utils/cn";
import type { ProgressSummaryItem } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/progress-summary/progress-summary-model";
import { AppIcon } from "@/shared/components/app-icon";
import { Progress } from "@/shared/components/ui/progress";

type ProgressSummaryRowProps = {
  item: ProgressSummaryItem;
};

const toneClassNames: Record<
  ProgressSummaryItem["tone"],
  {
    icon: string;
    progress: string;
  }
> = {
  info: {
    icon: "text-info",
    progress: "[&_[data-slot=progress-indicator]]:bg-info",
  },
  milestone: {
    icon: "text-milestone",
    progress: "[&_[data-slot=progress-indicator]]:bg-milestone",
  },
  rare: {
    icon: "text-rare",
    progress: "[&_[data-slot=progress-indicator]]:bg-rare",
  },
  success: {
    icon: "text-success",
    progress: "[&_[data-slot=progress-indicator]]:bg-success",
  },
};

export const ProgressSummaryRow = ({ item }: ProgressSummaryRowProps) => {
  const toneClassName = toneClassNames[item.tone];
  const countText = `${item.completedCount} / ${item.totalCount}`;

  return (
    <div className="grid min-w-0 grid-cols-[minmax(6rem,1fr)_minmax(5rem,1.25fr)_3rem] items-center gap-2 sm:gap-3">
      <div className="flex min-w-0 items-center gap-2">
        <AppIcon
          icon={item.icon}
          size="md"
          className={cn("shrink-0", toneClassName.icon)}
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
        className={cn("min-w-0", toneClassName.progress)}
      />

      <span className="text-muted-foreground text-right text-xs tabular-nums">
        {countText}
      </span>
    </div>
  );
};
