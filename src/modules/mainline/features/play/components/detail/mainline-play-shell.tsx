import Link from "next/link";
import {
  BookOpen,
  CalendarDays,
  ChevronDown,
  Clock3,
  ClipboardList,
  Layers3,
  Settings,
  ShieldCheck,
  Sparkles,
  UsersRound,
} from "lucide-react";

import { appRoutes } from "@/config/routes";
import { GameCoverArt } from "@/modules/codex/components/game-cover-art";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatDate,
  formatPlaytime,
  getPlayTitle,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { StatusBadge } from "@/shared/components/app/status-badge";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { Separator } from "@/shared/components/ui/separator";
import { cn } from "@/lib/utils";

type MainlinePlayTab = "overview" | "team" | "progress";
type MainlinePlayProgressTab = "summary" | "story" | "pokedex" | "collectibles";

type MainlinePlayShellProps = {
  activeProgressTab?: MainlinePlayProgressTab;
  activeTab: MainlinePlayTab;
  children: React.ReactNode;
  data: MainlinePlayDetailData;
};

const mainTabs: Array<{
  href: (playId: string) => string;
  label: string;
  value: MainlinePlayTab;
}> = [
  {
    href: appRoutes.mainlinePlay,
    label: "Overview",
    value: "overview",
  },
  {
    href: appRoutes.mainlinePlayTeam,
    label: "Team",
    value: "team",
  },
  {
    href: appRoutes.mainlinePlayProgress,
    label: "Progress",
    value: "progress",
  },
];

const progressTabs: Array<{
  href: (playId: string) => string;
  label: string;
  value: MainlinePlayProgressTab;
}> = [
  {
    href: appRoutes.mainlinePlayProgress,
    label: "Summary",
    value: "summary",
  },
  {
    href: appRoutes.mainlinePlayStory,
    label: "Story",
    value: "story",
  },
  {
    href: appRoutes.mainlinePlayPokedex,
    label: "Pokedex",
    value: "pokedex",
  },
  {
    href: appRoutes.mainlinePlayCollectibles,
    label: "Collectibles",
    value: "collectibles",
  },
];

function PlayRouteNav({
  activeValue,
  items,
  playId,
}: {
  activeValue: string;
  items: Array<{
    href: (playId: string) => string;
    label: string;
    value: string;
  }>;
  playId: string;
}) {
  return (
    <nav aria-label="Play navigation" className="flex flex-wrap gap-1">
      {items.map((item) => (
        <Link
          key={item.value}
          href={item.href(playId)}
          className={cn(
            buttonVariants({ variant: "ghost", size: "lg" }),
            "relative rounded-none px-4",
            activeValue === item.value
              ? "text-primary after:bg-primary after:absolute after:inset-x-3 after:-bottom-3 after:h-0.5"
              : "text-muted-foreground",
          )}
        >
          {item.label}
        </Link>
      ))}
    </nav>
  );
}

function PlayQuickActions({ playId }: { playId: string }) {
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
            Manage team
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayStory(playId)} />}
          >
            <BookOpen />
            Log story progress
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayPokedex(playId)} />}
          >
            <ClipboardList />
            Update Pokedex
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayCollectibles(playId)} />}
          >
            <Sparkles />
            Mark collectible
          </DropdownMenuItem>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
}

export function MainlinePlayShell({
  activeProgressTab,
  activeTab,
  children,
  data,
}: MainlinePlayShellProps) {
  const play = data.overview;
  const playId = String(play.play_id);
  const title = getPlayTitle(play);

  return (
    <div className="flex flex-col gap-4">
      <section className="flex flex-col gap-4 lg:flex-row lg:items-end lg:justify-between">
        <div className="flex flex-col gap-4 sm:flex-row sm:items-start">
          <GameCoverArt
            imageUrl={data.gameCoverImageUrl}
            name={play.game_name ?? title}
            className="aspect-[4/3] w-full max-w-52 shrink-0 sm:w-44"
          />

          <div className="flex min-w-0 flex-col gap-3">
            <div className="flex flex-wrap items-center gap-2">
              <h1 className="cn-font-heading text-3xl font-semibold tracking-tight">
                {title}
              </h1>
              <Button variant="ghost" size="icon-sm" aria-label="Edit play">
                <Settings />
              </Button>
            </div>

            <div className="flex flex-wrap items-center gap-2 text-sm">
              {play.status_name ? (
                <StatusBadge tone="success">{play.status_name}</StatusBadge>
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
                <Sparkles className="size-3" />
                Pokedex {play.pokedex_tracking_enabled ? "enabled" : "off"}
              </StatusBadge>
              <StatusBadge tone="neutral">
                <ShieldCheck className="size-3" />
                Story completion
              </StatusBadge>
              <StatusBadge tone="neutral">
                <Layers3 className="size-3" />
                Optional entries{" "}
                {play.include_optional_pokedex_entries_in_completion
                  ? "included"
                  : "excluded"}
              </StatusBadge>
            </div>
          </div>
        </div>

        <div className="flex flex-wrap gap-2">
          <Button
            render={<Link href={appRoutes.mainlinePlayTeam(playId)} />}
            nativeButton={false}
          >
            <UsersRound data-icon="inline-start" />
            View team
          </Button>
          <PlayQuickActions playId={playId} />
        </div>
      </section>

      <Card className="overflow-visible">
        <CardContent className="flex flex-col gap-5">
          <div className="flex flex-col gap-4">
            <PlayRouteNav
              activeValue={activeTab}
              items={mainTabs}
              playId={playId}
            />
            {activeTab === "progress" ? (
              <>
                <Separator />
                <PlayRouteNav
                  activeValue={activeProgressTab ?? "summary"}
                  items={progressTabs}
                  playId={playId}
                />
              </>
            ) : null}
          </div>
          {children}
        </CardContent>
      </Card>
    </div>
  );
}
