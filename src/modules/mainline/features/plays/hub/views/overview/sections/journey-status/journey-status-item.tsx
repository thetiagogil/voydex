import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";
import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";

type JourneyStatusItemProps = {
  children: ReactNode;
  contentClassName?: string;
  icon: AppIconComponent;
  label: string;
};

export const JourneyStatusItem = ({
  children,
  contentClassName,
  icon,
  label,
}: JourneyStatusItemProps) => {
  return (
    <div className="grid min-w-0 grid-cols-[2rem_minmax(0,1fr)] gap-x-3 gap-y-2">
      <span className="border-line bg-surface-2 text-primary row-span-2 flex size-8 items-center justify-center rounded-full border">
        <AppIcon icon={icon} size="sm" aria-hidden />
      </span>
      <p className="text-muted-foreground self-center text-xs leading-5 font-medium tracking-wide uppercase">
        {label}
      </p>

      <div
        className={cn("col-start-2 min-w-0 content-start", contentClassName)}
      >
        {children}
      </div>
    </div>
  );
};
