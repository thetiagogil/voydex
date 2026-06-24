import Link from "next/link";
import {
  BookOpen,
  ClipboardList,
  Gauge,
  Gem,
  LayoutDashboard,
  UsersRound,
  type LucideIcon,
} from "lucide-react";

import { appRoutes } from "@/config/routes";
import type { MainlinePlaySurface } from "@/modules/mainline/features/play/components/detail/shell/play-shell-types";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/lib/utils";

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

type PlayHubNavigationProps = {
  activeSurface: MainlinePlaySurface;
  playId: string;
};

export const PlayHubNavigation = ({
  activeSurface,
  playId,
}: PlayHubNavigationProps) => {
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
