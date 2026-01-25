import { Badge } from "../ui/badge";

interface QuickStatProps {
  icon: React.ReactNode;
  value: string | number;
  title: string;
  variant?: "default" | "primary" | "orange" | "green" | "yellow";
}

const bgStyles = {
  default: "bg-muted",
  primary: "bg-primary/10",
  orange: "bg-orange-500/10",
  green: "bg-green-500/10",
  yellow: "bg-yellow-500/10",
};

const textStyles = {
  default: "",
  primary: "text-blue-600 dark:text-blue-400",
  orange: "text-orange-600 dark:text-orange-400",
  green: "text-green-600 dark:text-green-400",
  yellow: "text-yellow-600 dark:text-yellow-400",
};

const valueStyles = {
  default: "",
  primary: "text-blue-600 dark:text-blue-400",
  orange: "text-orange-600 dark:text-orange-400",
  green: "text-green-600 dark:text-green-400",
  yellow: "text-yellow-600 dark:text-yellow-400",
};

export const QuickStat = ({
  icon,
  value,
  title,
  variant = "default",
}: QuickStatProps) => {
  return (
    <Badge
      variant="outline-secondary"
      className={`gap-1 ${bgStyles[variant]}`}
      title={title}
    >
      <div className={`${textStyles[variant]}`}>{icon}</div>
      <p className={`${valueStyles[variant]}`}>{value}</p>
    </Badge>
  );
};
