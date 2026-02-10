import { Card } from "@/components/ui/card";
import { STATUS_COLORS, type StatusType } from "@/lib/constants/styles";

import { cn } from "@/lib/utils/cn";

interface QuickStatProps {
  icon: React.ReactNode;
  value: string | number;
  label?: string;
  variant?: StatusType | "default";
}

export const StatsCard = ({
  icon,
  value,
  label,
  variant = "default",
}: QuickStatProps) => {
  const defaultColors = {
    icon: "text-foreground",
    bg: "bg-foreground/10",
    text: "text-foreground",
  };
  const styles =
    variant === "default" || !(variant in STATUS_COLORS)
      ? defaultColors
      : STATUS_COLORS[variant as keyof typeof STATUS_COLORS];

  return (
    <Card>
      <div className="flex flex-col items-center gap-3 md:flex-row">
        <div className="flex items-center gap-2">
          <div className={cn("rounded-xl p-2 md:p-3", styles.bg, styles.text)}>
            {icon}
          </div>

          <p className={cn("text-xl font-bold md:hidden", styles.text)}>
            {value}
          </p>
        </div>

        <div className="text-center md:text-left">
          <p
            className={cn(
              "hidden text-xl font-bold md:inline-block",
              styles.text,
            )}
          >
            {value}
          </p>

          <p className="text-muted-foreground text-xs">{label}</p>
        </div>
      </div>
    </Card>
  );
};
