import type { TeamEventTextPart } from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-display";
import { cn } from "@/shared/utils/cn";

export const TeamHistoryEventText = ({
  className,
  parts,
}: {
  className?: string;
  parts: TeamEventTextPart[];
}) => {
  return (
    <p className={cn("text-foreground text-sm leading-6", className)}>
      {parts.map((part, index) =>
        part.emphasized ? (
          <strong key={`${part.text}-${index}`} className="font-semibold">
            {part.text}
          </strong>
        ) : (
          <span key={`${part.text}-${index}`}>{part.text}</span>
        ),
      )}
    </p>
  );
};
