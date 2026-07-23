import type { ComponentPropsWithoutRef, ReactNode } from "react";

import {
  NavigationMenu,
  NavigationMenuList,
} from "@/shared/components/ui/navigation-menu";
import { cn } from "@/shared/utils/cn";

type NavigationMenuBarProps = Omit<
  ComponentPropsWithoutRef<typeof NavigationMenu>,
  "children" | "className"
> & {
  children: ReactNode;
  className?: string;
  listClassName?: string;
};

export const NavigationMenuBar = ({
  children,
  className,
  listClassName,
  ...props
}: NavigationMenuBarProps) => {
  return (
    <NavigationMenu
      {...props}
      className={cn("max-w-full justify-start", className)}
    >
      <NavigationMenuList className={cn("justify-start gap-1", listClassName)}>
        {children}
      </NavigationMenuList>
    </NavigationMenu>
  );
};
