import Link from "next/link";
import {
  ArrowRightIcon,
  BookOpenCheckIcon,
  Clock3Icon,
  CompassIcon,
  PlusIcon,
  TrophyIcon,
} from "lucide-react";

import { modules } from "@/config/modules";
import { appRoutes } from "@/config/routes";
import type { MainlineDashboardData } from "@/modules/mainline/features/dashboard/data/queries";
import type { MainlinePlaySummary } from "@/modules/mainline/shared/types/mainline.types";
import { EmptyState } from "@/shared/components/app/empty-state";
import { PageHeader } from "@/shared/components/app/page-header";
import { PageSection } from "@/shared/components/app/page-section";
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

function formatNumber(value: number | null | undefined) {
  return new Intl.NumberFormat("en").format(value ?? 0);
}

function formatUpdatedAt(value: string | null) {
  if (!value) {
    return "No recent update";
  }

  return new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "short",
  }).format(new Date(value));
}

function getPlayTitle(play: MainlinePlaySummary) {
  return play.play_name ?? "Untitled play";
}

function StatCard({
  description,
  icon,
  label,
  value,
}: {
  description: string;
  icon: React.ReactNode;
  label: string;
  value: string;
}) {
  return (
    <Card className="bg-card/88">
      <CardHeader className="grid-cols-[auto_1fr] gap-x-3">
        <div className="bg-primary/10 text-primary row-span-2 flex size-10 items-center justify-center rounded-lg">
          {icon}
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

function RecentPlayRow({ play }: { play: MainlinePlaySummary }) {
  const playId = play.play_id ? String(play.play_id) : "";

  return (
    <Link
      href={playId ? appRoutes.mainlinePlay(playId) : appRoutes.mainlinePlays}
      className="hover:bg-muted/55 grid gap-3 rounded-lg border p-3 transition-colors sm:grid-cols-[minmax(0,1fr)_auto]"
    >
      <div className="min-w-0">
        <div className="flex flex-wrap items-center gap-2">
          <p className="truncate font-medium">{getPlayTitle(play)}</p>
          {play.status_name ? (
            <StatusBadge tone="neutral">{play.status_name}</StatusBadge>
          ) : null}
        </div>
        <p className="text-muted-foreground mt-1 truncate text-sm">
          {play.game_name ?? "Unknown game"}
          {play.generation_name ? ` - ${play.generation_name}` : ""}
          {play.trainer_name ? ` - ${play.trainer_name}` : ""}
        </p>
      </div>
      <div className="text-muted-foreground flex items-center gap-2 text-sm">
        <Clock3Icon aria-hidden />
        {formatUpdatedAt(play.updated_at)}
      </div>
    </Link>
  );
}

export function MainlineDashboardHome({ data }: MainlineDashboardHomeProps) {
  const hasPlays = data.recentPlays.length > 0;
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

      <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-4">
        <StatCard
          icon={<CompassIcon aria-hidden />}
          label="Active plays"
          value={formatNumber(activePlayCount)}
          description="Open, paused, or in-progress records in your current library."
        />
        <StatCard
          icon={<TrophyIcon aria-hidden />}
          label="Completed"
          value={formatNumber(data.summary?.completed_play_count)}
          description="Finished plays kept as part of your long-term record."
        />
        <StatCard
          icon={<BookOpenCheckIcon aria-hidden />}
          label="Milestones"
          value={formatNumber(data.statsSummary?.completed_milestone_count)}
          description="Story progress logged across your Mainline records."
        />
        <StatCard
          icon={<Clock3Icon aria-hidden />}
          label="Playtime"
          value={`${formatNumber(
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
            )}
          </CardContent>
        </Card>

        <PageSection title="Quick actions">
          <div className="grid gap-3">
            <Button
              render={<Link href={appRoutes.mainlineNewPlay} />}
              nativeButton={false}
              className="justify-start"
            >
              <PlusIcon data-icon="inline-start" />
              Create a play
            </Button>
            <Button
              render={<Link href={appRoutes.codexPokemon} />}
              nativeButton={false}
              variant="outline"
              className="justify-start"
            >
              <BookOpenCheckIcon data-icon="inline-start" />
              Browse Codex
            </Button>
            <Button
              render={<Link href={appRoutes.mainlinePlays} />}
              nativeButton={false}
              variant="outline"
              className="justify-start"
            >
              <CompassIcon data-icon="inline-start" />
              Open plays
            </Button>
          </div>
        </PageSection>
      </div>
    </>
  );
}
