import Link from "next/link";
import { appRoutes } from "@/config/routes";
import type { MainlinePlaySurface } from "@/modules/mainline/features/play/detail/shared/utils/play-detail-navigation";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/lib/utils";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";

const playHubNavItems: Array<{
  description: string;
  href: (playId: string) => string;
  icon: AppIconComponent;
  label: string;
  value: MainlinePlaySurface;
}> = [
  {
    description: "Run summary",
    href: appRoutes.mainlinePlay,
    icon: appIcons.views.mainline.overview,
    label: "Overview",
    value: "overview",
  },
  {
    description: "Roster",
    href: appRoutes.mainlinePlayTeam,
    icon: appIcons.views.mainline.team,
    label: "Team",
    value: "team",
  },
  {
    description: "Completion",
    href: appRoutes.mainlinePlayProgress,
    icon: appIcons.views.mainline.progress,
    label: "Progress",
    value: "summary",
  },
  {
    description: "Milestones",
    href: appRoutes.mainlinePlayStory,
    icon: appIcons.views.mainline.story,
    label: "Story",
    value: "story",
  },
  {
    description: "Seen and caught",
    href: appRoutes.mainlinePlayPokedex,
    icon: appIcons.views.mainline.pokedex,
    label: "Pokédex",
    value: "pokedex",
  },
  {
    description: "Collected items",
    href: appRoutes.mainlinePlayCollectibles,
    icon: appIcons.views.mainline.collectibles,
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
            <AppIcon icon={item.icon} className="size-4" />
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
