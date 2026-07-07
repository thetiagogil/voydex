import { MilestoneSummary } from "@/modules/mainline/features/plays/detail/components/overview/journey-status/milestone-summary";
import { StoryPath } from "@/modules/mainline/features/plays/detail/components/overview/journey-status/story-path";
import type { MainlinePlayPageData } from "@/modules/mainline/features/plays/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { Button } from "@/shared/components/ui/button";
import { Separator } from "@/shared/components/ui/separator";

type JourneyStatusPanelProps = {
  data: MainlinePlayPageData;
};

export const JourneyStatusPanel = ({ data }: JourneyStatusPanelProps) => {
  const overview = data.overview;

  return (
    <DetailSectionCard title="Journey Status" contentClassName="grid gap-4">
      <div className="relative h-24 overflow-hidden rounded-lg bg-[url('/backgrounds/bg.webp')] bg-cover bg-bottom">
        <div
          aria-hidden
          className="bg-background/15 absolute inset-0 backdrop-saturate-150"
        />
      </div>

      <div className="grid items-start gap-4 md:grid-cols-[minmax(0,1fr)_auto_minmax(0,1fr)_auto_12rem]">
        <MilestoneSummary
          icon={appIcons.status.active}
          label="Last completed"
          milestone={data.lastCompletedMilestone}
          fallback="No completed milestones yet."
        />

        <Separator className="md:hidden" />
        <Separator orientation="vertical" className="hidden h-auto md:block" />

        <MilestoneSummary
          icon={appIcons.product.nextMilestone}
          label="Next up"
          milestone={data.nextMilestone}
          fallback="No next milestone available."
        />

        <Separator className="md:hidden" />
        <Separator orientation="vertical" className="hidden h-auto md:block" />

        <StoryPath
          completedCount={overview?.completed_required_milestone_count}
          totalCount={overview?.required_milestone_count}
        />
      </div>

      <Button
        type="button"
        variant="outline"
        size="sm"
        disabled
        className="w-full"
      >
        <AppIcon icon={appIcons.actions.create} inline="start" aria-hidden />
        Log milestone
      </Button>
    </DetailSectionCard>
  );
};
