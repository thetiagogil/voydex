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
 * A Play's tabs: white on the Play's band, and the active tab in the soft
 * selected tint with no white band, like the top bar's current section: a tab
 * says where you are, not something you picked. The weight never changes, so
 * moving tab doesn't shift the row.
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
      ? "bg-select-soft text-select-ink hover:bg-select-soft hover:text-select-ink focus:bg-select-soft data-popup-open:bg-select-soft data-popup-open:hover:bg-select-soft"
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
