"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import {
  isCurrentLink,
  publicLinks,
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

/* Signed-out phones: the bar's links move into a menu behind one icon (v3 `.pub-menu`). */
export const PublicMenu = ({ className }: { className?: string }) => {
  const pathname = usePathname();

  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          <Button
            variant="ghost"
            size="icon"
            aria-label="Menu"
            className={cn("rounded-full", className)}
          />
        }
      >
        <AppIcon icon={appIcons.actions.menu} size="lg" />
      </DropdownMenuTrigger>
      <DropdownMenuContent align="end" sideOffset={8} className="w-52 p-2">
        {publicLinks.map((link) => {
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
