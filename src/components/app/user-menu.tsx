"use client";

import { LogOutIcon, SettingsIcon, UserIcon } from "lucide-react";
import Link from "next/link";

import { Avatar, AvatarFallback } from "@/components/ui/avatar";
import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { signOut } from "@/features/auth/actions";

type UserMenuProps = {
  email: string;
};

function getInitials(email: string) {
  const name = email.split("@")[0] ?? "U";
  return name.slice(0, 2).toUpperCase();
}

export function UserMenu({ email }: UserMenuProps) {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={<Button variant="ghost" size="icon" className="rounded-full" />}
      >
        <Avatar className="size-8">
          <AvatarFallback>{getInitials(email)}</AvatarFallback>
        </Avatar>
      </DropdownMenuTrigger>
      <DropdownMenuContent align="end" className="w-56">
        <DropdownMenuGroup>
          <DropdownMenuLabel className="truncate">{email}</DropdownMenuLabel>
          <DropdownMenuItem render={<Link href="/settings/profile" />}>
            <UserIcon />
            Profile
          </DropdownMenuItem>
          <DropdownMenuItem render={<Link href="/settings/preferences" />}>
            <SettingsIcon />
            Preferences
          </DropdownMenuItem>
        </DropdownMenuGroup>
        <DropdownMenuSeparator />
        <DropdownMenuGroup>
          <form action={signOut}>
            <DropdownMenuItem
              variant="destructive"
              render={<button type="submit" className="w-full" />}
            >
              <LogOutIcon />
              Sign out
            </DropdownMenuItem>
          </form>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
}
