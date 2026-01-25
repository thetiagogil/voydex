import { Card } from "@/components/ui/card";

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
      <div className="flex items-center gap-3">
        <div
          className={`rounded-xl p-3 ${bgStyles[variant]} ${textStyles[variant]} p-2`}
        >
          {icon}
        </div>

        <div>
          <p className={`text-xl font-bold ${valueStyles[variant]}`}>{value}</p>

          <p className="text-muted-foreground text-xs">{label}</p>
        </div>
      </div>
    </Card>
  );
};
