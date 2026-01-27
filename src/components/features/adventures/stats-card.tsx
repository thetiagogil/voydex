import { Card } from "@/components/ui/card";
import { cn } from "@/lib/utils/cn";

interface QuickStatProps {
  icon: React.ReactNode;
  value: string | number;
  label?: string;
  variant?: "default" | "primary" | "orange" | "green";
}

const bgStyles = {
  default: "bg-muted",
  primary: "bg-primary/10",
  orange: "bg-orange-500/10",
  green: "bg-green-500/10",
};

const textStyles = {
  default: "",
  primary: "text-primary",
  orange: "text-orange-600 dark:text-orange-400",
  green: "text-green-600 dark:text-green-400",
};

const valueStyles = {
  default: "",
  primary: "text-primary",
  orange: "text-orange-600 dark:text-orange-400",
  green: "text-green-600 dark:text-green-400",
};

export const StatsCard = ({
  icon,
  value,
  label,
  variant = "default",
}: QuickStatProps) => {
  return (
    <Card>
      <div className="flex flex-col items-center gap-3 md:flex-row">
        <div className="flex items-center gap-2">
          <div
            className={cn(
              "rounded-xl p-2 md:p-3",
              bgStyles[variant],
              textStyles[variant],
            )}
          >
            {icon}
          </div>

          <p
            className={cn("text-xl font-bold md:hidden", valueStyles[variant])}
          >
            {value}
          </p>
        </div>

        <div className="text-center md:text-left">
          <p
            className={cn(
              "hidden text-xl font-bold md:inline-block",
              valueStyles[variant],
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
