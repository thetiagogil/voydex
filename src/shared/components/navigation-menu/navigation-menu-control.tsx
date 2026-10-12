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
  variant?: NavigationMenuControlVariant;
};

type NavigationMenuControlLinkProps = Omit<
  ComponentPropsWithoutRef<typeof NavigationMenuLink>,
  "className"
> & {
  active?: boolean;
  className?: string;
  variant?: NavigationMenuControlVariant;
};

type NavigationMenuControlDisabledProps = ComponentPropsWithoutRef<"span"> & {
  accessibilityLabel: string;
  variant?: NavigationMenuControlVariant;
};

/*
 * Pills: cream with no edge, and one selected style everywhere (the soft tint
 * of the context colour with deep ink). A Play's tabs use `tab`: the active
 * tab is the one place a control is filled in solid game colour.
 */
export type NavigationMenuControlVariant = "pill" | "tab";

export const getNavigationMenuControlClassName = ({
  active = false,
  className,
  variant = "pill",
}: {
  active?: boolean;
  className?: string;
  variant?: NavigationMenuControlVariant;
}) => {
  return cn(
    "h-10 rounded-full px-0 text-14 font-bold text-ink-2 hover:text-ink",
    variant === "pill" &&
      (active
        ? "bg-select-soft font-extrabold text-select-ink hover:bg-select-soft hover:text-select-ink"
        : "bg-surface hover:bg-hover"),
    variant === "tab" &&
      (active
        ? "bg-game font-extrabold text-on-game hover:bg-game hover:text-on-game focus:bg-game data-popup-open:bg-game data-popup-open:hover:bg-game"
        : "bg-white/65 hover:bg-white"),
    className,
  );
};

export const NavigationMenuControlTrigger = ({
  active = false,
  className,
  variant,
  ...props
}: NavigationMenuControlTriggerProps) => {
  return (
    <NavigationMenuTrigger
      {...props}
      className={getNavigationMenuControlClassName({
        active,
        className,
        variant,
      })}
    />
  );
};

export const NavigationMenuControlLink = ({
  active = false,
  "aria-current": ariaCurrent,
  className,
  variant,
  ...props
}: NavigationMenuControlLinkProps) => {
  return (
    <NavigationMenuLink
      {...props}
      aria-current={ariaCurrent ?? (active ? "page" : undefined)}
      className={getNavigationMenuControlClassName({
        active,
        className,
        variant,
      })}
    />
  );
};

export const NavigationMenuControlDisabled = ({
  accessibilityLabel,
  children,
  className,
  variant,
  ...props
}: NavigationMenuControlDisabledProps) => {
  return (
    <span
      {...props}
      aria-disabled="true"
      aria-label={accessibilityLabel}
      title={accessibilityLabel}
      className={cn(
        getNavigationMenuControlClassName({ className, variant }),
        "inline-flex w-max cursor-not-allowed items-center justify-center opacity-55",
      )}
    >
      {children}
    </span>
  );
};
