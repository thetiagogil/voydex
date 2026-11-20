"use client";

import { Link } from "@/shared/components/link";
import { usePathname } from "next/navigation";

import {
  codexLink,
  codexViewLinks,
  isCurrentLink,
  type CodexViewLink,
} from "@/features/app-shell/utils/app-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { MenuOptionContent } from "@/shared/components/menu-option-content";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";

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
          <AppIcon icon={appIcons.modules.codex} size="lg" />
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
