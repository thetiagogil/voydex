import { Card } from "@/components/ui/card";
import { ScrollArea } from "@/components/ui/scroll-area";
import type { RecentActivityItem } from "@/types/dashboard";
import { ActivityCard } from "./activity-card";

interface ActivitySectionProps {
  activities: RecentActivityItem[];
}

export const ActivitySection = ({ activities }: ActivitySectionProps) => {
  return (
    <Card className="h-full gap-0 p-0">
      <div className="border-border flex items-center gap-2 border-b p-4">
        <h2 className="text-foreground text-lg font-bold">Recent Activity</h2>
      </div>
      <ScrollArea className="flex-1">
        <div className="space-y-2 p-4">
          {activities.length === 0 ? (
            <div className="text-muted-foreground pt-4 text-center">
              <p>No recent activity</p>
              <p className="text-sm">
                Start playing to see your progress here!
              </p>
            </div>
          ) : (
            <div className="flex flex-col gap-2">
              {activities.map((activity, i) => {
                return <ActivityCard key={i} activity={activity} />;
              })}
            </div>
          )}
        </div>
      </ScrollArea>
    </Card>
  );
};
