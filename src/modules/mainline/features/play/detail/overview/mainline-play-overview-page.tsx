import { MainlinePlaySectionCard } from "@/modules/mainline/features/play/detail/shared/components/mainline-play-section-card";
import { MainlinePlayShell } from "@/modules/mainline/features/play/detail/shared/components/mainline-play-shell";
import {
  formatDate,
  formatDateTime,
  formatNumber,
  formatPercent,
  formatPlaytime,
  getLatestTimelineEvents,
  getPlayTitle,
  getTimelineEventTitle,
} from "@/modules/mainline/features/play/detail/shared/display/play-detail-display";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";

type MainlinePlayOverviewPageProps = {
  data: MainlinePlayDetailData;
};

export const MainlinePlayOverviewPage = ({
  data,
}: MainlinePlayOverviewPageProps) => {
  const play = data.overview;
  const latestEvents = getLatestTimelineEvents(data.timelineEvents, 5);

  return (
    <MainlinePlayShell activeTab="overview" data={data}>
      <div className="grid gap-5">
        <MainlinePlaySectionCard
          title={getPlayTitle(play)}
          description="A compact read-only overview while the play hub sections are rebuilt."
          metrics={[
            { label: "Game", value: play.game_name ?? "Unknown" },
            { label: "Status", value: play.status_name ?? "Unknown" },
            { label: "Started", value: formatDate(play.started_on) },
            { label: "Playtime", value: formatPlaytime(play.playtime_minutes) },
            {
              label: "Overall completion",
              value: formatPercent(play.overall_completion_percent),
            },
            {
              label: "Team",
              value: `${formatNumber(play.active_team_count)} active / ${formatNumber(
                play.reserve_team_count,
              )} reserve`,
            },
            {
              label: "Pokédex",
              value: `${formatNumber(play.pokedex_seen_count)} seen / ${formatNumber(
                play.pokedex_caught_count,
              )} caught`,
            },
            {
              label: "Collectibles",
              value: `${formatNumber(play.collected_entry_count)} collected`,
            },
          ]}
        />

        <MainlinePlaySectionCard
          title="Recent activity"
          description={`${formatNumber(
            play.timeline_event_count,
          )} timeline events are currently seeded for this play.`}
        >
          {latestEvents.length ? (
            <div className="divide-app-surface-border/60 divide-y">
              {latestEvents.map((event, index) => (
                <div
                  key={event.event_id ?? `${index}`}
                  className="py-3 first:pt-0 last:pb-0"
                >
                  <div className="font-medium">
                    {getTimelineEventTitle(event)}
                  </div>
                  <div className="text-muted-foreground mt-1 text-sm">
                    {formatDateTime(event.happened_at ?? event.created_at)}
                  </div>
                  {event.body ? (
                    <p className="text-muted-foreground mt-2 text-sm">
                      {event.body}
                    </p>
                  ) : null}
                </div>
              ))}
            </div>
          ) : (
            <p className="text-muted-foreground text-sm">
              No timeline events are available yet.
            </p>
          )}
        </MainlinePlaySectionCard>
      </div>
    </MainlinePlayShell>
  );
};
