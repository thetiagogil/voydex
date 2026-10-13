"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import { UserMenu } from "@/features/app-shell/components/navigation/user-menu";
import {
  codexLink,
  isCurrentLink,
  mainlineLinks,
} from "@/features/app-shell/utils/app-navigation";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type AppTabBarProps = {
  email: string;
};

type TabItemProps = {
  href: string;
  icon: AppIconComponent;
  isCurrent: boolean;
  label: string;
};

const TabItem = ({ href, icon, isCurrent, label }: TabItemProps) => (
  <Link
    href={href}
    aria-current={isCurrent ? "page" : undefined}
    className={cn(
      "text-12 text-ink-2 flex flex-col items-center gap-0.5 rounded-md px-0.5 pt-1.5 pb-1 font-bold",
      isCurrent && "text-ink font-extrabold",
    )}
  >
    <span
      className={cn(
        "grid h-8 w-12 place-items-center rounded-full transition-colors",
        isCurrent && "bg-action-soft text-action-lip",
      )}
    >
      <AppIcon icon={icon} className="size-5.5" />
    </span>
    {label}
  </Link>
);

/*
 * Phones and tablets: the app's sections move to a bar on the bottom edge
 * (v3 `.tabbar`), its items kept together in the middle. v3 also draws Home
 * and the Planner; they join when their screens ship. You opens your account
 * menu until the You page ships.
 */
export const AppTabBar = ({ email }: AppTabBarProps) => {
  const pathname = usePathname();

  return (
    <nav
      aria-label="Main"
      data-tab-bar
      className="border-line bg-surface fixed inset-x-0 bottom-0 z-30 grid auto-cols-[minmax(0,6.5rem)] grid-flow-col justify-center gap-0.5 border-t px-2 pt-1.5 pb-[calc(0.375rem+env(safe-area-inset-bottom))] lg:hidden"
    >
      {mainlineLinks.map((link) => (
        <TabItem
          key={link.href}
          href={link.href}
          icon={appIcons.views.mainline[link.slug]}
          isCurrent={isCurrentLink(pathname, link)}
          label={link.label}
        />
      ))}
      <TabItem
        href={codexLink.href}
        icon={appIcons.modules.codex}
        isCurrent={isCurrentLink(pathname, codexLink)}
        label={codexLink.label}
      />
      <UserMenu email={email} placement="tab" />
    </nav>
  );
};
