import Link from "next/link";
import {
  ArrowRightIcon,
  BookOpenCheckIcon,
  Clock3Icon,
  CompassIcon,
  PlusIcon,
  RouteIcon,
  TrophyIcon,
  type LucideIcon,
} from "lucide-react";

import { modules } from "@/config/modules";
import { appRoutes } from "@/config/routes";
import type { MainlineDashboardData } from "@/modules/mainline/features/dashboard/data/queries";
import {
  formatMainlineNumber,
  formatMainlinePlaytime,
  formatMainlineShortDate,
  getMainlinePlayGameLine,
  getMainlinePlayTeamCount,
  getMainlinePlayTitle,
  getMainlinePlayTrainerLine,
} from "@/modules/mainline/features/play/components/mainline-play-summary";
import type { MainlinePlayCardData } from "@/modules/mainline/features/play/types";
import { EmptyState } from "@/shared/components/app/empty-state";
import { PageHeader } from "@/shared/components/app/page-header";
import { StatusBadge } from "@/shared/components/app/status-badge";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardAction,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type MainlineDashboardHomeProps = {
  data: MainlineDashboardData;
};

const mainlineModule = modules.mainline;

function DashboardMetric({
  description,
  icon: Icon,
  label,
  value,
}: {
  description: string;
  icon: LucideIcon;
  label: string;
  value: string;
}) {
  return (
    <Card className="bg-card/82">
      <CardHeader className="grid-cols-[auto_1fr] gap-x-3">
        <div className="bg-primary/10 text-primary row-span-2 flex size-10 items-center justify-center rounded-lg [&_svg]:size-5">
          <Icon aria-hidden />
        </div>
        <CardDescription>{label}</CardDescription>
        <CardTitle className="text-2xl">{value}</CardTitle>
      </CardHeader>
      <CardContent>
        <p className="text-muted-foreground text-sm leading-6">{description}</p>
      </CardContent>
    </Card>
  );
}

function ContinuePlayPanel({ play }: { play: MainlinePlayCardData }) {
  const playId = play.play_id ? String(play.play_id) : "";
  const href = playId
    ? appRoutes.mainlinePlay(playId)
    : appRoutes.mainlinePlays;

  return (
    <Card className="bg-card/82">
      <CardContent className="grid gap-5 lg:grid-cols-[minmax(0,1fr)_auto] lg:items-center">
        <div className="min-w-0">
          <div className="flex flex-wrap items-center gap-2">
            <h2 className="text-2xl leading-tight font-semibold tracking-normal">
              Continue {getMainlinePlayTitle(play)}
            </h2>
            {play.status_name ? (
              <StatusBadge tone="neutral">{play.status_name}</StatusBadge>
            ) : null}
          </div>
          <p className="text-muted-foreground mt-2 text-sm leading-6">
            {getMainlinePlayGameLine(play)}
            {play.trainer_name ? ` - ${getMainlinePlayTrainerLine(play)}` : ""}
          </p>
          <div className="mt-4 grid gap-2 text-sm sm:grid-cols-3">
            <div className="bg-background/45 ring-app-surface-border rounded-lg p-3 ring-1">
              <div className="text-muted-foreground text-xs">Updated</div>
              <div className="mt-1 font-medium">
                {formatMainlineShortDate(play.updated_at)}
              </div>
            </div>
            <div className="bg-background/45 ring-app-surface-border rounded-lg p-3 ring-1">
              <div className="text-muted-foreground text-xs">Team</div>
              <div className="mt-1 font-medium">
                {formatMainlineNumber(getMainlinePlayTeamCount(play))} Pokemon
              </div>
            </div>
            <div className="bg-background/45 ring-app-surface-border rounded-lg p-3 ring-1">
              <div className="text-muted-foreground text-xs">Playtime</div>
              <div className="mt-1 font-medium">
                {formatMainlinePlaytime(play.playtime_minutes)}
              </div>
            </div>
          </div>
        </div>
        <Button render={<Link href={href} />} nativeButton={false}>
          Open play
          <ArrowRightIcon data-icon="inline-end" />
        </Button>
      </CardContent>
    </Card>
  );
}

function RecentPlayRow({ play }: { play: MainlinePlayCardData }) {
  const playId = play.play_id ? String(play.play_id) : "";

  return (
    <Link
      href={playId ? appRoutes.mainlinePlay(playId) : appRoutes.mainlinePlays}
      className="bg-background/40 ring-app-surface-border hover:bg-muted/50 grid gap-3 rounded-lg p-3 ring-1 transition-colors sm:grid-cols-[minmax(0,1fr)_auto]"
    >
      <div className="min-w-0">
        <div className="flex flex-wrap items-center gap-2">
          <p className="truncate font-medium">{getMainlinePlayTitle(play)}</p>
          {play.status_name ? (
            <StatusBadge tone="neutral">{play.status_name}</StatusBadge>
          ) : null}
        </div>
        <p className="text-muted-foreground mt-1 truncate text-sm">
          {getMainlinePlayGameLine(play)}
          {play.trainer_name ? ` - ${getMainlinePlayTrainerLine(play)}` : ""}
        </p>
      </div>
      <div className="text-muted-foreground flex items-center gap-2 text-sm [&_svg]:size-4">
        <Clock3Icon aria-hidden />
        {formatMainlineShortDate(play.updated_at)}
      </div>
    </Link>
  );
}

function QuickAction({
  children,
  href,
  icon: Icon,
  variant = "outline",
}: {
  children: React.ReactNode;
  href: string;
  icon: LucideIcon;
  variant?: "default" | "outline";
}) {
  return (
    <Button
      render={<Link href={href} />}
      nativeButton={false}
      variant={variant}
      className="justify-start"
    >
      <Icon data-icon="inline-start" />
      {children}
    </Button>
  );
}

export function MainlineDashboardHome({ data }: MainlineDashboardHomeProps) {
  const hasPlays = data.recentPlays.length > 0;
  const continuePlay =
    data.recentPlays.find((play) => play.status_slug !== "completed") ??
    data.recentPlays[0] ??
    null;
  const activePlayCount =
    data.summary?.active_library_play_count ??
    data.recentPlays.filter((play) => play.status_slug === "in_progress")
      .length;

  return (
    <>
      <PageHeader
        title="Dashboard"
        description={`Your ${mainlineModule.label.toLowerCase()} workspace for continuing plays, checking progress, and starting the next record.`}
        action={
          <Button
            render={<Link href={appRoutes.mainlineNewPlay} />}
            nativeButton={false}
          >
            <PlusIcon data-icon="inline-start" />
            New play
          </Button>
        }
      />

      {continuePlay ? (
        <ContinuePlayPanel play={continuePlay} />
      ) : (
        <Card className="bg-card/82">
          <CardContent>
            <EmptyState
              title="No plays yet"
              description="Create your first Mainline play to turn the dashboard into a useful command center."
              action={
                <Button
                  render={<Link href={appRoutes.mainlineNewPlay} />}
                  nativeButton={false}
                >
                  <PlusIcon data-icon="inline-start" />
                  Create a play
                </Button>
              }
            />
          </CardContent>
        </Card>
      )}

      <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-4">
        <DashboardMetric
          icon={CompassIcon}
          label="Active plays"
          value={formatMainlineNumber(activePlayCount)}
          description="Open, paused, or in-progress records in your current library."
        />
        <DashboardMetric
          icon={TrophyIcon}
          label="Completed"
          value={formatMainlineNumber(data.summary?.completed_play_count)}
          description="Finished plays kept as part of your long-term record."
        />
        <DashboardMetric
          icon={BookOpenCheckIcon}
          label="Milestones"
          value={formatMainlineNumber(
            data.statsSummary?.completed_milestone_count,
          )}
          description="Story progress logged across your Mainline records."
        />
        <DashboardMetric
          icon={Clock3Icon}
          label="Playtime"
          value={`${formatMainlineNumber(
            Math.floor((data.statsSummary?.total_playtime_minutes ?? 0) / 60),
          )}h`}
          description="Total playtime from plays where time has been recorded."
        />
      </div>

      <div className="grid gap-5 xl:grid-cols-[minmax(0,1fr)_22rem]">
        <Card className="bg-card/88">
          <CardHeader>
            <CardTitle>Recent plays</CardTitle>
            <CardDescription>
              Continue where the latest records left off.
            </CardDescription>
            <CardAction>
              <Button
                render={<Link href={appRoutes.mainlinePlays} />}
                nativeButton={false}
                variant="ghost"
                size="sm"
              >
                View all
                <ArrowRightIcon data-icon="inline-end" />
              </Button>
            </CardAction>
          </CardHeader>
          <CardContent>
            {hasPlays ? (
              <div className="flex flex-col gap-2">
                {data.recentPlays.map((play) => (
                  <RecentPlayRow
                    key={play.play_id ?? `${play.game_id}-${play.updated_at}`}
                    play={play}
                  />
                ))}
              </div>
            ) : (
              <EmptyState
                title="No recent plays"
                description="New plays will appear here once you create them."
              />
            )}
          </CardContent>
        </Card>

        <Card className="bg-card/82">
          <CardHeader>
            <CardTitle>Quick actions</CardTitle>
            <CardDescription>
              Direct paths for common Mainline work.
            </CardDescription>
          </CardHeader>
          <CardContent className="grid gap-3">
            <QuickAction
              href={appRoutes.mainlineNewPlay}
              icon={PlusIcon}
              variant="default"
            >
              Create a play
            </QuickAction>
            <QuickAction href={appRoutes.mainlinePlays} icon={RouteIcon}>
              Open plays
            </QuickAction>
            <QuickAction href={appRoutes.codexPokemon} icon={BookOpenCheckIcon}>
              Browse Codex
            </QuickAction>
          </CardContent>
        </Card>
      </div>
    </>
  );
}
