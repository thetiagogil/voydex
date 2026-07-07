import type { ReactNode } from "react";

import { cn } from "@/lib/utils";
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
    <div className="grid min-w-0 grid-cols-[auto_minmax(0,1fr)] gap-x-2 gap-y-3">
      <AppIcon
        icon={icon}
        size="sm"
        aria-hidden
        className="text-muted-foreground mt-0.5"
      />
      <p className="text-muted-foreground text-xs leading-5">{label}</p>

      <div
        className={cn(
          "col-start-2 min-h-16 min-w-0 content-start",
          contentClassName,
        )}
      >
        {children}
      </div>
    </div>
  );
};
