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

type NavigationMenuControlDisabledProps = ComponentPropsWithoutRef<"span"> & {
  accessibilityLabel: string;
};

export const getNavigationMenuControlClassName = ({
  active = false,
  className,
}: {
  active?: boolean;
  className?: string;
}) => {
  return cn(
    "border-app-surface-border bg-card h-9 border px-0",
    active && "border-primary bg-primary/10 text-primary",
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
      className={getNavigationMenuControlClassName({ active, className })}
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
      className={getNavigationMenuControlClassName({ active, className })}
    />
  );
};

export const NavigationMenuControlDisabled = ({
  accessibilityLabel,
  children,
  className,
  ...props
}: NavigationMenuControlDisabledProps) => {
  return (
    <span
      {...props}
      aria-disabled="true"
      aria-label={accessibilityLabel}
      title={accessibilityLabel}
      className={cn(
        getNavigationMenuControlClassName({ className }),
        "text-muted-foreground inline-flex w-max cursor-not-allowed items-center justify-center rounded-lg text-sm font-medium opacity-50",
      )}
    >
      {children}
    </span>
  );
};
