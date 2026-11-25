import type { ComponentProps } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

type ResetListButtonProps = Omit<
  ComponentProps<typeof Button>,
  "children" | "size" | "type" | "variant"
>;

/*
 * Puts a list back the way it opens: no search, no filters, the default
 * order and grouping. The same quiet button in an empty list and in the
 * line under the toolbar.
 */
export const ResetListButton = (props: ResetListButtonProps) => {
  return (
    <Button type="button" variant="secondary" {...props}>
      <AppIcon icon={appIcons.actions.clear} inline="start" aria-hidden />
      Reset
    </Button>
  );
};
