import { Badge } from "@/shared/components/ui/badge";
import { cn } from "@/lib/utils";
type StatusBadgeTone =
  | "battle"
  | "decision"
  | "destructive"
  | "info"
  | "milestone"
  | "neutral"
  | "success"
  | "warning";
type StatusBadgeProps = {
  children: React.ReactNode;
  className?: string;
  tone?: StatusBadgeTone;
};
const toneClassNames: Record<StatusBadgeTone, string> = {
  battle: "bg-battle/10 text-battle border-battle/20",
  decision: "bg-decision/10 text-decision border-decision/20",
  destructive: "bg-destructive/10 text-destructive border-destructive/20",
  info: "bg-info/10 text-info border-info/20",
  milestone: "bg-milestone/10 text-milestone border-milestone/20",
  neutral: "bg-muted text-muted-foreground border-transparent",
  success: "bg-success/10 text-success border-success/20",
  warning: "bg-warning/10 text-warning border-warning/20",
};
export const StatusBadge = ({
  children,
  className,
  tone = "neutral",
}: StatusBadgeProps) => {
  return (
    <Badge
      variant="outline"
      className={cn("capitalize", toneClassNames[tone], className)}
    >
      {children}
    </Badge>
  );
};
