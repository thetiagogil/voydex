import type { ComponentProps } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

type ResetListButtonProps = Omit<
  ComponentProps<typeof Button>,
  "children" | "type"
>;

/*
 * Puts a list back the way it opens: no search, no filters, the default
 * order and grouping. A quiet button in an empty list, a ghost one in the
 * line under the toolbar.
 */
export const ResetListButton = ({
  size = "sm",
  variant = "secondary",
  ...props
}: ResetListButtonProps) => {
  return (
    <Button type="button" size={size} variant={variant} {...props}>
      <AppIcon icon={appIcons.actions.clear} inline="start" aria-hidden />
      Reset
    </Button>
  );
};
