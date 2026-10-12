import type {
  TeamEventDisplay,
  TeamEventTone,
} from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-display";
import { AppIcon } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

const toneClassNames: Record<TeamEventTone, string> = {
  added: "border-primary/25 bg-primary/7 text-primary",
  evolved: "border-orange-300/60 bg-orange-50/80 text-orange-700",
  "form-changed": "border-violet-300/60 bg-violet-50/80 text-violet-700",
  neutral: "border-line bg-muted/35 text-muted-foreground",
  replaced: "border-blue-300/60 bg-blue-50/80 text-blue-700",
  retired: "border-red-300/60 bg-red-50/80 text-red-700",
};

const toneTextClassNames: Record<TeamEventTone, string> = {
  added: "text-primary",
  evolved: "text-orange-700",
  "form-changed": "text-violet-700",
  neutral: "text-muted-foreground",
  replaced: "text-blue-700",
  retired: "text-red-700",
};

type TeamHistoryEventTypeProps = {
  className?: string;
  compact?: boolean;
  display: TeamEventDisplay;
};

export const TeamHistoryEventType = ({
  className,
  compact = false,
  display,
}: TeamHistoryEventTypeProps) => {
  return (
    <span
      className={cn(
        "flex min-w-0 items-center gap-2.5",
        compact ? "justify-start" : "sm:flex-col sm:justify-center sm:gap-1.5",
        className,
      )}
    >
      <span
        className={cn(
          "flex shrink-0 items-center justify-center rounded-full border",
          compact ? "size-9" : "size-10",
          toneClassNames[display.tone],
        )}
      >
        <AppIcon icon={display.icon} size="sm" aria-hidden />
      </span>
      <span
        className={cn(
          "truncate text-xs font-semibold",
          toneTextClassNames[display.tone],
        )}
      >
        {display.label}
      </span>
    </span>
  );
};
