import { Card, CardContent } from "@/components/ui/card";
import { cn } from "@/lib/utils/cn";

interface StatsCardProps {
  icon: React.ReactNode;
  value: string | number;
  label: string;
  description?: string;
  variant?: "default" | "primary" | "success" | "warning";
}

const variantStyles = {
  default: "bg-muted text-muted-foreground",
  primary: "bg-primary/10 text-primary",
  success: "bg-green-500/10 text-green-600 dark:text-green-400",
  warning: "bg-yellow-500/10 text-yellow-600 dark:text-yellow-400",
};

const valueVariantStyles = {
  default: "",
  primary: "text-primary",
  success: "text-green-600 dark:text-green-400",
  warning: "text-yellow-600 dark:text-yellow-400",
};

export const StatsCard = ({
  icon,
  value,
  label,
  description,
  variant = "default",
}: StatsCardProps) => {
  return (
    <Card>
      <CardContent>
        <div className="flex items-start gap-3">
          <div className={cn("rounded-lg p-2", variantStyles[variant])}>
            {icon}
          </div>
          <div className="flex-1 space-y-0.5">
            <p
              className={cn("text-2xl font-bold", valueVariantStyles[variant])}
            >
              {value}
            </p>
            <p className="text-muted-foreground text-sm font-medium">{label}</p>
            {description && (
              <p className="text-muted-foreground text-xs">{description}</p>
            )}
          </div>
        </div>
      </CardContent>
    </Card>
  );
};
