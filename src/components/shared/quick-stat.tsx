import { cn } from "@/lib/utils/cn";

interface QuickStatProps {
  size?: "sm" | "md" | "lg";
  icon: React.ReactNode;
  value: string | number;
  label?: string;
  variant?: "default" | "primary" | "green" | "yellow" | "orange" | "cyan";
}

const bgStyles = {
  default: "bg-muted",
  primary: "bg-primary/10",
  green: "bg-green-500/10",
  yellow: "bg-yellow-500/10",
  orange: "bg-orange-500/10",
  cyan: "bg-cyan-500/10",
};

const textStyles = {
  default: "text-muted-foreground",
  primary: "text-primary",
  green: "text-green-600 dark:text-green-400",
  yellow: "text-yellow-600 dark:text-yellow-400",
  orange: "text-orange-600 dark:text-orange-400",
  cyan: "text-cyan-600 dark:text-cyan-400",
};

const valueStyles = {
  default: "",
  primary: "text-primary",
  green: "text-green-600 dark:text-green-400",
  yellow: "text-yellow-600 dark:text-yellow-400",
  orange: "text-orange-600 dark:text-orange-400",
  cyan: "text-cyan-600 dark:text-cyan-400",
};

export const QuickStat = ({
  size = "md",
  icon,
  value,
  label,
  variant = "default",
}: QuickStatProps) => {
  return (
    <div className={`flex items-center ${size === "sm" ? "gap-1" : "gap-2"}`}>
      {size === "lg" ? (
        <div
          className={cn(
            `rounded-lg ${bgStyles[variant]} ${textStyles[variant]} p-2`,
          )}
        >
          {icon}
        </div>
      ) : (
        <div className={cn(`${textStyles[variant]}`)}>{icon}</div>
      )}

      <p
        className={cn(
          `${size === "sm" ? "text-sm" : size === "md" ? "text-xl" : "text-2xl"} ${size === "sm" ? "" : "font-bold"} ${valueStyles[variant]}`,
        )}
      >
        {value}
      </p>

      {label && (
        <p
          className={cn(
            `text-muted-foreground ${size === "sm" ? "text-xs" : "text-sm"} font-medium`,
          )}
        >
          {label}
        </p>
      )}
    </div>
  );
};
