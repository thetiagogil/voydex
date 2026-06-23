import Link from "next/link";
import {
  ArrowLeft,
  BookOpen,
  CalendarDays,
  ChevronDown,
  Clock3,
  ClipboardList,
  Gauge,
  Gem,
  LayoutDashboard,
  ShieldCheck,
  Sparkles,
  UsersRound,
  type LucideIcon,
} from "lucide-react";
import { appRoutes } from "@/config/routes";
import { GameCoverArt } from "@/modules/codex/components/game-cover-art";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatDate,
  formatNumber,
  formatPercent,
  formatPlaytime,
  getActiveTeam,
  getPlayTitle,
  getReserveTeam,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { ProgressMeter } from "@/shared/components/app/progress-meter";
import { StatusBadge } from "@/shared/components/app/status-badge";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { cn } from "@/lib/utils";
type MainlinePlayTab = "overview" | "team" | "progress";
type MainlinePlayProgressTab = "summary" | "story" | "pokedex" | "collectibles";
type MainlinePlaySurface =
  | Exclude<MainlinePlayTab, "progress">
  | MainlinePlayProgressTab;
type MainlinePlayShellProps = {
  activeProgressTab?: MainlinePlayProgressTab;
  activeTab: MainlinePlayTab;
  children: React.ReactNode;
  data: MainlinePlayDetailData;
};
const playHubNavItems: Array<{
  description: string;
  href: (playId: string) => string;
  icon: LucideIcon;
  label: string;
  value: MainlinePlaySurface;
}> = [
  {
    description: "Run summary",
    href: appRoutes.mainlinePlay,
    icon: LayoutDashboard,
    label: "Overview",
    value: "overview",
  },
  {
    description: "Roster",
    href: appRoutes.mainlinePlayTeam,
    icon: UsersRound,
    label: "Team",
    value: "team",
  },
  {
    description: "Completion",
    href: appRoutes.mainlinePlayProgress,
    icon: Gauge,
    label: "Progress",
    value: "summary",
  },
  {
    description: "Milestones",
    href: appRoutes.mainlinePlayStory,
    icon: BookOpen,
    label: "Story",
    value: "story",
  },
  {
    description: "Seen and caught",
    href: appRoutes.mainlinePlayPokedex,
    icon: ClipboardList,
    label: "Pokedex",
    value: "pokedex",
  },
  {
    description: "Collected items",
    href: appRoutes.mainlinePlayCollectibles,
    icon: Gem,
    label: "Collectibles",
    value: "collectibles",
  },
];
const getActiveSurface = (
  activeTab: MainlinePlayTab,
  activeProgressTab?: MainlinePlayProgressTab,
): MainlinePlaySurface => {
  if (activeTab === "progress") {
    return activeProgressTab ?? "summary";
  }
  return activeTab;
};
const PlayHubNavigation = ({
  activeSurface,
  playId,
}: {
  activeSurface: MainlinePlaySurface;
  playId: string;
}) => {
  return (
    <nav
      aria-label="Play sections"
      className="ring-app-surface-border bg-card/72 flex gap-2 overflow-x-auto rounded-xl p-2 ring-1 backdrop-blur-md"
    >
      {playHubNavItems.map((item) => {
        const Icon = item.icon;
        const isActive = activeSurface === item.value;
        return (
          <Link
            key={item.value}
            href={item.href(playId)}
            aria-current={isActive ? "page" : undefined}
            className={cn(
              buttonVariants({ variant: isActive ? "secondary" : "ghost" }),
              "h-auto min-w-40 flex-1 justify-start gap-3 px-3 py-2 sm:flex-none",
              isActive
                ? "ring-app-surface-border text-foreground ring-1"
                : "text-muted-foreground",
            )}
          >
            <Icon className="size-4" />
            <span className="flex min-w-0 flex-col items-start">
              <span className="truncate leading-tight">{item.label}</span>
              <span className="text-muted-foreground text-xs leading-tight font-normal">
                {item.description}
              </span>
            </span>
          </Link>
        );
      })}
    </nav>
  );
};
const PlayQuickActions = ({ playId }: { playId: string }) => {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger render={<Button variant="outline" />}>
        Quick actions
        <ChevronDown data-icon="inline-end" />
      </DropdownMenuTrigger>
      <DropdownMenuContent align="end" className="w-52">
        <DropdownMenuGroup>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayTeam(playId)} />}
          >
            <UsersRound />
            Open team
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayStory(playId)} />}
          >
            <BookOpen />
            Open story
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayPokedex(playId)} />}
          >
            <ClipboardList />
            Open Pokedex
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayCollectibles(playId)} />}
          >
            <Gem />
            Open collectibles
          </DropdownMenuItem>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
export const MainlinePlayShell = ({
  activeProgressTab,
  activeTab,
  children,
  data,
}: MainlinePlayShellProps) => {
  const play = data.overview;
  const playId = String(play.play_id);
  const title = getPlayTitle(play);
  const activeSurface = getActiveSurface(activeTab, activeProgressTab);
  const activeTeamCount = getActiveTeam(data.team).length;
  const reserveTeamCount = getReserveTeam(data.team).length;
  const overallCompletion = play.overall_completion_percent ?? 0;
  return (
    <div className="flex flex-col gap-5">
      <section className="ring-app-surface-border bg-card/78 rounded-xl p-4 ring-1 backdrop-blur-md sm:p-5">
        <div className="grid gap-5 xl:grid-cols-[auto_minmax(0,1fr)_18rem] xl:items-center">
          <GameCoverArt
            imageUrl={data.gameCoverImageUrl}
            name={play.game_name ?? title}
            className="aspect-[4/3] w-full max-w-48 shrink-0 sm:w-44"
          />

          <div className="flex min-w-0 flex-col gap-4">
            <div className="flex flex-col gap-2">
              <h1 className="text-3xl font-semibold tracking-normal">
                {title}
              </h1>

              <div className="flex flex-wrap items-center gap-2 text-sm">
                {play.status_name ? (
                  <StatusBadge tone="neutral">{play.status_name}</StatusBadge>
                ) : null}
                <span className="text-muted-foreground">
                  {play.game_name ?? "Unknown game"}
                </span>
                {play.generation_name ? (
                  <span className="text-muted-foreground">
                    {play.generation_name}
                  </span>
                ) : null}
                {play.version_group_name ? (
                  <span className="text-muted-foreground">
                    {play.version_group_name}
                  </span>
                ) : null}
              </div>
            </div>

            <div className="text-muted-foreground flex flex-wrap gap-4 text-sm">
              <span className="inline-flex items-center gap-1.5">
                <CalendarDays className="size-4" />
                Started {formatDate(play.started_on)}
              </span>
              <span className="inline-flex items-center gap-1.5">
                <Clock3 className="size-4" />
                {formatPlaytime(play.playtime_minutes)}
              </span>
            </div>

            <div className="flex flex-wrap gap-2">
              <StatusBadge tone="neutral">
                <UsersRound className="size-3" />
                {formatNumber(activeTeamCount)} active
              </StatusBadge>
              <StatusBadge tone="neutral">
                <Sparkles className="size-3" />
                {formatNumber(reserveTeamCount)} reserve
              </StatusBadge>
              <StatusBadge tone="neutral">
                <ClipboardList className="size-3" />
                Pokedex {play.pokedex_tracking_enabled ? "enabled" : "off"}
              </StatusBadge>
              <StatusBadge tone="neutral">
                <ShieldCheck className="size-3" />
                Optional entries{" "}
                {play.include_optional_pokedex_entries_in_completion
                  ? "count"
                  : "do not count"}
              </StatusBadge>
            </div>
          </div>

          <div className="bg-background/35 flex flex-col gap-4 rounded-lg border p-4">
            <div>
              <div className="flex items-end justify-between gap-3">
                <p className="text-muted-foreground text-sm font-medium">
                  Overall completion
                </p>
                <p className="text-2xl font-semibold">
                  {formatPercent(overallCompletion)}
                </p>
              </div>
              <ProgressMeter className="mt-3" value={overallCompletion} />
            </div>

            <div className="grid grid-cols-2 gap-2">
              <Button
                variant="outline"
                render={<Link href={appRoutes.mainlinePlays} />}
                nativeButton={false}
              >
                <ArrowLeft data-icon="inline-start" />
                Plays
              </Button>
              <PlayQuickActions playId={playId} />
            </div>
          </div>
        </div>
      </section>

      <PlayHubNavigation activeSurface={activeSurface} playId={playId} />

      <div className="flex flex-col gap-5">{children}</div>
    </div>
  );
};
