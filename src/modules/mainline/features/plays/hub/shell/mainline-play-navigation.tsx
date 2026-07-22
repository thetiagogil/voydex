"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import { appRoutes } from "@/config/routes";
import {
  getMainlinePlayNavigationState,
  type MainlinePlayProgressView,
  type MainlinePlayTeamView,
} from "@/modules/mainline/features/plays/hub/shell/mainline-play-navigation-model";
import { NavigationMenuBar } from "@/shared/components/navigation-menu-bar";
import {
  NavigationMenuControlDisabled,
  NavigationMenuControlLink,
  NavigationMenuControlTrigger,
} from "@/shared/components/navigation-menu-control";
import { NavigationMenuOption } from "@/shared/components/navigation-menu-option";
import { NavigationMenuOptionsPanel } from "@/shared/components/navigation-menu-options-panel";
import { NavigationMenuItem } from "@/shared/components/ui/navigation-menu";

type MainlinePlayNavigationProps = {
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
  history: "Team History",
  overview: "Overview",
  plan: "Plan",
};

const progressViewLabels: Record<MainlinePlayProgressView, string> = {
  collectibles: "Collectibles",
  overview: "Overview",
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
  if (!activeView || activeView === "overview") {
    return sectionLabel;
  }

  return `${sectionLabel} - ${labels[activeView]}`;
};

export const MainlinePlayNavigation = ({
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
      label: "Overview",
      value: "overview",
    },
    {
      description: "Compare the recorded team with its linked plan.",
      href: appRoutes.mainlinePlayTeamPlan(playId),
      label: "Plan",
      value: "plan",
    },
    {
      description: "Review type coverage and team composition.",
      label: "Analysis",
      value: "analysis",
    },
    {
      description: "Follow how the team changed over time.",
      label: "Team History",
      value: "history",
    },
  ];
  const progressViews = [
    {
      description: "See the Play's overall completion state.",
      label: "Overview",
      value: "overview",
    },
    {
      description: "Track story milestones and objectives.",
      label: "Story",
      value: "story",
    },
    {
      description: "Track regional Pokédex completion.",
      label: "Pokédex",
      value: "pokedex",
    },
    {
      description: "Track optional items and discoveries.",
      label: "Collectibles",
      value: "collectibles",
    },
  ] as const;

  return (
    <NavigationMenuBar
      align="start"
      aria-label="Play sections"
      className="min-w-0 overflow-x-auto pb-1"
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
              disabled
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
