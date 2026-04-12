import { Card } from "@/shared/components/ui/card";
import { ScrollArea } from "@/shared/components/ui/scroll-area";
import type { DashboardActivity } from "../types";
import { ActivityCard } from "./activity-card";
import { ActivityEmpty } from "./activity-empty";

type ActivitySectionProps = {
  activities: DashboardActivity[];
};

export const ActivitySection = ({ activities }: ActivitySectionProps) => {
  return (
    <Card className="h-full gap-0 p-0">
      <div className="border-border flex items-center gap-2 border-b p-4">
        <h2 className="text-foreground text-lg font-bold">Recent Activity</h2>
      </div>
      <ScrollArea className="flex-1">
        <div className="space-y-2 p-4">
          {activities.length === 0 ? (
            <ActivityEmpty />
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
