import type { LucideIcon } from "lucide-react";

import { cn } from "@/shared/utils/cn";

export const MainlinePlayMetricIcon = ({
  className,
  icon: Icon,
}: {
  className?: string;
  icon: LucideIcon;
}) => {
  return (
    <span
      className={cn(
        "border-app-surface-border bg-muted/30 text-primary flex size-12 shrink-0 items-center justify-center rounded-xl border",
        className,
      )}
    >
      <Icon aria-hidden className="size-7" strokeWidth={1.8} />
    </span>
  );
};
