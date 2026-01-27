import { type ReactNode } from "react";
import { Badge } from "../ui/badge";

interface StatBadgeProps {
  icon: ReactNode;
  value: string | number;
  title: string;
  variant?: "default" | "primary" | "orange" | "green" | "yellow";
}

const textStyles = {
  default: "text-muted-foreground",
  primary: "text-blue-600 dark:text-blue-400",
  orange: "text-orange-600 dark:text-orange-400",
  green: "text-green-600 dark:text-green-400",
  yellow: "text-yellow-600 dark:text-yellow-400",
};

const valueStyles = {
  default: "text-muted-foreground",
  primary: "text-blue-600 dark:text-blue-400",
  orange: "text-orange-600 dark:text-orange-400",
  green: "text-green-600 dark:text-green-400",
  yellow: "text-yellow-600 dark:text-yellow-400",
};

export const StatBadge = ({
  icon,
  value,
  title,
  variant = "default",
}: StatBadgeProps) => {
  return (
    <Badge variant="outline" className={"gap-1 py-1"} title={title}>
      <div className={textStyles[variant]}>{icon}</div>
      <p className={valueStyles[variant]}>{value}</p>
    </Badge>
  );
};
