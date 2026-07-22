import type { ComponentPropsWithoutRef } from "react";

import { NavigationMenuContent } from "@/shared/components/ui/navigation-menu";
import { cn } from "@/shared/utils/cn";

type NavigationMenuOptionsPanelProps = ComponentPropsWithoutRef<
  typeof NavigationMenuContent
> & {
  listClassName?: string;
};

export const NavigationMenuOptionsPanel = ({
  children,
  className,
  listClassName,
  ...props
}: NavigationMenuOptionsPanelProps) => {
  return (
    <NavigationMenuContent className={cn("w-80 p-2", className)} {...props}>
      <div className={cn("grid gap-1", listClassName)}>{children}</div>
    </NavigationMenuContent>
  );
};
