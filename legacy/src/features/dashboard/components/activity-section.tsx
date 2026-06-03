import {
  SectionCard,
  SectionCardHeader,
  SectionCardScrollContent,
} from "@/shared/components/section-card";
import type { DashboardActivity } from "../types";
import { ActivityCard } from "./activity-card";
import { ActivityEmpty } from "./activity-empty";

const formatCountLabel = (count: number, singular: string, plural: string) => {
  return `${count} ${count === 1 ? singular : plural}`;
};

type ActivitySectionProps = {
  activities: DashboardActivity[];
};

export const ActivitySection = ({ activities }: ActivitySectionProps) => {
  const uniquePlayCount = new Set(activities.map((activity) => activity.play.id))
    .size;
  const uniqueGenerationCount = new Set(
    activities.map((activity) => activity.generation.id),
  ).size;

  const description =
    activities.length === 0
      ? "Your newest playthrough changes and milestones will show up here."
      : `Showing ${formatCountLabel(activities.length, "recent update", "recent updates")} across ${formatCountLabel(uniquePlayCount, "playthrough", "playthroughs")} in ${formatCountLabel(uniqueGenerationCount, "generation", "generations")}.`;

  return (
    <SectionCard className="h-full">
      <SectionCardHeader title="Recent Activity" description={description} />
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
