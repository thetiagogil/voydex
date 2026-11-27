import type { ComponentPropsWithoutRef } from "react";

import {
  NavigationMenuLink,
  NavigationMenuTrigger,
} from "@/shared/components/ui/navigation-menu";
import { getTabPillClassName } from "@/shared/components/tab-pill";
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
 * A Play's tabs, drawn as every page's tabs (`getTabPillClassName`): white
 * with a thin outline on the Play's band, the active one filled with the
 * blue. The active tab keeps its fill under the pointer and while its menu
 * is open, where the menu trigger would otherwise take its hover tint.
 */
export const getNavigationMenuControlClassName = ({
  active = false,
  className,
}: {
  active?: boolean;
  className?: string;
}) => {
  return cn(
    getTabPillClassName(active),
    "px-0",
    active &&
      "hover:bg-calm focus:bg-calm data-popup-open:bg-calm data-popup-open:hover:bg-calm hover:text-white",
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
