"use client";

import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { signOut } from "@/lib/auth/server/actions";
import { Avatar, AvatarFallback } from "@/shared/components/ui/avatar";
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
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type UserMenuProps = {
  email: string;
};

const getInitials = (email: string) => {
  const name = email.split("@")[0] ?? "U";
  return name.slice(0, 2).toUpperCase();
};

export const UserMenu = ({ email }: UserMenuProps) => {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          <Button variant="ghost" size="icon-lg" className="rounded-full" />
        }
      >
        <Avatar>
          <AvatarFallback>{getInitials(email)}</AvatarFallback>
        </Avatar>
      </DropdownMenuTrigger>

      <DropdownMenuContent align="end" className="w-56">
        <DropdownMenuGroup>
          <DropdownMenuLabel className="truncate">
            <AppIcon icon={appIcons.account.user} /> {email}
          </DropdownMenuLabel>
        </DropdownMenuGroup>

        <DropdownMenuSeparator />

        <DropdownMenuGroup>
          <DropdownMenuItem render={<Link href={appRoutes.settings} />}>
            <AppIcon icon={appIcons.actions.settings} />
            Settings
          </DropdownMenuItem>
        </DropdownMenuGroup>

        <DropdownMenuSeparator />

        <DropdownMenuGroup>
          <form action={signOut}>
            <DropdownMenuItem
              variant="destructive"
              render={<button type="submit" className="w-full" />}
              nativeButton
            >
              <AppIcon icon={appIcons.actions.signOut} />
              Sign out
            </DropdownMenuItem>
          </form>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
