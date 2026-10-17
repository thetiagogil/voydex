import { Badge } from "@/shared/components/ui/badge";
import { cn } from "@/shared/utils/cn";

/* Meaning colours are small marks: a pill, never a filled banner. */
export type StatusBadgeTone =
  | "danger"
  | "gold"
  | "calm"
  | "neutral"
  | "ok"
  | "warn";

export type StatusBadgeSize = "md" | "sm";

type StatusBadgeProps = {
  children: React.ReactNode;
  className?: string;
  /* `md` is v3's `.pstate`: 13px extrabold with a 14px mark. */
  size?: StatusBadgeSize;
  tone?: StatusBadgeTone;
};

const sizeClassNames: Record<StatusBadgeSize, string> = {
  md: "text-13 h-auto gap-1.5 px-2.75 py-1 font-extrabold [&>svg]:size-3.5!",
  sm: "",
};

const toneClassNames: Record<StatusBadgeTone, string> = {
  danger: "bg-danger-soft text-danger-deep",
  gold: "bg-gold text-ink",
  calm: "bg-calm-soft text-calm-ink",
  neutral: "bg-surface-2 text-ink-2",
  ok: "bg-ok-soft text-ok-deep",
  warn: "bg-warn-soft text-warn-ink",
};

export const StatusBadge = ({
  children,
  className,
  size = "sm",
  tone = "neutral",
}: StatusBadgeProps) => {
  return (
    <Badge
      variant="outline"
      className={cn(
        "border-transparent",
        sizeClassNames[size],
        toneClassNames[tone],
        className,
      )}
    >
      {children}
    </Badge>
  );
};
