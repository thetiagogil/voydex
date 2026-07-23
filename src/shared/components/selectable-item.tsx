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
        "border-app-surface-border/70 hover:bg-accent/35 has-focus-visible:border-ring has-focus-visible:ring-ring/40 grid grid-cols-[minmax(0,1fr)_auto] gap-0 overflow-hidden p-0 has-focus-visible:ring-2",
        selected &&
          "border-primary/50 bg-primary/[0.035] ring-primary/20 ring-1",
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
