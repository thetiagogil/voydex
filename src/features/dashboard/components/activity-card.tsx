import { Icon } from "@/components/shared/icon";
import { cn } from "@/lib/utils/cn";
import { formatTime } from "@/lib/utils/common";
import Link from "next/link";
import { DASHBOARD_ACTIVITY_VARIANT_META } from "../constants";
import type { DashboardActivity } from "../types";

type ActivityCardProps = {
  activity: DashboardActivity;
};

export const ActivityCard = ({ activity }: ActivityCardProps) => {
  const meta = DASHBOARD_ACTIVITY_VARIANT_META[activity.variant];
  return (
    <Link href={activity.href}>
      <div className="bg-foreground/5 hover:bg-foreground/10 flex items-start gap-3 rounded-lg p-3 transition-colors">
        <div className="flex-shrink-0">
          <div
            className={cn(
              "flex h-10 w-10 items-center justify-center rounded-lg",
              meta.colors.bg,
            )}
          >
            <Icon type={meta.icon} className={meta.colors.icon} />
          </div>
        </div>

        <div className="min-w-0 flex-1">
          <p className="text-sm leading-tight font-medium text-wrap">
            {activity.message}
          </p>
          <p className="text-muted-foreground mt-0.5 text-xs text-wrap">
            {activity.game.name} • {activity.play.name}
          </p>
          <p className="text-muted-foreground/70 text-xs">
            {formatTime(activity.activityAt)}
          </p>
        </div>
      </div>
    </Link>
  );
};
