"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useState } from "react";

import {
  isCurrentLink,
  publicMenuLinks,
} from "@/features/app-shell/utils/app-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { cn } from "@/shared/utils/cn";

/*
 * Signed-out phones: Start a Play and the bar's links fold into a menu behind
 * one icon (v3 `.pub-menu`), which turns into a close mark while it is open.
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
              "rounded-full hover:bg-(--bar-hover) aria-expanded:bg-(--bar-hover)",
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
        {publicMenuLinks.map((link) => {
          const isCurrent = isCurrentLink(pathname, link);

          return (
            <DropdownMenuItem
              key={link.href}
              render={
                <Link
                  href={link.href}
                  aria-current={isCurrent ? "page" : undefined}
                />
              }
              className={cn(
                "text-15 min-h-11 rounded-md px-3.5 font-extrabold",
                isCurrent && "bg-select-soft text-select-ink",
              )}
            >
              {link.label}
            </DropdownMenuItem>
          );
        })}
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
