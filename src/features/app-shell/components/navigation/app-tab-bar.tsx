"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import type { SignedInAccount } from "@/features/app-shell/types";
import { AccountAvatar } from "@/features/app-shell/components/navigation/account-avatar";
import { CodexTabMenu } from "@/features/app-shell/components/navigation/codex-menu";
import {
  isCurrentLink,
  tabBarLinks,
  youLinks,
} from "@/features/app-shell/utils/app-navigation";
import { getMainlineViewIcon } from "@/features/app-shell/utils/mainline-view-icons";
import { AppIcon } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type AppTabBarProps = {
  account: SignedInAccount;
};

type TabItemProps = {
  href: string;
  icon: ReactNode;
  isCurrent: boolean;
  label: string;
};

/* The current item sits in one soft pill, its icon and label together; it moves at once, never fades. */
const getTabItemClassName = (isCurrent: boolean) =>
  cn(
    "text-12 text-ink-2 flex flex-col items-center gap-0.5 rounded-xl px-0.5 pt-1.5 pb-1 font-bold",
    isCurrent && "bg-select-soft text-select-ink font-extrabold",
  );

const TabItem = ({ href, icon, isCurrent, label }: TabItemProps) => (
  <Link
    href={href}
    aria-current={isCurrent ? "page" : undefined}
    className={getTabItemClassName(isCurrent)}
  >
    <span className="grid h-8 w-12 place-items-center">{icon}</span>
    {label}
  </Link>
);

/*
 * Phones and tablets: the app's sections move to a bar on the bottom edge
 * (v3 `.tabbar`), its items kept together in the middle: Mainline's views
 * (Home, Plays and the Planner as each ships), the Codex (a menu of its
 * pages), and You, which
 * opens the You page with Statistics, Collection and Settings.
 */
export const AppTabBar = ({ account }: AppTabBarProps) => {
  const pathname = usePathname();

  return (
    <nav
      aria-label="Main"
      data-tab-bar
      className="border-line bg-surface fixed inset-x-0 bottom-0 z-30 grid auto-cols-[minmax(0,6.5rem)] grid-flow-col justify-center gap-0.5 border-t px-2 pt-1.5 pb-[calc(0.375rem+env(safe-area-inset-bottom))] lg:hidden"
    >
      {tabBarLinks.map((link) => (
        <TabItem
          key={link.href}
          href={link.href}
          icon={
            <AppIcon
              icon={getMainlineViewIcon(link.href)}
              className="size-5.5"
            />
          }
          isCurrent={isCurrentLink(pathname, link)}
          label={link.shortLabel}
        />
      ))}
      <CodexTabMenu triggerClassName={getTabItemClassName} />
      <TabItem
        href={appRoutes.you}
        icon={
          /* Your icon, as on the top bar and your card. */
          <AccountAvatar account={account} size="sm" />
        }
        isCurrent={youLinks.some((link) => isCurrentLink(pathname, link))}
        label="You"
      />
    </nav>
  );
};
