import type { ComponentProps } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

type ClearFiltersButtonProps = Omit<
  ComponentProps<typeof Button>,
  "children" | "type"
>;

export const ClearFiltersButton = ({
  size = "sm",
  variant = "ghost",
  ...props
}: ClearFiltersButtonProps) => {
  return (
    <Button type="button" size={size} variant={variant} {...props}>
      <AppIcon icon={appIcons.actions.clear} inline="start" aria-hidden />
      Clear filters
    </Button>
  );
};
