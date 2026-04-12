import { cn } from "@/lib/utils/cn";
import { Badge } from "@/shared/components/ui/badge";
import {
  STATUS_VARIANT_META,
  type StatusVariant,
} from "@/shared/constants/play-statuses";
import { Icon } from "./icon";

interface StatusInfoProps {
  status: StatusVariant;
  value?: string | number;
  isBadge?: boolean;
}

export const StatusInfo = ({ status, value, isBadge }: StatusInfoProps) => {
  const meta = STATUS_VARIANT_META[status];
  const size = value ? 12 : 16;
  const className = cn(meta.colors.icon, isBadge && meta.colors.bg);

  return isBadge ? (
    <Badge
      variant="outline"
      className={cn("gap-1 border-0 py-1", className)}
      title={meta.label}
    >
      <Icon type={meta.icon} size={size} />
      {value !== undefined && <p>{value}</p>}
    </Badge>
  ) : (
    <div
      className={cn("flex items-center gap-1 text-sm", className)}
      title={meta.label}
    >
      <Icon type={meta.icon} size={size} />
      {value !== undefined && <p>{value}</p>}
    </div>
  );
};
