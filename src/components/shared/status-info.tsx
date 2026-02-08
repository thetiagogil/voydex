import { STATUS_COLORS } from "@/lib/constants/styles";
import { cn } from "@/lib/utils/cn";
import { Badge } from "../ui/badge";
import { Icon } from "./icon";

interface StatusInfoProps {
  status: "total" | PlayStatus;
  value?: string | number;
  isBadge?: boolean;
}

const STATUS_TITLES: Record<string, string> = {
  total: "Total plays",
  active: "Active plays",
  completed: "Completed plays",
  paused: "Paused plays",
  dropped: "Dropped plays",
};

const getStatusVariant = (props: StatusInfoProps) => {
  const { status, value, isBadge } = props;
  const size = value ? 12 : 16;
  const colors = STATUS_COLORS[status as keyof typeof STATUS_COLORS];

  return {
    icon: <Icon type={status as any} size={size} />,
    title: STATUS_TITLES[status],
    className: cn(colors.icon, isBadge && colors.bg),
  };
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
      className={cn("gap-1 border-0 py-1", className)}
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
