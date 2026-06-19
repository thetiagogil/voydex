"use client";

import { LogOutIcon, SettingsIcon, UserIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { signOut } from "@/shared/auth/server/actions";
import { Avatar, AvatarFallback } from "@/shared/components/ui/avatar";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";

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
      <DropdownMenuTrigger asChild>
        <Button variant="ghost" size="icon-lg" className="rounded-full">
          <Avatar>
            <AvatarFallback>{getInitials(email)}</AvatarFallback>
          </Avatar>
        </Button>
      </DropdownMenuTrigger>

      <DropdownMenuContent align="end" className="w-56">
        <DropdownMenuItem asChild disabled>
          <DropdownMenuLabel className="truncate">
            <UserIcon /> {email}
          </DropdownMenuLabel>
        </DropdownMenuItem>

        <DropdownMenuSeparator />

        <DropdownMenuItem asChild>
          <Link href={appRoutes.settings}>
            <SettingsIcon />
            Settings
          </Link>
        </DropdownMenuItem>

        <DropdownMenuSeparator />

        <form action={signOut}>
          <DropdownMenuItem variant="destructive" asChild>
            <button type="submit" className="w-full">
              <LogOutIcon />
              Sign out
            </button>
          </DropdownMenuItem>
        </form>
      </DropdownMenuContent>
    </DropdownMenu>
  );
}
