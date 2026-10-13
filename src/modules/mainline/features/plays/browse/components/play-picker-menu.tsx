"use client";

import Link from "next/link";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";

export type PlayPickerMenuItem = {
  href: string;
  id: string;
  /* "Sword · Late Journey". */
  label: string;
  /* A quiet second line, such as the Play's status. */
  detail?: string | null;
};

type PlayPickerMenuProps = {
  /* What the menu is for, read before its items ("Add Arcanine to"). */
  heading: string;
  items: PlayPickerMenuItem[];
  /* The last item: start a new Play instead. */
  newPlay?: { href: string; label: string };
  triggerLabel: string;
  triggerVariant?: "default" | "outline";
};

/*
 * A menu of your Plays, each a link (the Codex's "Add to a Play" and "Your
 * Plays"), ending on a way to start a new one. It is quiet chrome: a flat
 * trigger and the float shadow.
 */
export const PlayPickerMenu = ({
  heading,
  items,
  newPlay,
  triggerLabel,
  triggerVariant = "outline",
}: PlayPickerMenuProps) => (
  <DropdownMenu>
    <DropdownMenuTrigger
      render={<Button type="button" variant={triggerVariant} />}
    >
      {triggerLabel}
      <AppIcon icon={appIcons.actions.expand} inline="end" />
    </DropdownMenuTrigger>
    <DropdownMenuContent align="end" className="w-72 max-w-[calc(100vw-2rem)]">
      <DropdownMenuGroup>
        <DropdownMenuLabel>{heading}</DropdownMenuLabel>
        {items.map((item) => (
          <DropdownMenuItem key={item.id} render={<Link href={item.href} />}>
            <span className="min-w-0">
              <span className="block truncate">{item.label}</span>
              {item.detail ? (
                <span className="text-ink-3 text-12 block truncate font-semibold">
                  {item.detail}
                </span>
              ) : null}
            </span>
          </DropdownMenuItem>
        ))}
      </DropdownMenuGroup>
      {newPlay ? (
        <>
          <DropdownMenuSeparator />
          <DropdownMenuItem render={<Link href={newPlay.href} />}>
            <AppIcon icon={appIcons.actions.create} />
            {newPlay.label}
          </DropdownMenuItem>
        </>
      ) : null}
    </DropdownMenuContent>
  </DropdownMenu>
);
