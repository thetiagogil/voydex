import { Icon, IconType } from "@/components/shared/icon";
import { ACTIVITY_COLORS, type ActivityType } from "@/lib/constants/styles";
import { cn } from "@/lib/utils/cn";
import { formatTime } from "@/lib/utils/common";
import type { RecentActivityItem } from "@/types/dashboard";
import Link from "next/link";

interface ActivityCardProps {
  activity: RecentActivityItem;
}

const getActivityIcon = (activity: RecentActivityItem): string => {
  switch (activity.type) {
    case "play_created":
      return "play";
    case "play_completed":
      return "completed";
    case "pokemon_added":
      return "pokemon";
    case "tracking_completed":
      return "badge";
    default:
      return "pokemon";
  }
};

export const ActivityCard = ({ activity }: ActivityCardProps) => {
  return (
    <Link href={activity.href}>
      <div className="bg-foreground/5 hover:bg-foreground/10 flex items-start gap-3 rounded-lg p-3 transition-colors">
        <div className="flex-shrink-0">
          <div
            className={cn(
              "flex h-10 w-10 items-center justify-center rounded-lg",
              ACTIVITY_COLORS[getActivityIcon(activity) as ActivityType]?.bg ||
                "",
            )}
          >
            <Icon
              type={getActivityIcon(activity) as IconType}
              className={
                ACTIVITY_COLORS[getActivityIcon(activity) as ActivityType]
                  ?.icon || ""
              }
            />
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
