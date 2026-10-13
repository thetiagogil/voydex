import type { ReactNode } from "react";

import { Item, ItemActions } from "@/shared/components/ui/item";
import { cn } from "@/shared/utils/cn";

type SelectableItemProps = {
  actions?: ReactNode;
  actionsClassName?: string;
  ariaLabel: string;
  buttonClassName?: string;
  children: ReactNode;
  className?: string;
  onSelect: () => void;
  selected: boolean;
};

/*
 * A row you pick to read beside the list. The picked row keeps its surface and
 * takes an accent border in the context colour (v3 `.is-sel`), never a fill.
 */
export const SelectableItem = ({
  actions,
  actionsClassName,
  ariaLabel,
  buttonClassName,
  children,
  className,
  onSelect,
  selected,
}: SelectableItemProps) => {
  return (
    <Item
      role="listitem"
      variant="outline"
      size="sm"
      data-selected={selected}
      className={cn(
        "bg-surface has-focus-visible:outline-focus hover:bg-surface-2 grid grid-cols-[minmax(0,1fr)_auto] gap-0 overflow-hidden rounded-lg p-0 has-focus-visible:outline-3 has-focus-visible:outline-offset-2 has-focus-visible:outline-solid",
        selected &&
          "border-game hover:bg-surface shadow-[inset_0_0_0_1px_var(--game)]",
        className,
      )}
    >
      <button
        type="button"
        aria-label={ariaLabel}
        aria-pressed={selected}
        onClick={onSelect}
        className={cn("min-w-0 text-left outline-none", buttonClassName)}
      >
        {children}
      </button>

      {actions ? (
        <ItemActions className={cn("self-stretch", actionsClassName)}>
          {actions}
        </ItemActions>
      ) : null}
    </Item>
  );
};
