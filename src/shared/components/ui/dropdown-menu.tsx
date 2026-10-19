"use client";

import * as React from "react";
import { Menu as MenuPrimitive } from "@base-ui/react/menu";
import {
  menuCheckClassName,
  menuGroupLabelClassName,
  menuOptionClassName,
  menuPanelClassName,
  menuSheetBackdropClassName,
  menuSheetPopupClassName,
  menuSheetPositionerClassName,
} from "@/shared/components/ui/menu-surface";
import { cn } from "@/shared/utils/cn";
import { CheckIcon } from "lucide-react";

const DropdownMenu = ({ ...props }: MenuPrimitive.Root.Props) => {
  return <MenuPrimitive.Root data-slot="dropdown-menu" {...props} />;
};

const DropdownMenuTrigger = ({ ...props }: MenuPrimitive.Trigger.Props) => {
  return <MenuPrimitive.Trigger data-slot="dropdown-menu-trigger" {...props} />;
};

const DropdownMenuContent = ({
  align = "start",
  alignOffset = 0,
  side = "bottom",
  sideOffset = 4,
  className,
  ...props
}: MenuPrimitive.Popup.Props &
  Pick<
    MenuPrimitive.Positioner.Props,
    "align" | "alignOffset" | "side" | "sideOffset"
  >) => {
  return (
    <MenuPrimitive.Portal>
      <MenuPrimitive.Backdrop className={menuSheetBackdropClassName} />
      <MenuPrimitive.Positioner
        className={cn(
          "isolate z-50 outline-none",
          menuSheetPositionerClassName,
        )}
        align={align}
        alignOffset={alignOffset}
        side={side}
        sideOffset={sideOffset}
      >
        <MenuPrimitive.Popup
          data-slot="dropdown-menu-content"
          className={cn(
            menuPanelClassName,
            "data-[side=bottom]:slide-in-from-top-2 data-[side=inline-end]:slide-in-from-left-2 data-[side=inline-start]:slide-in-from-right-2 data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2 data-open:animate-in data-open:fade-in-0 data-open:zoom-in-95 data-closed:animate-out data-closed:fade-out-0 data-closed:zoom-out-95 z-50 max-h-(--available-height) w-max max-w-[min(24rem,calc(100vw-2rem))] min-w-[max(var(--anchor-width),14rem)] origin-(--transform-origin) overflow-x-hidden overflow-y-auto duration-100 outline-none data-closed:overflow-hidden",
            menuSheetPopupClassName,
            className,
          )}
          {...props}
        />
      </MenuPrimitive.Positioner>
    </MenuPrimitive.Portal>
  );
};

const DropdownMenuGroup = ({ ...props }: MenuPrimitive.Group.Props) => {
  return <MenuPrimitive.Group data-slot="dropdown-menu-group" {...props} />;
};

const DropdownMenuLabel = ({
  className,
  inset,
  ...props
}: MenuPrimitive.GroupLabel.Props & {
  inset?: boolean;
}) => {
  return (
    <MenuPrimitive.GroupLabel
      data-slot="dropdown-menu-label"
      data-inset={inset}
      className={cn(menuGroupLabelClassName, "data-inset:pl-8", className)}
      {...props}
    />
  );
};

const DropdownMenuItem = ({
  className,
  inset,
  variant = "default",
  ...props
}: MenuPrimitive.Item.Props & {
  inset?: boolean;
  variant?: "default" | "destructive";
}) => {
  return (
    <MenuPrimitive.Item
      data-slot="dropdown-menu-item"
      data-inset={inset}
      data-variant={variant}
      className={cn(
        menuOptionClassName,
        "group/dropdown-menu-item aria-[current=page]:bg-select-soft aria-[current=page]:text-select-ink data-[variant=destructive]:text-danger-deep data-[variant=destructive]:data-highlighted:bg-danger-soft data-[variant=destructive]:data-highlighted:text-danger-deep data-[variant=destructive]:*:[svg]:text-danger pr-3 data-inset:pl-8 [&_svg:not([class*='size-'])]:size-4.5",
        className,
      )}
      {...props}
    />
  );
};

const DropdownMenuRadioGroup = ({
  ...props
}: MenuPrimitive.RadioGroup.Props) => {
  return (
    <MenuPrimitive.RadioGroup
      data-slot="dropdown-menu-radio-group"
      {...props}
    />
  );
};

const DropdownMenuRadioItem = ({
  className,
  children,
  inset,
  ...props
}: MenuPrimitive.RadioItem.Props & {
  inset?: boolean;
}) => {
  return (
    <MenuPrimitive.RadioItem
      data-slot="dropdown-menu-radio-item"
      data-inset={inset}
      className={cn(
        menuOptionClassName,
        "data-checked:bg-select-soft data-checked:text-select-ink data-checked:data-highlighted:bg-select-soft data-inset:pl-7",
        className,
      )}
      {...props}
    >
      <span
        className={menuCheckClassName}
        data-slot="dropdown-menu-radio-item-indicator"
      >
        <MenuPrimitive.RadioItemIndicator>
          <CheckIcon className="size-4.5" strokeWidth={3} />
        </MenuPrimitive.RadioItemIndicator>
      </span>
      {children}
    </MenuPrimitive.RadioItem>
  );
};

const DropdownMenuSeparator = ({
  className,
  ...props
}: MenuPrimitive.Separator.Props) => {
  return (
    <MenuPrimitive.Separator
      data-slot="dropdown-menu-separator"
      className={cn("bg-line mx-2 my-1 h-px", className)}
      {...props}
    />
  );
};

export {
  DropdownMenu,
  DropdownMenuTrigger,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuLabel,
  DropdownMenuItem,
  DropdownMenuRadioGroup,
  DropdownMenuRadioItem,
  DropdownMenuSeparator,
};
