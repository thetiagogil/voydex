"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import {
  codexLink,
  codexViewLinks,
  isCurrentLink,
  type CodexViewLink,
} from "@/features/app-shell/utils/app-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { getBarLinkClassName, SteadyLabel } from "@/shared/components/bar-link";
import { NavigationMenuBar } from "@/shared/components/navigation-menu/navigation-menu-bar";
import { NavigationMenuOption } from "@/shared/components/navigation-menu/navigation-menu-option";
import { MenuOptionContent } from "@/shared/components/menu-option-content";
import { NavigationMenuOptionsPanel } from "@/shared/components/navigation-menu/navigation-menu-options-panel";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import {
  NavigationMenuItem,
  NavigationMenuTrigger,
} from "@/shared/components/ui/navigation-menu";
import { cn } from "@/shared/utils/cn";

const codexViewIcons: Record<
  CodexViewLink["slug"],
  typeof appIcons.modules.codex
> = {
  games: appIcons.views.codex.games,
  pokemon: appIcons.views.codex.pokemon,
};

const CodexViewIcon = ({ slug }: { slug: CodexViewLink["slug"] }) => (
  <AppIcon icon={codexViewIcons[slug]} size="lg" />
);

/*
 * The Codex on the top bar: its name opens a menu of its pages, as a Play's
 * Team and Progress tabs do, marked as the current link while you're in it.
 * Each module will bring its own Codex pages, so they live here, not on the
 * page.
 */
export const CodexMenu = ({ className }: { className?: string }) => {
  const pathname = usePathname();
  const isCurrent = isCurrentLink(pathname, codexLink);

  return (
    <NavigationMenuBar
      align="end"
      aria-label={codexLink.label}
      className={className}
    >
      <NavigationMenuItem>
        <NavigationMenuTrigger
          className={cn(
            getBarLinkClassName(isCurrent),
            !isCurrent &&
              "data-open:bg-(--bar-hover) data-popup-open:bg-(--bar-hover)",
          )}
        >
          <SteadyLabel>{codexLink.label}</SteadyLabel>
        </NavigationMenuTrigger>
        <NavigationMenuOptionsPanel>
          {codexViewLinks.map((view) => (
            <NavigationMenuOption
              key={view.href}
              active={isCurrentLink(pathname, view)}
              description={view.description}
              leading={<CodexViewIcon slug={view.slug} />}
              render={<Link href={view.href} />}
              title={view.label}
            />
          ))}
        </NavigationMenuOptionsPanel>
      </NavigationMenuItem>
    </NavigationMenuBar>
  );
};

/*
 * Phones and tablets: the Codex tab opens the same pages upward, as a menu
 * of the bar rather than a page of its own.
 */
export const CodexTabMenu = ({
  triggerClassName,
}: {
  triggerClassName: (isCurrent: boolean) => string;
}) => {
  const pathname = usePathname();
  const isCurrent = isCurrentLink(pathname, codexLink);

  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          <button
            type="button"
            aria-current={isCurrent ? "page" : undefined}
            className={triggerClassName(isCurrent)}
          />
        }
      >
        <span className="grid h-8 w-12 place-items-center">
          <AppIcon icon={appIcons.modules.codex} className="size-5.5" />
        </span>
        {codexLink.label}
      </DropdownMenuTrigger>
      <DropdownMenuContent
        side="top"
        align="center"
        sideOffset={10}
        className="w-[min(20rem,calc(100vw-2rem))]"
      >
        <DropdownMenuGroup>
          {codexViewLinks.map((view) => (
            <DropdownMenuItem
              key={view.href}
              render={<Link href={view.href} />}
              aria-current={isCurrentLink(pathname, view) ? "page" : undefined}
            >
              <MenuOptionContent
                active={isCurrentLink(pathname, view)}
                description={view.description}
                leading={<CodexViewIcon slug={view.slug} />}
                title={view.label}
              />
            </DropdownMenuItem>
          ))}
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
