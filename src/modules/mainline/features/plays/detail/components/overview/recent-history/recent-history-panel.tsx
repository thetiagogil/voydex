import { Fragment } from "react";

import { RecentHistoryRow } from "@/modules/mainline/features/plays/detail/components/overview/recent-history/recent-history-row";
import { RecentHistorySeparator } from "@/modules/mainline/features/plays/detail/components/overview/recent-history/recent-history-separator";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { Button } from "@/shared/components/ui/button";
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
    <DetailSectionCard
      title="Recent History"
      action={
        <Button type="button" variant="ghost" size="xs" disabled>
          View full history
        </Button>
      }
      contentClassName="py-0"
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
        <Empty className="border-app-surface-border bg-muted/15 p-4">
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
    </DetailSectionCard>
  );
};
