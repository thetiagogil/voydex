import { Card, CardContent } from "@/components/ui/card";
import { type RecentActivity } from "@/lib/mock-data/adventures";
import { Calendar, MapPin, Sparkles, Trophy } from "lucide-react";
import Link from "next/link";

interface ActivitySectionProps {
  activities: RecentActivity[];
  maxItems?: number;
}

const getCategoryIcon = (category: RecentActivity["category"]) => {
  switch (category) {
    case "badge":
      return <Trophy className="text-primary h-4 w-4" />;
    case "elite-four":
      return <Trophy className="text-primary h-4 w-4" />;
    case "legendary":
      return <Sparkles className="text-primary h-4 w-4" />;
    case "pokedex":
      return <Calendar className="text-primary h-4 w-4" />;
    case "story":
      return <MapPin className="text-primary h-4 w-4" />;
    default:
      return <MapPin className="text-muted-foreground h-4 w-4" />;
  }
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
    <div className="space-y-4">
      <h2 className="text-2xl font-semibold">Recent Activity</h2>

      <Card>
        <CardContent>
          <div className="pr-2">
            <div className="space-y-4">
              {displayedActivities.length === 0 ? (
                <div className="text-muted-foreground py-8 text-center">
                  <p>No recent activity</p>
                  <p className="text-sm">
                    Start playing to see your progress here!
                  </p>
                </div>
              ) : (
                displayedActivities.map((activity) => (
                  <Link
                    key={activity.id}
                    href={`/adventures/gen/${activity.genSlug}/game/${activity.gameSlug}/play/${activity.playthroughId}`}
                    className="block"
                  >
                    <div className="hover:bg-muted/50 flex gap-3 rounded-lg p-3 transition-colors">
                      <div className="mt-1 flex-shrink-0">
                        <div className="bg-primary/10 rounded-lg p-2">
                          {getCategoryIcon(activity.category)}
                        </div>
                      </div>

                      <div className="min-w-0 flex-1 space-y-1">
                        <p className="text-sm leading-snug font-medium">
                          {activity.message}
                        </p>
                        <div className="text-muted-foreground flex items-center gap-2 text-xs">
                          <span className="font-medium">
                            {activity.playthroughName}
                          </span>
                          <span>•</span>
                          <span>{activity.gameName}</span>
                        </div>
                        {activity.location && (
                          <div className="text-muted-foreground flex items-center gap-1 text-xs">
                            <MapPin className="h-3 w-3" />
                            <span>{activity.location}</span>
                          </div>
                        )}
                        <p className="text-muted-foreground text-xs">
                          {formatRelativeTime(activity.completedAt)}
                        </p>
                      </div>
                    </div>
                  </Link>
                ))
              )}
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
};
