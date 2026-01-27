import { type ReactNode } from "react";
import { Badge } from "../ui/badge";

interface QuickInfoProps {
  value: string | number;
  title: string;
  icon?: ReactNode;
  variant?: "default" | "primary" | "blue" | "orange" | "green" | "yellow";
  isBadge?: boolean;
}

const styles = {
  default: "text-muted-foreground",
  primary: "text-primary",
  blue: "text-blue-600 dark:text-blue-400",
  orange: "text-orange-600 dark:text-orange-400",
  green: "text-green-600 dark:text-green-400",
  yellow: "text-yellow-600 dark:text-yellow-400",
};

export const QuickInfo = ({
  value,
  title,
  icon,
  variant = "default",
  isBadge = false,
}: QuickInfoProps) => {
  return isBadge ? (
    <Badge variant="outline" className={"gap-1 py-1"} title={title}>
      <div className={styles[variant]}>{icon}</div>
      <p className={styles[variant]}>{value}</p>
    </Badge>
  ) : (
    <div className="flex items-center gap-1 text-sm" title={title}>
      <div className={styles[variant]}>{icon}</div>
      <p className={styles[variant]}>{value}</p>
    </div>
  );
};
