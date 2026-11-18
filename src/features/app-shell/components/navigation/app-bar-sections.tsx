"use client";

import { Suspense } from "react";

import { usePathname, useSearchParams } from "next/navigation";

import {
  appBarItems,
  isCurrentBarItem,
  isCurrentBarView,
  type AppBarItem,
  type BarMenuView,
} from "@/features/app-shell/utils/app-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { getBarLinkClassName, SteadyLabel } from "@/shared/components/bar-link";
import { Link } from "@/shared/components/link";
import { NavigationMenuBar } from "@/shared/components/navigation-menu/navigation-menu-bar";
import { NavigationMenuOption } from "@/shared/components/navigation-menu/navigation-menu-option";
import { NavigationMenuOptionsPanel } from "@/shared/components/navigation-menu/navigation-menu-options-panel";
import {
  NavigationMenuItem,
  NavigationMenuTrigger,
} from "@/shared/components/ui/navigation-menu";
import { cn } from "@/shared/utils/cn";

const viewIcons = {
  favourites: appIcons.product.favourite,
  games: appIcons.views.codex.games,
  planner: appIcons.views.mainline.planner,
  plans: appIcons.views.mainline.plans,
  pokemon: appIcons.views.codex.pokemon,
} satisfies Record<BarMenuView["icon"], unknown>;

type MenuOptionsProps = {
  pathname: string;
  /* The page's `view`, which tells apart pages that share a path. */
  view: string | null;
  views: readonly BarMenuView[];
};

const MenuOptions = ({ pathname, view, views }: MenuOptionsProps) =>
  views.map((option) => (
    <NavigationMenuOption
      key={option.href}
      active={isCurrentBarView(pathname, view, option)}
      description={option.description}
      leading={<AppIcon icon={viewIcons[option.icon]} size="lg" />}
      render={<Link href={option.href} />}
      title={option.label}
    />
  ));

/* The options with the address's `view` read, which only the browser knows. */
const MenuOptionsOnThisPage = (props: Omit<MenuOptionsProps, "view">) => (
  <MenuOptions {...props} view={useSearchParams().get("view")} />
);

const BarMenu = ({
  isCurrent,
  item,
  pathname,
  views,
}: {
  isCurrent: boolean;
  item: AppBarItem;
  pathname: string;
  views: readonly BarMenuView[];
}) => (
  <NavigationMenuItem>
    <NavigationMenuTrigger
      className={cn(
        getBarLinkClassName(isCurrent),
        !isCurrent &&
          "data-open:bg-(--bar-hover) data-popup-open:bg-(--bar-hover)",
      )}
    >
      <SteadyLabel>{item.label}</SteadyLabel>
    </NavigationMenuTrigger>
    <NavigationMenuOptionsPanel>
      {/* The address's query isn't known when the page is built. */}
      <Suspense
        fallback={<MenuOptions pathname={pathname} view={null} views={views} />}
      >
        <MenuOptionsOnThisPage pathname={pathname} views={views} />
      </Suspense>
    </NavigationMenuOptionsPanel>
  </NavigationMenuItem>
);

/*
 * The app bar's sections (v3 `.links`), inside the top bar's pill: Home,
 * Plays and Statistics are links; Team Planner, Collection and the Codex
 * open a menu of their pages, so each of those is one step away. The current
 * one is a small sticker in the selected tint, as every pick is; it swaps at
 * once, never fades.
 */
export const AppBarSections = ({ className }: { className?: string }) => {
  const pathname = usePathname();

  return (
    <NavigationMenuBar aria-label="Main" className={className}>
      {appBarItems.map((item) => {
        const isCurrent = isCurrentBarItem(pathname, item);

        return item.views ? (
          <BarMenu
            key={item.href}
            isCurrent={isCurrent}
            item={item}
            pathname={pathname}
            views={item.views}
          />
        ) : (
          <NavigationMenuItem key={item.href}>
            <Link
              href={item.href}
              aria-current={isCurrent ? "page" : undefined}
              className={getBarLinkClassName(isCurrent)}
            >
              <SteadyLabel>{item.label}</SteadyLabel>
            </Link>
          </NavigationMenuItem>
        );
      })}
    </NavigationMenuBar>
  );
};
