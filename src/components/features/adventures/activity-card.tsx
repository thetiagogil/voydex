import { Icon } from "@/components/shared/icon";
import { formatTime } from "@/lib/utils/common";
import type { RecentActivityItem } from "@/types/dashboard";
import Image from "next/image";
import Link from "next/link";

interface ActivityCardProps {
  activity: RecentActivityItem;
}
const getActivityIcon = (activity: RecentActivityItem) => {
  // Team additions show pokemon sprite instead
  if (activity.type === "team_add") {
    return null;
  }

  // Progress-based icons by category slug
  const categorySlug = activity.category?.slug.toLowerCase();
  const activityMessage = activity.message.toLowerCase();
  if (categorySlug?.includes("badges")) {
    return <Icon name="badge" className="text-green-500" />;
  }
  if (
    categorySlug?.includes("elite-four") &&
    !activityMessage?.includes("champion")
  ) {
    return <Icon name="champion" className="text-cyan-500" />;
  }
  if (
    categorySlug?.includes("elite-four") &&
    activityMessage?.includes("champion")
  ) {
    return <Icon name="eliteFour" className="text-yellow-500" />;
  }
  if (categorySlug?.includes("legendary")) {
    return <Icon name="legendary" className="text-primary" />;
  }
  return <Icon name="calendar" className="text-muted-foreground" />;
};

export const ActivityCard = ({ activity }: ActivityCardProps) => {
  return (
    <Link href={activity.href}>
      <div className="bg-muted/30 hover:bg-muted/50 flex items-start gap-3 rounded-lg p-3 transition-colors">
        <div className="flex-shrink-0">
          {activity.type === "team_add" && activity.pokemon?.spriteUrl ? (
            <div className="bg-primary/10 flex h-10 w-10 items-center justify-center rounded-xl">
              <Image
                src={activity.pokemon.spriteUrl}
                alt={activity.pokemon.name}
                height={32}
                width={32}
                className="object-contain p-1"
              />
            </div>
          ) : (
            <div className="bg-primary/10 flex h-10 w-10 items-center justify-center rounded-lg">
              {getActivityIcon(activity)}
            </div>
          )}
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
