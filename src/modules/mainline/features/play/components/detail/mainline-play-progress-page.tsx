import Link from "next/link";
import {
  BookOpen,
  ChevronRight,
  Gem,
  ListChecks,
  Sparkles,
  Star,
} from "lucide-react";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatNumber,
  formatPercent,
  getFirstIncompleteMilestone,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import { CompactProgressRow } from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { ProgressMeter } from "@/shared/components/app/progress-meter";
import { StatusBadge } from "@/shared/components/app/status-badge";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type MainlinePlayProgressPageProps = {
  data: MainlinePlayDetailData;
};

export function MainlinePlayProgressPage({
  data,
}: MainlinePlayProgressPageProps) {
  const playId = String(data.overview.play_id);
  const nextMilestone = getFirstIncompleteMilestone(data.milestones);
  const completedUnits = data.overview.completed_completion_unit_count ?? 0;
  const totalUnits = data.overview.total_completion_unit_count ?? 0;

  return (
    <MainlinePlayShell
      activeProgressTab="summary"
      activeTab="progress"
      data={data}
    >
      <div className="flex flex-col gap-5">
        <div className="flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
          <div>
            <h2 className="text-2xl font-semibold tracking-normal">Progress</h2>
            <p className="text-muted-foreground text-sm">
              Track story, Pokedex, and collectibles for this play.
            </p>
          </div>
          <div className="flex flex-wrap gap-2">
            <Button
              render={<Link href={appRoutes.mainlinePlayStory(playId)} />}
              nativeButton={false}
            >
              <BookOpen data-icon="inline-start" />
              Open Story
            </Button>
            <Button
              render={<Link href={appRoutes.mainlinePlayPokedex(playId)} />}
              nativeButton={false}
              variant="outline"
            >
              <ListChecks data-icon="inline-start" />
              Open Pokedex
            </Button>
            <Button
              render={
                <Link href={appRoutes.mainlinePlayCollectibles(playId)} />
              }
              nativeButton={false}
              variant="outline"
            >
              <Star data-icon="inline-start" />
              Open Collectibles
            </Button>
          </div>
        </div>

        <Card>
          <CardContent className="grid gap-5 lg:grid-cols-[minmax(0,1fr)_minmax(0,1fr)] lg:items-center">
            <div className="grid gap-3 sm:grid-cols-[auto_minmax(0,1fr)] sm:items-center">
              <div>
                <p className="text-muted-foreground text-sm">
                  Overall completion
                </p>
                <p className="text-primary text-4xl font-semibold">
                  {formatPercent(data.overview.overall_completion_percent)}
                </p>
              </div>
              <ProgressMeter
                value={data.overview.overall_completion_percent ?? 0}
                label={`${formatNumber(completedUnits)} / ${formatNumber(
                  totalUnits,
                )} completed`}
              />
            </div>

            <div className="grid gap-3 sm:grid-cols-2">
              <div className="rounded-lg border p-3">
                <p className="text-muted-foreground mb-2 text-sm">
                  Included in completion
                </p>
                <div className="flex flex-wrap gap-2">
                  <StatusBadge tone="success">Story</StatusBadge>
                  {data.overview.include_pokedex_in_completion ? (
                    <StatusBadge tone="success">Pokedex</StatusBadge>
                  ) : null}
                  {data.overview.include_collectibles_in_completion ? (
                    <StatusBadge tone="success">Collectibles</StatusBadge>
                  ) : null}
                </div>
              </div>
              <div className="rounded-lg border p-3">
                <p className="text-muted-foreground mb-2 text-sm">
                  Excluded from completion
                </p>
                <div className="flex flex-wrap gap-2">
                  {!data.overview
                    .include_optional_pokedex_entries_in_completion ? (
                    <StatusBadge tone="neutral">Optional entries</StatusBadge>
                  ) : null}
                  {!data.overview.include_optional_pokedexes_in_completion ? (
                    <StatusBadge tone="neutral">Optional Pokedexes</StatusBadge>
                  ) : null}
                  {data.overview
                    .include_optional_pokedex_entries_in_completion &&
                  data.overview.include_optional_pokedexes_in_completion ? (
                    <StatusBadge tone="neutral">No exclusions</StatusBadge>
                  ) : null}
                </div>
              </div>
            </div>
          </CardContent>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle>Tracking Categories</CardTitle>
            <CardDescription>
              Open each category to update the detailed tracker.
            </CardDescription>
          </CardHeader>
          <CardContent className="flex flex-col gap-3">
            <CompactProgressRow
              actionLabel="Open Story"
              count={`${formatNumber(data.overview.completed_required_milestone_count)} / ${formatNumber(data.overview.required_milestone_count)} milestones`}
              href={appRoutes.mainlinePlayStory(playId)}
              icon={<BookOpen className="size-5" />}
              label="Story Progress"
              percent={data.overview.milestone_completion_percent}
            />
            <CompactProgressRow
              actionLabel="Open Pokedex"
              count={`${formatNumber(data.overview.caught_required_pokedex_species_count)} / ${formatNumber(data.overview.required_pokedex_species_count)} caught`}
              href={appRoutes.mainlinePlayPokedex(playId)}
              icon={<ListChecks className="size-5" />}
              label="Pokedex"
              percent={data.overview.pokedex_completion_percent}
            />
            <CompactProgressRow
              actionLabel="Open Collectibles"
              count={`${formatNumber(data.overview.collected_required_collectible_entry_count)} / ${formatNumber(data.overview.required_collectible_entry_count)} collected`}
              href={appRoutes.mainlinePlayCollectibles(playId)}
              icon={<Gem className="size-5" />}
              label="Collectibles"
              percent={data.overview.collectible_completion_percent}
            />
          </CardContent>
        </Card>

        <div className="grid gap-5 lg:grid-cols-3">
          <Card>
            <CardHeader>
              <CardTitle>Next to update</CardTitle>
            </CardHeader>
            <CardContent className="flex flex-col gap-3">
              <Link
                href={appRoutes.mainlinePlayStory(playId)}
                className="hover:bg-muted/50 flex items-center justify-between gap-3 rounded-lg border p-3"
              >
                <span>
                  <span className="block font-medium">
                    {nextMilestone?.milestone_name ?? "No story target"}
                  </span>
                  <span className="text-muted-foreground text-sm">
                    {nextMilestone?.milestone_game_name ?? "Story complete"}
                  </span>
                </span>
                <ChevronRight className="text-muted-foreground size-4" />
              </Link>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle>Completion rules</CardTitle>
              <CardDescription>
                Rules are read from the seeded play configuration.
              </CardDescription>
            </CardHeader>
            <CardContent className="flex flex-col gap-2 text-sm">
              <div className="flex items-center justify-between gap-3">
                <span>Pokedex counts</span>
                <StatusBadge tone="neutral">Caught species</StatusBadge>
              </div>
              <div className="flex items-center justify-between gap-3">
                <span>Collectibles count</span>
                <StatusBadge tone="neutral">Required entries</StatusBadge>
              </div>
              <div className="flex items-center justify-between gap-3">
                <span>Optional entries</span>
                <StatusBadge tone="neutral">
                  {data.overview.include_optional_pokedex_entries_in_completion
                    ? "Included"
                    : "Excluded"}
                </StatusBadge>
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle>Recent progress activity</CardTitle>
            </CardHeader>
            <CardContent className="flex flex-col gap-3">
              {data.timelineEvents.length ? (
                data.timelineEvents.slice(0, 3).map((event) => (
                  <div
                    key={event.event_id}
                    className="grid grid-cols-[auto_minmax(0,1fr)] gap-3 rounded-lg border p-3"
                  >
                    <Sparkles className="text-primary size-5" />
                    <div className="min-w-0">
                      <p className="truncate font-medium">
                        {event.title ?? event.event_type_name ?? "Play event"}
                      </p>
                      <p className="text-muted-foreground truncate text-sm">
                        {event.body ?? "No details logged"}
                      </p>
                    </div>
                  </div>
                ))
              ) : (
                <div className="text-muted-foreground rounded-lg border border-dashed p-4 text-sm">
                  No progress activity has been logged yet.
                </div>
              )}
            </CardContent>
          </Card>
        </div>
      </div>
    </MainlinePlayShell>
  );
}
