import { cn } from "@/shared/utils/cn";

type TeamSlotLabelProps = {
  className?: string;
  label: string | number;
};

export const TeamSlotLabel = ({ className, label }: TeamSlotLabelProps) => {
  return (
    <span
      className={cn(
        "text-muted-foreground w-6 shrink-0 text-center text-xs font-semibold tabular-nums",
        className,
      )}
    >
      {label}
    </span>
  );
};
