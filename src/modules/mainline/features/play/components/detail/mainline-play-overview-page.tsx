import Link from "next/link";
import {
  BookOpen,
  ChevronRight,
  CircleCheck,
  Compass,
  HeartPulse,
  ShieldAlert,
  Star,
  UsersRound,
} from "lucide-react";
import { appRoutes } from "@/config/routes";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatDateTime,
  formatNumber,
  formatPercent,
  getActiveTeam,
  getFirstIncompleteMilestone,
  getLastCompletedMilestone,
  getPlayTitle,
  getPokemonDisplayName,
  getPokemonPrimaryTypeSlug,
  getReserveTeam,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import {
  EmptyPanel,
  PokemonTypeBadges,
  TimelineRows,
} from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { ProgressMeter } from "@/shared/components/app/progress-meter";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardAction,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
type MainlinePlayOverviewPageProps = {
  data: MainlinePlayDetailData;
};
const JourneyStatusCard = ({ data }: MainlinePlayOverviewPageProps) => {
  const lastCompleted = getLastCompletedMilestone(data.milestones);
  const nextMilestone = getFirstIncompleteMilestone(data.milestones);
  const completed = data.overview.completed_required_milestone_count ?? 0;
  const total = data.overview.required_milestone_count ?? 0;
  const progressDots = Array.from({ length: Math.min(Math.max(total, 1), 12) });
  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <Compass className="text-primary size-5" />
          Journey Status
        </CardTitle>
      </CardHeader>
      <CardContent className="flex flex-col gap-4">
        <div className="bg-muted relative min-h-24 overflow-hidden rounded-xl border">
          <div className="from-primary/15 to-background absolute inset-0 bg-gradient-to-r" />
          <div className="relative flex h-full min-h-24 items-center px-5">
            <p className="text-muted-foreground max-w-xl text-sm">
              {nextMilestone
                ? `Next: ${nextMilestone.milestone_name}`
                : `${getPlayTitle(data.overview)} has no pending story milestone.`}
            </p>
          </div>
        </div>

        <div className="grid gap-4 lg:grid-cols-[1fr_1fr_1.2fr]">
          <div className="flex gap-3">
            <CircleCheck className="text-success mt-1 size-5" />
            <div>
              <p className="text-muted-foreground text-sm">Last completed</p>
              <p className="font-medium">
                {lastCompleted?.milestone_name ?? "No milestone completed"}
              </p>
              <p className="text-muted-foreground text-sm">
                {lastCompleted?.milestone_game_name ?? "Start your journey"}
              </p>
              <p className="text-muted-foreground text-xs">
                {lastCompleted?.completed_at
                  ? formatDateTime(lastCompleted.completed_at)
                  : "No date"}
              </p>
            </div>
          </div>

          <div className="flex gap-3">
            <Star className="text-warning mt-1 size-5" />
            <div>
              <p className="text-muted-foreground text-sm">Next up</p>
              <p className="font-medium">
                {nextMilestone?.milestone_name ?? "No next milestone"}
              </p>
              <p className="text-muted-foreground text-sm">
                {nextMilestone?.milestone_game_name ?? "Story complete"}
              </p>
            </div>
          </div>

          <div className="flex flex-col gap-2">
            <div className="flex items-end justify-between gap-3">
              <div>
                <p className="text-muted-foreground text-sm">Story path</p>
                <p className="text-primary text-2xl font-semibold">
                  {formatNumber(completed)} / {formatNumber(total)}
                </p>
              </div>
              <span className="text-muted-foreground text-xs">
                milestones completed
              </span>
            </div>
            <div className="flex gap-1">
              {progressDots.map((_, index) => {
                const isDone = index < completed;
                return (
                  <span
                    key={index}
                    className={
                      isDone
                        ? "bg-primary h-2 flex-1 rounded-full"
                        : "bg-muted-foreground/20 h-2 flex-1 rounded-full"
                    }
                  />
                );
              })}
            </div>
          </div>
        </div>

        <Button
          render={
            <Link
              href={appRoutes.mainlinePlayStory(String(data.overview.play_id))}
            />
          }
          nativeButton={false}
          variant="outline"
        >
          Open Story
          <ChevronRight data-icon="inline-end" />
        </Button>
      </CardContent>
    </Card>
  );
};
const CurrentTeamCard = ({ data }: MainlinePlayOverviewPageProps) => {
  const activeTeam = getActiveTeam(data.team).slice(0, 6);
  const reserveTeam = getReserveTeam(data.team);
  if (!activeTeam.length) {
    return (
      <EmptyPanel
        title="No active team yet"
        description="Pokemon will appear here when this play has active roster entries."
      />
    );
  }
  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <UsersRound className="text-primary size-5" />
          Current Team
        </CardTitle>
        <CardAction>
          <Button
            render={
              <Link
                href={appRoutes.mainlinePlayTeam(String(data.overview.play_id))}
              />
            }
            nativeButton={false}
            variant="ghost"
            size="sm"
          >
            View full team
            <ChevronRight data-icon="inline-end" />
          </Button>
        </CardAction>
        <CardDescription>
          {reserveTeam.length} reserve available
        </CardDescription>
      </CardHeader>
      <CardContent>
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-3">
          {activeTeam.map((pokemon) => (
            <div
              key={pokemon.play_pokemon_id}
              className="flex flex-col items-center gap-2 rounded-xl border p-3 text-center"
            >
              <PokemonPortrait
                alt={getPokemonDisplayName(pokemon)}
                imageUrl={pokemon.display.imageUrl}
                type={getPokemonPrimaryTypeSlug(pokemon)}
                className="size-24"
              />
              <div className="min-w-0">
                <p className="truncate font-medium">
                  {getPokemonDisplayName(pokemon)}
                </p>
                <p className="text-muted-foreground text-sm">
                  Lv. {pokemon.level ?? "-"}
                </p>
              </div>
              <PokemonTypeBadges pokemon={pokemon} />
            </div>
          ))}
        </div>
      </CardContent>
    </Card>
  );
};
const ProgressSummaryCard = ({ data }: MainlinePlayOverviewPageProps) => {
  const playId = String(data.overview.play_id);
  const rows = [
    {
      href: appRoutes.mainlinePlayStory(playId),
      label: "Story Progress",
      value: data.overview.milestone_completion_percent,
    },
    {
      href: appRoutes.mainlinePlayPokedex(playId),
      label: "Pokedex",
      value: data.overview.pokedex_completion_percent,
    },
    {
      href: appRoutes.mainlinePlayCollectibles(playId),
      label: "Collectibles",
      value: data.overview.collectible_completion_percent,
    },
  ];
  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <BookOpen className="text-primary size-5" />
          Progress Summary
        </CardTitle>
        <CardAction>
          <Button
            render={<Link href={appRoutes.mainlinePlayProgress(playId)} />}
            nativeButton={false}
            variant="ghost"
            size="sm"
          >
            View all
            <ChevronRight data-icon="inline-end" />
          </Button>
        </CardAction>
      </CardHeader>
      <CardContent className="flex flex-col gap-3">
        {rows.map((row) => (
          <Link
            key={row.label}
            href={row.href}
            className="hover:bg-muted/50 grid gap-3 rounded-lg border p-3 transition-colors sm:grid-cols-[minmax(0,1fr)_10rem_auto]"
          >
            <span className="font-medium">{row.label}</span>
            <ProgressMeter value={row.value ?? 0} />
            <span className="text-muted-foreground text-sm">
              {formatPercent(row.value)}
            </span>
          </Link>
        ))}
      </CardContent>
    </Card>
  );
};
const TeamHealthCard = ({ data }: MainlinePlayOverviewPageProps) => {
  const activeTeam = getActiveTeam(data.team);
  const reserveTeam = getReserveTeam(data.team);
  const openActiveSlots = Math.max(6 - activeTeam.length, 0);
  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <HeartPulse className="text-primary size-5" />
          Team Health
        </CardTitle>
      </CardHeader>
      <CardContent className="grid gap-3 sm:grid-cols-3">
        <div className="flex gap-3 rounded-lg border p-3">
          <ShieldAlert className="text-warning size-6" />
          <div>
            <p className="font-medium">Active roster</p>
            <p className="text-muted-foreground text-sm">
              {formatNumber(activeTeam.length)} / 6 slots filled
            </p>
          </div>
        </div>
        <div className="flex gap-3 rounded-lg border p-3">
          <UsersRound className="text-primary size-6" />
          <div>
            <p className="font-medium">{reserveTeam.length} reserves</p>
            <p className="text-muted-foreground text-sm">
              {formatNumber(openActiveSlots)} active slots open
            </p>
          </div>
        </div>
        <Button
          render={
            <Link
              href={appRoutes.mainlinePlayTeam(String(data.overview.play_id))}
            />
          }
          nativeButton={false}
          variant="outline"
          className="h-auto justify-between p-3"
        >
          Review team
          <ChevronRight data-icon="inline-end" />
        </Button>
      </CardContent>
    </Card>
  );
};
export const MainlinePlayOverviewPage = ({
  data,
}: MainlinePlayOverviewPageProps) => {
  return (
    <MainlinePlayShell activeTab="overview" data={data}>
      <div className="grid gap-5 xl:grid-cols-[minmax(0,1fr)_27rem]">
        <div className="flex flex-col gap-5">
          <JourneyStatusCard data={data} />
          <Card>
            <CardHeader>
              <CardTitle>Recent History</CardTitle>
              <CardDescription>
                Latest timeline events for this play.
              </CardDescription>
            </CardHeader>
            <CardContent>
              <TimelineRows events={data.timelineEvents} />
            </CardContent>
          </Card>
        </div>

        <div className="flex flex-col gap-5">
          <CurrentTeamCard data={data} />
          <TeamHealthCard data={data} />
          <ProgressSummaryCard data={data} />
        </div>
      </div>
    </MainlinePlayShell>
  );
};
