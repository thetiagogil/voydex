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
import { MenuOptionContent } from "@/shared/components/menu-option-content";
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
            className="group/you bubble grid size-9 place-items-center rounded-full"
          />
        }
      >
        {/* TODO(v3-data): your Pokémon icon replaces the letter once profiles store one. */}
        <Avatar>
          {/*
           * Your initial on the soft brand tint in a white band: yours, a
           * sticker like the other things you own, without getting loud.
           */}
          <AvatarFallback className="bg-select-soft text-select-ink group-hover/you:bg-select-soft-hover group-aria-expanded/you:bg-select-soft-hover font-extrabold transition-colors">
            {initial}
          </AvatarFallback>
        </Avatar>
      </DropdownMenuTrigger>

      <DropdownMenuContent
        align="end"
        sideOffset={8}
        className="w-[min(20rem,calc(100vw-2rem))]"
      >
        <div className="bg-surface-2 mb-1.5 flex items-center gap-3 rounded-md p-2.5">
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
          >
            <MenuOptionContent
              active={isSettingsCurrent}
              description="Profile, look and feel"
              leading={<AppIcon icon={appIcons.actions.settings} size="lg" />}
              title={accountLink.label}
            />
          </DropdownMenuItem>
        </DropdownMenuGroup>

        <form action={signOut}>
          <DropdownMenuItem
            variant="destructive"
            render={<button type="submit" className="w-full" />}
            nativeButton
            className="mt-1.5 font-extrabold"
          >
            <AppIcon icon={appIcons.actions.signOut} />
            Log out
          </DropdownMenuItem>
        </form>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
