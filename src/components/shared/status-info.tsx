import { cn } from "@/lib/utils/cn";
import { Badge } from "../ui/badge";
import { Icon } from "./icon";

interface StatusInfoProps {
  status: "total" | PlayStatus;
  value?: string | number;
  isBadge?: boolean;
}

const getStatusVariant = (props: StatusInfoProps) => {
  const { status, value, isBadge } = props;
  const size = value ? 12 : 16;
  switch (status) {
    case "total":
      return {
        icon: <Icon name="total" size={size} />,
        title: "Total plays",
        className: cn(
          "text-blue-600 dark:text-blue-400 border-0",
          isBadge && "bg-blue-500/10",
        ),
      };
    case "active":
      return {
        icon: <Icon name="active" size={size} />,
        title: "Active plays",
        className: cn(
          "text-orange-600 dark:text-orange-400 border-0",
          isBadge && "bg-orange-500/10",
        ),
      };
    case "completed":
      return {
        icon: <Icon name="completed" size={size} />,
        title: "Completed plays",
        className: cn(
          "text-green-600 dark:text-green-400 border-0",
          isBadge && "bg-green-500/10",
        ),
      };
    case "paused":
      return {
        icon: <Icon name="paused" size={size} />,
        title: "Paused plays",
        className: cn(
          "text-yellow-600 dark:text-yellow-400 border-0",
          isBadge && "bg-yellow-500/10",
        ),
      };
    case "dropped":
      return {
        icon: <Icon name="dropped" size={size} />,
        title: "Dropped plays",
        className: "text-muted-foreground",
      };
    default:
      throw new Error(`Unknown status: ${status}`);
  }
};

export const StatusInfo = ({ status, value, isBadge }: StatusInfoProps) => {
  const { icon, title, className } = getStatusVariant({
    status,
    value,
    isBadge,
  });
  return isBadge ? (
    <Badge
      variant="outline"
      className={cn("gap-1 py-1", className)}
      title={title}
    >
      {icon}
      {value !== undefined && <p>{value}</p>}
    </Badge>
  ) : (
    <div
      className={cn("flex items-center gap-1 text-sm", className)}
      title={title}
    >
      {icon}
      {value !== undefined && <p>{value}</p>}
    </div>
  );
};
