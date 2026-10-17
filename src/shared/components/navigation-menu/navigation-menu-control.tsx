import type { ComponentPropsWithoutRef } from "react";

import {
  NavigationMenuLink,
  NavigationMenuTrigger,
} from "@/shared/components/ui/navigation-menu";
import { cn } from "@/shared/utils/cn";

type NavigationMenuControlTriggerProps = Omit<
  ComponentPropsWithoutRef<typeof NavigationMenuTrigger>,
  "className"
> & {
  active?: boolean;
  className?: string;
};

type NavigationMenuControlLinkProps = Omit<
  ComponentPropsWithoutRef<typeof NavigationMenuLink>,
  "className"
> & {
  active?: boolean;
  className?: string;
};

/*
 * A Play's tabs: white on the Play's band, and the active tab, a small
 * sticker, is the one place a control is filled in solid game colour. The
 * weight never changes, so moving tab doesn't shift the row.
 */
export const getNavigationMenuControlClassName = ({
  active = false,
  className,
}: {
  active?: boolean;
  className?: string;
}) => {
  return cn(
    "h-10 rounded-full px-0 text-14 font-extrabold text-ink-2 hover:text-ink",
    active
      ? "bg-game-strong bubble text-white hover:bg-game-strong hover:text-white focus:bg-game-strong data-popup-open:bg-game-strong data-popup-open:hover:bg-game-strong"
      : "bg-white/65 hover:bg-white",
    className,
  );
};

export const NavigationMenuControlTrigger = ({
  active = false,
  className,
  ...props
}: NavigationMenuControlTriggerProps) => {
  return (
    <NavigationMenuTrigger
      {...props}
      className={getNavigationMenuControlClassName({
        active,
        className,
      })}
    />
  );
};

export const NavigationMenuControlLink = ({
  active = false,
  "aria-current": ariaCurrent,
  className,
  ...props
}: NavigationMenuControlLinkProps) => {
  return (
    <NavigationMenuLink
      {...props}
      aria-current={ariaCurrent ?? (active ? "page" : undefined)}
      className={getNavigationMenuControlClassName({
        active,
        className,
      })}
    />
  );
};
