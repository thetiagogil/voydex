import { Circle, LockKeyhole } from "lucide-react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type StoryMilestoneState = "blocked" | "completed" | "pending";

export const StoryMilestoneStateRow = ({
  description,
  state,
  title,
}: {
  description: React.ReactNode;
  state: StoryMilestoneState;
  title: React.ReactNode;
}) => {
  return (
    <div className="grid grid-cols-[auto_minmax(0,1fr)] items-start gap-2">
      <span
        className={cn(
          "mt-0.5 flex size-5 items-center justify-center rounded-full",
          state === "completed"
            ? "bg-primary/10 text-primary"
            : state === "blocked"
              ? "bg-amber-500/10 text-amber-700"
              : "bg-muted text-muted-foreground",
        )}
      >
        {state === "completed" ? (
          <AppIcon icon={appIcons.product.completion} size="xs" aria-hidden />
        ) : state === "blocked" ? (
          <LockKeyhole className="size-3" aria-hidden />
        ) : (
          <Circle className="size-3" aria-hidden />
        )}
      </span>
      <div>
        <div className="text-sm font-medium">{title}</div>
        <div className="text-muted-foreground text-xs leading-5">
          {description}
        </div>
      </div>
    </div>
  );
};
