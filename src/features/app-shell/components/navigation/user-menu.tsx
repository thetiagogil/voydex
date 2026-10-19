"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import type { SignedInAccount } from "@/features/app-shell/types";
import { signOut } from "@/features/app-shell/server/sign-out-action";
import { getAccountInitial } from "@/features/app-shell/utils/account-display";
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
 * You on the top bar: your initial opens Settings and Log out, nothing
 * more (your profile lives on its page). A floating layer, so it takes the
 * float shadow and no edge. Phones reach the same things from the You
 * page instead.
 */
export const UserMenu = ({ account }: UserMenuProps) => {
  const pathname = usePathname();
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
           * Your initial in your trainer colour, as on your trainer card, in
           * a white band: yours, a sticker like the other things you own.
           */}
          <AvatarFallback className="transition-[filter] group-hover/you:brightness-95 group-aria-expanded/you:brightness-95">
            {initial}
          </AvatarFallback>
        </Avatar>
      </DropdownMenuTrigger>

      <DropdownMenuContent
        align="end"
        sideOffset={8}
        className="w-[min(20rem,calc(100vw-2rem))]"
      >
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
            className="mt-1"
          >
            {/* The same row as Settings: its icon on the 36px tile. */}
            <MenuOptionContent
              leading={<AppIcon icon={appIcons.actions.signOut} size="lg" />}
              leadingClassName="bg-danger-soft text-danger-deep"
              title="Log out"
            />
          </DropdownMenuItem>
        </form>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
