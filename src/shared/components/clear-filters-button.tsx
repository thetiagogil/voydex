import type { ComponentProps } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

type ClearFiltersButtonProps = Omit<
  ComponentProps<typeof Button>,
  "children" | "type"
> & {
  /*
   * Hides the words (still read out) where room is short, as in a toolbar
   * on tablets, leaving the × alone.
   */
  labelClassName?: string;
};

export const ClearFiltersButton = ({
  labelClassName,
  size = "sm",
  variant = "ghost",
  ...props
}: ClearFiltersButtonProps) => {
  return (
    <Button type="button" size={size} variant={variant} {...props}>
      <AppIcon icon={appIcons.actions.clear} inline="start" aria-hidden />
      <span className={labelClassName}>Clear filters</span>
    </Button>
  );
};
