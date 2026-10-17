import type { ComponentProps } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type CornerRemoveButtonProps = Omit<
  ComponentProps<"button">,
  "aria-label" | "children" | "type"
> & {
  /* What it removes, such as "Remove Rillaboom" or "Delete Galar sweep". */
  label: string;
};

/*
 * The small × that sits on a card's top-right corner to remove it (a team
 * slot, a Plan), drawn as a corner `bubble`. It shows when the card is hovered or the × is focused;
 * touch screens always show it. The card carries `group/removable`.
 */
export const CornerRemoveButton = ({
  className,
  label,
  ...props
}: CornerRemoveButtonProps) => (
  <button
    type="button"
    aria-label={label}
    className={cn(
      "text-ink-2 hover:text-ink focus-visible:outline-focus bg-surface bubble absolute -top-2 -right-2 z-10 grid size-6 place-items-center rounded-full outline-none focus-visible:opacity-100 focus-visible:outline-3 focus-visible:outline-solid pointer-fine:opacity-0 pointer-fine:group-hover/removable:opacity-100",
      className,
    )}
    {...props}
  >
    <AppIcon icon={appIcons.actions.close} size="sm" />
  </button>
);
