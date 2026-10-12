import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

export const MainlinePlayMetricIcon = ({
  className,
  icon: Icon,
}: {
  className?: string;
  icon: AppIconComponent;
}) => {
  return (
    <span
      className={cn(
        "border-line bg-muted/30 text-primary flex size-12 shrink-0 items-center justify-center rounded-xl border",
        className,
      )}
    >
      <AppIcon icon={Icon} aria-hidden className="size-7" strokeWidth={1.8} />
    </span>
  );
};
