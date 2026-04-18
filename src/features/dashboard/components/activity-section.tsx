import {
  SectionCard,
  SectionCardHeader,
  SectionCardScrollContent,
} from "@/shared/components/section-card";
import type { DashboardActivity } from "../types";
import { ActivityCard } from "./activity-card";
import { ActivityEmpty } from "./activity-empty";

type ActivitySectionProps = {
  activities: DashboardActivity[];
};

export const ActivitySection = ({ activities }: ActivitySectionProps) => {
  return (
    <SectionCard className="h-full">
      <SectionCardHeader title="Recent Activity" />
      <SectionCardScrollContent contentClassName="space-y-2">
        {activities.length === 0 ? (
          <ActivityEmpty />
        ) : (
          <div className="flex flex-col gap-2">
            {activities.map((activity, i) => {
              return <ActivityCard key={i} activity={activity} />;
            })}
          </div>
        )}
      </SectionCardScrollContent>
    </SectionCard>
  );
};
