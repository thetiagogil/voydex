import { Card, CardContent } from "@/components/ui/card";
import type { RecentActivityItem } from "@/types/dashboard";
import { Calendar, Sparkles, Star, Trophy } from "lucide-react";
import Image from "next/image";
import Link from "next/link";

interface ActivitySectionProps {
  activities: RecentActivityItem[];
  maxItems?: number;
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
    return <Star className="h-4 w-4 text-orange-500" />;
  }
  if (
    categorySlug?.includes("elite-four") &&
    !activityMessage?.includes("champion")
  ) {
    return <Trophy className="h-4 w-4 text-purple-500" />;
  }
  if (
    categorySlug?.includes("elite-four") &&
    activityMessage?.includes("champion")
  ) {
    return <Trophy className="h-4 w-4 text-yellow-500" />;
  }
  if (categorySlug?.includes("legendary")) {
    return <Sparkles className="text-primary h-4 w-4" />;
  }
  return <Calendar className="text-muted-foreground h-4 w-4" />;
};

const formatRelativeTime = (dateString: string): string => {
  const date = new Date(dateString);
  const now = new Date();
  const diffInSeconds = Math.floor((now.getTime() - date.getTime()) / 1000);

  if (diffInSeconds < 60) return "Just now";
  if (diffInSeconds < 3600) return `${Math.floor(diffInSeconds / 60)}m ago`;
  if (diffInSeconds < 86400) return `${Math.floor(diffInSeconds / 3600)}h ago`;
  if (diffInSeconds < 604800)
    return `${Math.floor(diffInSeconds / 86400)}d ago`;
  return date.toLocaleDateString();
};

export const ActivitySection = ({
  activities,
  maxItems = 10,
}: ActivitySectionProps) => {
  const displayedActivities = activities.slice(0, maxItems);

  return (
    <div className="flex flex-1 flex-col space-y-4 overflow-hidden">
      <h2 className="text-xl font-semibold">Recent Activity</h2>

      <Card className="flex flex-1 flex-col overflow-hidden">
        <CardContent className="flex-1 overflow-y-auto">
          <div className="space-y-2">
            {displayedActivities.length === 0 ? (
              <div className="text-muted-foreground py-8 text-center">
                <p>No recent activity</p>
                <p className="text-sm">
                  Start playing to see your progress here!
                </p>
              </div>
            ) : (
              displayedActivities.map((activity, i) => (
                <Link key={i} href={activity.href} className="block">
                  <div className="hover:bg-muted/50 flex gap-3 rounded-lg p-2.5 transition-colors">
                    {/* Icon or Sprite */}
                    <div className="flex-shrink-0">
                      {activity.type === "team_add" &&
                      activity.pokemon?.spriteUrl ? (
                        <div className="bg-primary/10 flex h-10 w-10 items-center justify-center rounded-lg">
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

                    {/* Content */}
                    <div className="min-w-0 flex-1 space-y-0.5">
                      <p className="text-sm leading-snug font-medium">
                        {activity.message}
                      </p>
                      <div className="text-muted-foreground flex items-center gap-1.5 text-xs">
                        <span className="truncate">{activity.game.name}</span>
                        <span>•</span>
                        <span className="truncate font-medium">
                          {activity.play.name}
                        </span>
                      </div>
                      <p className="text-muted-foreground text-xs">
                        {formatRelativeTime(activity.activityAt)}
                      </p>
                    </div>
                  </div>
                </Link>
              ))
            )}
          </div>
        </CardContent>
      </Card>
    </div>
  );
};
