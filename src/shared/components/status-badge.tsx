import { Badge } from "@/shared/components/ui/badge";
import { cn } from "@/shared/utils/cn";

/* A meaning, as a small mark: a pill with a dot, never a filled banner. */
export type StatusBadgeTone =
  | "danger"
  | "gold"
  | "calm"
  | "neutral"
  | "ok"
  | "warn";

export type StatusBadgeSize = "md" | "sm" | "xs";

/* Each tone's dot: the meaning's own colour, stronger than its pill. */
const dotClassNames: Record<StatusBadgeTone, string> = {
  calm: "bg-calm",
  danger: "bg-danger",
  gold: "bg-gold-deep",
  neutral: "bg-mute",
  ok: "bg-ok",
  warn: "bg-warn",
};

type StatusBadgeProps = {
  children: React.ReactNode;
  className?: string;
  /* The dot before the words; leave it off where an icon already leads. */
  dot?: boolean;
  size?: StatusBadgeSize;
  tone?: StatusBadgeTone;
};

export const StatusBadge = ({
  children,
  className,
  dot = true,
  size = "sm",
  tone = "neutral",
}: StatusBadgeProps) => {
  return (
    <Badge variant={tone} size={size} className={className}>
      {dot ? (
        <span
          aria-hidden
          className={cn(
            "shrink-0 rounded-full",
            size === "md" ? "size-2" : "size-1.5",
            dotClassNames[tone],
          )}
        />
      ) : null}
      {children}
    </Badge>
  );
};
