import { Card } from "@/components/ui/card";
import { cn } from "@/lib/utils/cn";
import {
  STATUS_VARIANT_META,
  type StatusVariant,
} from "@/shared/constants/play-statuses";

type StatCardProps = {
  icon: React.ReactNode;
  value: string | number;
  label?: string;
  variant?: StatusVariant | "default";
};

export const StatCard = ({
  icon,
  value,
  label,
  variant = "default",
}: StatCardProps) => {
  const defaultColors = {
    icon: "text-foreground",
    bg: "bg-foreground/10",
    text: "text-foreground",
  };
  const styles =
    variant === "default" ? defaultColors : STATUS_VARIANT_META[variant].colors;

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
