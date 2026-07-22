import { Fragment } from "react";

import { RecentHistoryRow } from "@/modules/mainline/features/plays/hub/views/overview/sections/recent-history/recent-history-row";
import { RecentHistorySeparator } from "@/modules/mainline/features/plays/hub/views/overview/sections/recent-history/recent-history-separator";
import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/shared/components/ui/empty";

type RecentHistoryPanelProps = {
  events: MainlinePlayTimelineEvent[];
};

export const RecentHistoryPanel = ({ events }: RecentHistoryPanelProps) => {
  return (
    <MainlinePlaySectionCard
      title="Recent History"
      action={<MainlinePlaySectionDestination label="Full history" />}
      contentClassName="py-0"
      showSeparator
    >
      {events.length ? (
        <div className="relative grid min-w-0">
          <span
            className="bg-border absolute top-8 bottom-8 left-3 hidden w-px sm:block"
            aria-hidden
          />
          {events.map((event, index) => (
            <Fragment key={event.event_id ?? `${event.title}-${index}`}>
              <RecentHistoryRow event={event} />
              {index < events.length - 1 ? <RecentHistorySeparator /> : null}
            </Fragment>
          ))}
        </div>
      ) : (
        <Empty className="p-6 sm:p-8">
          <EmptyHeader>
            <EmptyMedia variant="icon">
              <AppIcon icon={appIcons.product.recent} aria-hidden />
            </EmptyMedia>
            <EmptyTitle>No history yet</EmptyTitle>
            <EmptyDescription>
              Timeline events will appear here after milestones, team changes,
              snapshots, or notes are recorded.
            </EmptyDescription>
          </EmptyHeader>
        </Empty>
      )}
    </MainlinePlaySectionCard>
  );
};
