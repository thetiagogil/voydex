"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import type { SignedInAccount } from "@/features/app-shell/types";
import { signOut } from "@/features/app-shell/server/sign-out-action";
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
import { cn } from "@/shared/utils/cn";
import { getEmailInitials } from "@/shared/utils/email-initials";

type UserMenuProps = {
  account: SignedInAccount;
  /* `bar`: your icon at the end of the top bar. `tab`: the You tab of the bottom bar. */
  placement?: "bar" | "tab";
};

/*
 * You (v3 `.me-menu`): who is signed in and since when, Settings, and Log out
 * at the foot.
 * A floating layer, so it takes the float shadow and no edge.
 */
export const UserMenu = ({ account, placement = "bar" }: UserMenuProps) => {
  const pathname = usePathname();
  const name = account.email ?? "Account";
  const initials = getEmailInitials(name);
  const isSettingsCurrent = isCurrentLink(pathname, accountLink);

  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          placement === "tab" ? (
            <button
              type="button"
              aria-current={isSettingsCurrent ? "page" : undefined}
              className={cn(
                "text-12 text-ink-2 flex flex-col items-center gap-0.5 rounded-md px-0.5 pt-1.5 pb-1 font-bold",
                isSettingsCurrent && "text-ink font-extrabold",
              )}
            />
          ) : (
            <button
              type="button"
              aria-label="Your account"
              className="hover:bg-surface-2 aria-expanded:bg-surface-2 grid size-11 place-items-center rounded-full transition-colors"
            />
          )
        }
      >
        {placement === "tab" ? (
          <>
            <span
              className={cn(
                "grid h-8 w-12 place-items-center rounded-full transition-colors",
                isSettingsCurrent && "bg-action-soft",
              )}
            >
              <Avatar size="sm" aria-hidden>
                <AvatarFallback>{initials}</AvatarFallback>
              </Avatar>
            </span>
            You
          </>
        ) : (
          <Avatar>
            <AvatarFallback>{initials}</AvatarFallback>
          </Avatar>
        )}
      </DropdownMenuTrigger>

      <DropdownMenuContent
        align="end"
        side={placement === "tab" ? "top" : "bottom"}
        sideOffset={8}
        className="w-[min(20rem,calc(100vw-2rem))] p-2"
      >
        <div className="border-line mb-1 flex items-center gap-3 border-b px-2.5 pt-2 pb-3">
          <Avatar size="lg">
            <AvatarFallback>{initials}</AvatarFallback>
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
            className="items-start gap-3 p-2.5"
          >
            <NavigationMenuOptionContent
              active={isSettingsCurrent}
              description="Your account"
              leading={<AppIcon icon={appIcons.actions.settings} size="lg" />}
              leadingClassName="text-action-lip"
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
