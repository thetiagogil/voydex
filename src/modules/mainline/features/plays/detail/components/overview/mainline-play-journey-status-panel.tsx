import {
  formatPlayCountPair,
  formatPlayDateTime,
} from "@/modules/mainline/features/plays/shared/display/play-formatters";
import type {
  MainlinePlayMilestone,
  MainlinePlayPageData,
} from "@/modules/mainline/features/plays/shared/types";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { Button } from "@/shared/components/ui/button";
import { Separator } from "@/shared/components/ui/separator";

type MainlinePlayJourneyStatusPanelProps = {
  data: MainlinePlayPageData;
};

type MainlinePlayMilestoneSummaryProps = {
  fallback: string;
  icon: AppIconComponent;
  label: string;
  milestone: MainlinePlayMilestone | null;
};

type MainlinePlayStoryPathProps = {
  completedCount: number | null | undefined;
  totalCount: number | null | undefined;
};

const formatMilestoneDate = (milestone: MainlinePlayMilestone) => {
  return formatPlayDateTime(
    milestone.completion_event_happened_at ?? milestone.completed_at,
    "",
  );
};

const MainlinePlayMilestoneSummary = ({
  fallback,
  icon,
  label,
  milestone,
}: MainlinePlayMilestoneSummaryProps) => {
  const milestoneDate = milestone ? formatMilestoneDate(milestone) : "";

  return (
    <div className="grid grid-cols-[auto_minmax(0,1fr)] gap-x-2 gap-y-1">
      <AppIcon
        icon={icon}
        size="sm"
        aria-hidden
        className="text-muted-foreground mt-0.5"
      />
      <p className="text-muted-foreground text-xs">{label}</p>

      {milestone ? (
        <div className="col-start-2 grid gap-1">
          <p className="text-foreground font-medium">
            {milestone.milestone_name ?? "Unnamed milestone"}
          </p>
          {milestone.category_name || milestone.milestone_type_name ? (
            <p className="text-muted-foreground text-sm">
              {milestone.category_name ?? milestone.milestone_type_name}
            </p>
          ) : null}
          {milestoneDate ? (
            <p className="text-muted-foreground text-xs">{milestoneDate}</p>
          ) : null}
        </div>
      ) : (
        <p className="text-muted-foreground col-start-2 text-sm">{fallback}</p>
      )}
    </div>
  );
};

const MainlinePlayStoryPath = ({
  completedCount,
  totalCount,
}: MainlinePlayStoryPathProps) => {
  const safeCompletedCount = completedCount ?? 0;
  const safeTotalCount = totalCount ?? 0;
  const markerCount = safeTotalCount > 1 ? Math.min(safeTotalCount, 8) : 2;
  const completedRatio = safeTotalCount
    ? Math.min(Math.max(safeCompletedCount / safeTotalCount, 0), 1)
    : 0;
  const completedMarkers = completedRatio
    ? Math.max(1, Math.ceil(completedRatio * markerCount))
    : 0;

  return (
    <div className="grid content-start gap-2">
      <div className="text-muted-foreground flex items-center gap-2 text-xs">
        <AppIcon icon={appIcons.product.milestone} size="sm" aria-hidden />
        <span>Story Path</span>
      </div>
      <div className="grid justify-items-center gap-2 text-center">
        <p className="text-primary text-2xl leading-tight font-semibold">
          {formatPlayCountPair({
            completedCount,
            totalCount,
          })}
        </p>
        <p className="text-muted-foreground text-xs">milestones completed</p>
        <div
          className="relative mt-1 grid w-full items-center"
          style={{
            gridTemplateColumns: `repeat(${markerCount}, minmax(0, 1fr))`,
          }}
          aria-hidden
        >
          <div className="bg-border absolute inset-x-1 top-1/2 h-px -translate-y-1/2" />
          <div
            className="bg-primary absolute inset-x-1 top-1/2 h-px origin-left -translate-y-1/2"
            style={{ transform: `scaleX(${completedRatio})` }}
          />
          {Array.from({ length: markerCount }, (_, index) => (
            <span
              key={index}
              className="border-background bg-background relative z-10 size-2.5 justify-self-center rounded-full border"
            >
              <span
                className={
                  index < completedMarkers
                    ? "bg-primary block size-full rounded-full"
                    : "border-border bg-card block size-full rounded-full border"
                }
              />
            </span>
          ))}
        </div>
      </div>
    </div>
  );
};

export const MainlinePlayJourneyStatusPanel = ({
  data,
}: MainlinePlayJourneyStatusPanelProps) => {
  const overview = data.overview;

  return (
    <DetailSectionCard title="Journey Status" contentClassName="grid gap-4">
      <div className="border-app-surface-border relative h-24 overflow-hidden rounded-lg border bg-[url('/backgrounds/bg.webp')] bg-cover bg-bottom">
        <div
          aria-hidden
          className="bg-background/15 absolute inset-0 backdrop-saturate-150"
        />
      </div>

      <div className="grid gap-4 md:grid-cols-[minmax(0,1fr)_auto_minmax(0,1fr)_auto_12rem]">
        <MainlinePlayMilestoneSummary
          icon={appIcons.status.active}
          label="Last completed"
          milestone={data.lastCompletedMilestone}
          fallback="No completed milestones yet."
        />

        <Separator className="md:hidden" />
        <Separator orientation="vertical" className="hidden h-auto md:block" />

        <MainlinePlayMilestoneSummary
          icon={appIcons.product.nextMilestone}
          label="Next up"
          milestone={data.nextMilestone}
          fallback="No next milestone available."
        />

        <Separator className="md:hidden" />
        <Separator orientation="vertical" className="hidden h-auto md:block" />

        <MainlinePlayStoryPath
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
