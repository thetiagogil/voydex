import type { ComponentProps } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

type ClearFiltersButtonProps = Omit<
  ComponentProps<typeof Button>,
  "children" | "type"
>;

/*
 * Clears a list's search and filters: a quiet button in an empty list, a
 * ghost one in the line under the toolbar.
 */
export const ClearFiltersButton = ({
  size = "sm",
  variant = "secondary",
  ...props
}: ClearFiltersButtonProps) => {
  return (
    <Button type="button" size={size} variant={variant} {...props}>
      <AppIcon icon={appIcons.actions.clear} inline="start" aria-hidden />
      Clear filters
    </Button>
  );
};
