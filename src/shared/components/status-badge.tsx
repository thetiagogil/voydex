import { Badge } from "@/shared/components/ui/badge";
import { cn } from "@/shared/utils/cn";

/* Meaning colours are small marks: a pill, never a filled banner. */
export type StatusBadgeTone = "danger" | "gold" | "neutral" | "ok" | "warn";

type StatusBadgeProps = {
  children: React.ReactNode;
  className?: string;
  tone?: StatusBadgeTone;
};

const toneClassNames: Record<StatusBadgeTone, string> = {
  danger: "bg-danger-soft text-danger-deep",
  gold: "bg-warn-soft text-warn-ink",
  neutral: "bg-surface-2 text-ink-2",
  ok: "bg-ok-soft text-ok-deep",
  warn: "bg-warn-soft text-warn-ink",
};

export const StatusBadge = ({
  children,
  className,
  tone = "neutral",
}: StatusBadgeProps) => {
  return (
    <Badge
      variant="outline"
      className={cn("border-transparent", toneClassNames[tone], className)}
    >
      {children}
    </Badge>
  );
};
