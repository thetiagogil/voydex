import { COLOR_VARIANTS } from "@/shared/ui/colors";
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
  blue: COLOR_VARIANTS.blue.text,
  orange: COLOR_VARIANTS.orange.text,
  green: COLOR_VARIANTS.green.text,
  yellow: COLOR_VARIANTS.yellow.text,
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
