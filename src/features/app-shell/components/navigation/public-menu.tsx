"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useState } from "react";

import {
  codexLink,
  codexViewLinks,
  isCurrentLink,
  publicMenuLinks,
  type AppNavigationLink,
} from "@/features/app-shell/utils/app-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { cn } from "@/shared/utils/cn";

const PublicMenuLink = ({
  link,
  pathname,
}: {
  link: AppNavigationLink;
  pathname: string;
}) => {
  const isCurrent = isCurrentLink(pathname, link);

  return (
    <DropdownMenuItem
      render={
        <Link href={link.href} aria-current={isCurrent ? "page" : undefined} />
      }
      className={cn(
        "text-15 min-h-11 rounded-md px-3.5 font-extrabold",
        isCurrent && "bg-select-soft text-select-ink",
      )}
    >
      {link.label}
    </DropdownMenuItem>
  );
};

/*
 * Signed-out phones: Start a Play and the bar's links fold into a menu behind
 * one icon (v3 `.pub-menu`), which turns into a close mark while it is open.
 * The Codex's pages follow under its name.
 */
export const PublicMenu = ({ className }: { className?: string }) => {
  const pathname = usePathname();
  const [open, setOpen] = useState(false);

  return (
    <DropdownMenu open={open} onOpenChange={setOpen}>
      <DropdownMenuTrigger
        render={
          <Button
            variant="ghost"
            size="icon"
            aria-label={open ? "Close the menu" : "Menu"}
            className={cn(
              "hover:bg-(--bar-hover) aria-expanded:bg-(--bar-hover)",
              className,
            )}
          />
        }
      >
        <AppIcon
          icon={open ? appIcons.actions.close : appIcons.actions.menu}
          size="lg"
        />
      </DropdownMenuTrigger>
      <DropdownMenuContent align="end" sideOffset={8} className="w-52 p-2">
        {publicMenuLinks.map((link) => (
          <PublicMenuLink key={link.href} link={link} pathname={pathname} />
        ))}
        <DropdownMenuGroup className="mt-1">
          <DropdownMenuLabel className="px-3.5">
            {codexLink.label}
          </DropdownMenuLabel>
          {codexViewLinks.map((link) => (
            <PublicMenuLink key={link.href} link={link} pathname={pathname} />
          ))}
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
