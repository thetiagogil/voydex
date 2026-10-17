"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import type { SignedInAccount } from "@/features/app-shell/types";
import { signOut } from "@/features/app-shell/server/sign-out-action";
import {
  getAccountInitial,
  getAccountName,
} from "@/features/app-shell/utils/account-display";
import {
  accountLink,
  isCurrentLink,
} from "@/features/app-shell/utils/app-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { NavigationMenuOptionContent } from "@/shared/components/navigation-menu/navigation-menu-option-content";
import { Avatar, AvatarFallback } from "@/shared/components/ui/avatar";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";

type UserMenuProps = {
  account: SignedInAccount;
};

/*
 * You on the top bar (v3 `.me-menu`): your name and since when you've been a
 * trainer, Settings, and Log out at the foot. A floating layer, so it takes
 * the float shadow and no edge. Phones reach the same things from the You
 * page instead.
 */
export const UserMenu = ({ account }: UserMenuProps) => {
  const pathname = usePathname();
  const name = getAccountName(account);
  const initial = getAccountInitial(account);
  const isSettingsCurrent = isCurrentLink(pathname, accountLink);

  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          <button
            type="button"
            aria-label="You"
            className="grid size-11 place-items-center rounded-full transition-colors hover:bg-(--bar-hover) aria-expanded:bg-(--bar-hover)"
          />
        }
      >
        {/* TODO(v3-data): your Pokémon icon replaces the letter once profiles store one. */}
        <Avatar>
          {/* The bar's own quiet surface, white over a tinted band. */}
          <AvatarFallback className="text-ink bg-(--bar-control)">
            {initial}
          </AvatarFallback>
        </Avatar>
      </DropdownMenuTrigger>

      <DropdownMenuContent
        align="end"
        sideOffset={8}
        className="w-[min(20rem,calc(100vw-2rem))] p-2"
      >
        <div className="border-line mb-1 flex items-center gap-3 border-b px-2.5 pt-2 pb-3">
          <Avatar size="lg">
            <AvatarFallback>{initial}</AvatarFallback>
          </Avatar>
          <span className="flex min-w-0 flex-col">
            <span className="text-16 truncate font-extrabold">{name}</span>
            {account.trainerSince ? (
              <span className="text-13 text-ink-2 font-semibold">
                Trainer since {account.trainerSince}
              </span>
            ) : null}
          </span>
        </div>

        <DropdownMenuGroup>
          <DropdownMenuItem
            render={<Link href={accountLink.href} />}
            aria-current={isSettingsCurrent ? "page" : undefined}
            className="items-start gap-3 p-2.5"
          >
            <NavigationMenuOptionContent
              active={isSettingsCurrent}
              description="Profile, look and feel"
              leading={<AppIcon icon={appIcons.actions.settings} size="lg" />}
              muted={false}
              title={accountLink.label}
            />
          </DropdownMenuItem>
        </DropdownMenuGroup>

        <form action={signOut}>
          <DropdownMenuItem
            variant="destructive"
            render={<button type="submit" className="w-full" />}
            nativeButton
            className="border-line mt-1 rounded-none rounded-b-md border-t px-2.5 py-3 font-extrabold"
          >
            <AppIcon icon={appIcons.actions.signOut} />
            Log out
          </DropdownMenuItem>
        </form>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
