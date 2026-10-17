"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import { appRoutes } from "@/config/routes";
import {
  getMainlinePlayNavigationState,
  type MainlinePlayProgressView,
  type MainlinePlayTeamView,
} from "@/modules/mainline/features/plays/hub/shell/mainline-play-navigation-model";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { NavigationMenuBar } from "@/shared/components/navigation-menu/navigation-menu-bar";
import {
  NavigationMenuControlLink,
  NavigationMenuControlTrigger,
} from "@/shared/components/navigation-menu/navigation-menu-control";
import { NavigationMenuOption } from "@/shared/components/navigation-menu/navigation-menu-option";
import { NavigationMenuOptionsPanel } from "@/shared/components/navigation-menu/navigation-menu-options-panel";
import { NavigationMenuItem } from "@/shared/components/ui/navigation-menu";

type MainlinePlayNavigationProps = {
  collectiblesAvailable: boolean;
  label?: string;
  playId: string;
};

type TeamNavigationView = {
  description: string;
  href?: string;
  icon: AppIconComponent;
  label: string;
  value: MainlinePlayTeamView;
};

const teamViewLabels: Record<MainlinePlayTeamView, string> = {
  analysis: "Analysis",
  plan: "Plan",
  roster: "Roster",
};

const progressViewLabels: Record<MainlinePlayProgressView, string> = {
  collectibles: "Collectibles",
  pokedex: "Pokédex",
  story: "Story",
};

const getCompoundLabel = <TView extends string>({
  activeView,
  labels,
  sectionLabel,
}: {
  activeView: TView | null;
  labels: Record<TView, string>;
  sectionLabel: string;
}) => {
  if (!activeView) {
    return sectionLabel;
  }

  return `${sectionLabel} · ${labels[activeView]}`;
};

/*
 * A Play's tabs: quiet pills, the active one solid. Team and Progress open
 * menus of their views, each with its icon and one line on what it is for.
 */
export const MainlinePlayNavigation = ({
  collectiblesAvailable,
  label = "Play sections",
  playId,
}: MainlinePlayNavigationProps) => {
  const pathname = usePathname();
  const state = getMainlinePlayNavigationState(pathname, playId);
  const teamLabel = getCompoundLabel({
    activeView: state.activeTeamView,
    labels: teamViewLabels,
    sectionLabel: "Team",
  });
  const progressLabel = getCompoundLabel({
    activeView: state.activeProgressView,
    labels: progressViewLabels,
    sectionLabel: "Progress",
  });
  const teamViews: TeamNavigationView[] = [
    {
      description: "Manage the team recorded in this Play.",
      href: appRoutes.mainlinePlayTeam(playId),
      icon: appIcons.views.mainline.team,
      label: "Roster",
      value: "roster",
    },
    {
      description: "Compare the recorded team with its linked plan.",
      href: appRoutes.mainlinePlayTeamPlan(playId),
      icon: appIcons.views.mainline.planner,
      label: "Plan",
      value: "plan",
    },
    {
      description: "Review type coverage and team composition.",
      href: appRoutes.mainlinePlayTeamAnalysis(playId),
      icon: appIcons.product.battle,
      label: "Analysis",
      value: "analysis",
    },
  ];
  const progressViews = [
    {
      description: "Track story milestones and objectives.",
      href: appRoutes.mainlinePlayProgressStory(playId),
      icon: appIcons.views.mainline.story,
      label: "Story",
      value: "story",
    },
    {
      description: "Track regional Pokédex completion.",
      href: appRoutes.mainlinePlayProgressPokedex(playId),
      icon: appIcons.views.mainline.pokedex,
      label: "Pokédex",
      value: "pokedex",
    },
    ...(collectiblesAvailable
      ? [
          {
            description: "Track game-specific collectibles and discoveries.",
            href: appRoutes.mainlinePlayProgressCollectibles(playId),
            icon: appIcons.views.mainline.collectibles,
            label: "Collectibles",
            value: "collectibles",
          } as const,
        ]
      : []),
  ] as const;

  return (
    <NavigationMenuBar
      align="start"
      aria-label={label}
      className="min-w-0"
      listClassName="w-max flex-nowrap gap-1.5"
    >
      <NavigationMenuItem>
        <NavigationMenuControlLink
          active={state.activeSection === "overview"}
          render={<Link href={appRoutes.mainlinePlay(playId)} />}
          className="justify-center px-4"
        >
          Overview
        </NavigationMenuControlLink>
      </NavigationMenuItem>

      <NavigationMenuItem>
        <NavigationMenuControlTrigger
          active={state.activeSection === "team"}
          className="px-4"
        >
          <span className="max-w-48 truncate">{teamLabel}</span>
        </NavigationMenuControlTrigger>
        <NavigationMenuOptionsPanel>
          {teamViews.map((view) => {
            const active = state.activeTeamView === view.value;

            return (
              <NavigationMenuOption
                key={view.value}
                active={active}
                description={view.description}
                disabled={!view.href}
                leading={<AppIcon icon={view.icon} size="md" />}
                render={view.href ? <Link href={view.href} /> : undefined}
                title={view.label}
              />
            );
          })}
        </NavigationMenuOptionsPanel>
      </NavigationMenuItem>

      <NavigationMenuItem>
        <NavigationMenuControlTrigger
          active={state.activeSection === "progress"}
          className="px-4"
        >
          <span className="max-w-48 truncate">{progressLabel}</span>
        </NavigationMenuControlTrigger>
        <NavigationMenuOptionsPanel>
          {progressViews.map((view) => (
            <NavigationMenuOption
              key={view.value}
              active={state.activeProgressView === view.value}
              description={view.description}
              leading={<AppIcon icon={view.icon} size="md" />}
              render={<Link href={view.href} />}
              title={view.label}
            />
          ))}
        </NavigationMenuOptionsPanel>
      </NavigationMenuItem>

      <NavigationMenuItem>
        <NavigationMenuControlLink
          active={state.activeSection === "history"}
          render={<Link href={appRoutes.mainlinePlayHistory(playId)} />}
          className="justify-center px-4"
        >
          History
        </NavigationMenuControlLink>
      </NavigationMenuItem>

      <NavigationMenuItem>
        <NavigationMenuControlLink
          active={state.activeSection === "settings"}
          render={<Link href={appRoutes.mainlinePlaySettings(playId)} />}
          className="justify-center px-4"
        >
          Settings
        </NavigationMenuControlLink>
      </NavigationMenuItem>
    </NavigationMenuBar>
  );
};
