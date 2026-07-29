"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import { appRoutes } from "@/config/routes";
import {
  getMainlinePlayNavigationState,
  type MainlinePlayProgressView,
  type MainlinePlayTeamView,
} from "@/modules/mainline/features/plays/hub/shell/mainline-play-navigation-model";
import { NavigationMenuBar } from "@/shared/components/navigation-menu/navigation-menu-bar";
import {
  NavigationMenuControlDisabled,
  NavigationMenuControlLink,
  NavigationMenuControlTrigger,
} from "@/shared/components/navigation-menu/navigation-menu-control";
import { NavigationMenuOption } from "@/shared/components/navigation-menu/navigation-menu-option";
import { NavigationMenuOptionsPanel } from "@/shared/components/navigation-menu/navigation-menu-options-panel";
import { NavigationMenuItem } from "@/shared/components/ui/navigation-menu";

type MainlinePlayNavigationProps = {
  collectiblesAvailable: boolean;
  playId: string;
};

type TeamNavigationView = {
  description: string;
  href?: string;
  label: string;
  value: MainlinePlayTeamView;
};

const teamViewLabels: Record<MainlinePlayTeamView, string> = {
  analysis: "Analysis",
  history: "History",
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

  return `${sectionLabel} - ${labels[activeView]}`;
};

export const MainlinePlayNavigation = ({
  collectiblesAvailable,
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
      label: "Roster",
      value: "roster",
    },
    {
      description: "Compare the recorded team with its linked plan.",
      href: appRoutes.mainlinePlayTeamPlan(playId),
      label: "Plan",
      value: "plan",
    },
    {
      description: "Review type coverage and team composition.",
      href: appRoutes.mainlinePlayTeamAnalysis(playId),
      label: "Analysis",
      value: "analysis",
    },
    {
      description: "Follow how the team changed over time.",
      href: appRoutes.mainlinePlayTeamHistory(playId),
      label: "History",
      value: "history",
    },
  ];
  const progressViews = [
    {
      description: "Track story milestones and objectives.",
      href: appRoutes.mainlinePlayProgressStory(playId),
      label: "Story",
      value: "story",
    },
    {
      description: "Track regional Pokédex completion.",
      href: appRoutes.mainlinePlayProgressPokedex(playId),
      label: "Pokédex",
      value: "pokedex",
    },
    ...(collectiblesAvailable
      ? [
          {
            description: "Track game-specific collectibles and discoveries.",
            href: appRoutes.mainlinePlayProgressCollectibles(playId),
            label: "Collectibles",
            value: "collectibles",
          } as const,
        ]
      : []),
  ] as const;

  return (
    <NavigationMenuBar
      align="start"
      aria-label="Play sections"
      className="min-w-0 overflow-x-auto pt-4 pb-2"
      listClassName="w-max flex-nowrap"
    >
      <NavigationMenuItem>
        <NavigationMenuControlLink
          active={state.activeSection === "overview"}
          render={<Link href={appRoutes.mainlinePlay(playId)} />}
          className="min-w-24 justify-center px-3"
        >
          Overview
        </NavigationMenuControlLink>
      </NavigationMenuItem>

      <NavigationMenuItem>
        <NavigationMenuControlTrigger
          active={state.activeSection === "team"}
          className="min-w-28 px-3"
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
          className="min-w-28 px-3"
        >
          <span className="max-w-48 truncate">{progressLabel}</span>
        </NavigationMenuControlTrigger>
        <NavigationMenuOptionsPanel>
          {progressViews.map((view) => (
            <NavigationMenuOption
              key={view.value}
              active={state.activeProgressView === view.value}
              description={view.description}
              render={<Link href={view.href} />}
              title={view.label}
            />
          ))}
        </NavigationMenuOptionsPanel>
      </NavigationMenuItem>

      <NavigationMenuItem>
        <NavigationMenuControlDisabled
          accessibilityLabel="History is not available yet"
          className="min-w-24 px-3"
        >
          History
        </NavigationMenuControlDisabled>
      </NavigationMenuItem>

      <NavigationMenuItem>
        <NavigationMenuControlDisabled
          accessibilityLabel="Settings is not available yet"
          className="min-w-24 px-3"
        >
          Settings
        </NavigationMenuControlDisabled>
      </NavigationMenuItem>
    </NavigationMenuBar>
  );
};
