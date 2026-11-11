"use client";

import { Link } from "@/shared/components/link";
import { usePathname } from "next/navigation";

import { useAppAccount } from "@/features/app-shell/components/app-account-provider";
import { useSignOut } from "@/features/app-shell/client/sign-out";
import { AccountAvatar } from "@/features/app-shell/components/navigation/account-avatar";
import {
  accountLink,
  isCurrentLink,
  libraryLink,
} from "@/features/app-shell/utils/app-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { MenuOptionContent } from "@/shared/components/menu-option-content";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";

/*
 * You on the top bar: your icon opens Library, Settings and, signed in, Log out,
 * nothing more (your profile lives on its page). A floating layer, so it takes the
 * float shadow and no edge. Phones reach the same things from the You
 * page instead.
 */
export const UserMenu = () => {
  const account = useAppAccount();
  const signOut = useSignOut();
  const pathname = usePathname();
  const isSettingsCurrent = isCurrentLink(pathname, accountLink);
  const isLibraryCurrent = isCurrentLink(pathname, libraryLink);

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
        {/*
         * Your Pokémon (or your initial in your trainer colour) in a white
         * band: yours, a sticker like the other things you own.
         */}
        <AccountAvatar
          account={account}
          fallbackClassName="transition-[filter] group-hover/you:brightness-95 group-aria-expanded/you:brightness-95"
        />
      </DropdownMenuTrigger>

      <DropdownMenuContent
        align="end"
        sideOffset={8}
        className="w-[min(20rem,calc(100vw-2rem))]"
      >
        <DropdownMenuGroup>
          <DropdownMenuItem
            render={<Link href={libraryLink.href} />}
            aria-current={isLibraryCurrent ? "page" : undefined}
          >
            <MenuOptionContent
              active={isLibraryCurrent}
              description="Your rules and tags"
              leading={
                <AppIcon icon={appIcons.views.mainline.library} size="lg" />
              }
              title={libraryLink.label}
            />
          </DropdownMenuItem>
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

        {/* Signing in is only for backups: Log out shows once you have. */}
        {account.email ? (
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
        ) : null}
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
