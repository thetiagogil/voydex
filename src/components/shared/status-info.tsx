import { cn } from "@/lib/utils/cn";
import {
  CircleCheck,
  Compass,
  PauseCircle,
  Target,
  XCircle,
} from "lucide-react";
import { Badge } from "../ui/badge";

interface StatusInfoProps {
  status: "total" | PlayStatus;
  value?: string | number;
  isBadge?: boolean;
}

const getStatusVariant = (props: StatusInfoProps) => {
  const { status, value, isBadge } = props;
  const smIcon = "h-3 w-3";
  const lgIcon = "h-4 w-4";
  switch (status) {
    case "total":
      return {
        icon: <Compass className={cn(value ? smIcon : lgIcon)} />,
        title: "Total plays",
        className: cn(
          "text-blue-600 dark:text-blue-400 border-0",
          isBadge && "bg-blue-500/10",
        ),
      };
    case "active":
      return {
        icon: <Target className={cn(value ? smIcon : lgIcon)} />,
        title: "Active plays",
        className: cn(
          "text-orange-600 dark:text-orange-400 border-0",
          isBadge && "bg-orange-500/10",
        ),
      };
    case "completed":
      return {
        icon: <CircleCheck className={cn(value ? smIcon : lgIcon)} />,
        title: "Completed plays",
        className: cn(
          "text-green-600 dark:text-green-400 border-0",
          isBadge && "bg-green-500/10",
        ),
      };
    case "paused":
      return {
        icon: <PauseCircle className={cn(value ? smIcon : lgIcon)} />,
        title: "Paused plays",
        className: cn(
          "text-yellow-600 dark:text-yellow-400 border-0",
          isBadge && "bg-yellow-500/10",
        ),
      };
    case "dropped":
      return {
        icon: <XCircle className={cn(value ? smIcon : lgIcon)} />,
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
