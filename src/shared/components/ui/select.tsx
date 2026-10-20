"use client";

import { fieldSurfaceClassName } from "@/shared/components/ui/field-surface";
import {
  menuCheckClassName,
  menuOptionClassName,
  menuOptionSelectedClassName,
  menuPanelClassName,
  menuSheetBackdropClassName,
  menuSheetPopupClassName,
  menuSheetPositionerClassName,
} from "@/shared/components/ui/menu-surface";
import { cn } from "@/shared/utils/cn";
import { Select as SelectPrimitive } from "@base-ui/react/select";
import { cva, type VariantProps } from "class-variance-authority";
import { CheckIcon, ChevronDownIcon, ChevronUpIcon } from "lucide-react";
import * as React from "react";

const Select = SelectPrimitive.Root;

const SelectGroup = ({ className, ...props }: SelectPrimitive.Group.Props) => {
  return (
    <SelectPrimitive.Group
      data-slot="select-group"
      className={cn("grid scroll-my-1 gap-0.5", className)}
      {...props}
    />
  );
};

const SelectValue = ({ className, ...props }: SelectPrimitive.Value.Props) => {
  return (
    <SelectPrimitive.Value
      data-slot="select-value"
      className={cn("flex flex-1 text-left", className)}
      {...props}
    />
  );
};

/*
 * `default` is a form field (the field look, 46px). `ghost` is v3's toolbar
 * select: the label in ink-2 with its chevron, no fill and no line. `card`
 * is a picker that is the page's subject, such as the Team Planner's game:
 * a white card on a soft shadow holding the caller's own content.
 */
const selectTriggerVariants = cva(
  "flex w-fit items-center justify-between gap-1.5 text-14 font-bold whitespace-nowrap select-none focus-visible:outline-offset-1 disabled:cursor-not-allowed disabled:opacity-50 data-[size=default]:h-12 data-[size=sm]:h-9 *:data-[slot=select-value]:line-clamp-1 *:data-[slot=select-value]:flex *:data-[slot=select-value]:items-center *:data-[slot=select-value]:gap-1.5 [&_svg]:pointer-events-none [&_svg]:shrink-0 [&_svg:not([class*='size-'])]:size-4 focus-ring",
  {
    variants: {
      variant: {
        default: cn(
          fieldSurfaceClassName,
          "rounded-full pr-3 pl-4 hover:bg-hover aria-expanded:bg-hover data-placeholder:text-ink-3 data-[size=sm]:pr-2.5 data-[size=sm]:pl-3",
        ),
        ghost:
          "rounded-full border-[1.5px] border-transparent bg-transparent px-3 text-ink-2 transition-colors hover:bg-hover hover:text-ink aria-expanded:bg-hover aria-expanded:text-ink data-placeholder:text-ink-2 data-changed:bg-select-soft data-changed:text-select-ink data-changed:hover:bg-select-soft-hover data-changed:aria-expanded:bg-select-soft-hover data-changed:[&_svg]:text-select-ink",
        card: "h-auto! min-h-16 gap-3 rounded-xl bg-surface px-3 py-2 text-left text-ink shadow-card transition-colors hover:bg-hover aria-expanded:bg-hover",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  },
);

const SelectTrigger = ({
  className,
  size = "default",
  variant = "default",
  children,
  ...props
}: SelectPrimitive.Trigger.Props & {
  size?: "sm" | "default";
} & VariantProps<typeof selectTriggerVariants>) => {
  return (
    <SelectPrimitive.Trigger
      data-slot="select-trigger"
      data-size={size}
      data-variant={variant}
      className={cn(selectTriggerVariants({ variant }), className)}
      {...props}
    >
      {children}
      <SelectPrimitive.Icon
        render={
          <ChevronDownIcon className="text-ink-3 pointer-events-none size-4" />
        }
      />
    </SelectPrimitive.Trigger>
  );
};

const SelectContent = ({
  className,
  children,
  side = "bottom",
  sideOffset = 4,
  align = "center",
  alignOffset = 0,
  alignItemWithTrigger = false,
  ...props
}: SelectPrimitive.Popup.Props &
  Pick<
    SelectPrimitive.Positioner.Props,
    "align" | "alignOffset" | "side" | "sideOffset" | "alignItemWithTrigger"
  >) => {
  return (
    <SelectPrimitive.Portal>
      <SelectPrimitive.Backdrop className={menuSheetBackdropClassName} />
      <SelectPrimitive.Positioner
        side={side}
        sideOffset={sideOffset}
        align={align}
        alignOffset={alignOffset}
        alignItemWithTrigger={alignItemWithTrigger}
        className={cn("isolate z-50", menuSheetPositionerClassName)}
      >
        <SelectPrimitive.Popup
          data-slot="select-content"
          data-align-trigger={alignItemWithTrigger}
          className={cn(
            menuPanelClassName,
            "data-[side=bottom]:slide-in-from-top-2 data-[side=inline-end]:slide-in-from-left-2 data-[side=inline-start]:slide-in-from-right-2 data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2 data-open:animate-in data-open:fade-in-0 data-open:zoom-in-95 data-closed:animate-out data-closed:fade-out-0 data-closed:zoom-out-95 relative isolate z-50 max-h-(--available-height) w-max max-w-[min(24rem,calc(100vw-2rem))] min-w-[max(var(--anchor-width),14rem)] origin-(--transform-origin) overflow-x-hidden overflow-y-auto duration-100 data-[align-trigger=true]:animate-none",
            menuSheetPopupClassName,
            className,
          )}
          {...props}
        >
          <SelectScrollUpButton />
          <SelectPrimitive.List>{children}</SelectPrimitive.List>
          <SelectScrollDownButton />
        </SelectPrimitive.Popup>
      </SelectPrimitive.Positioner>
    </SelectPrimitive.Portal>
  );
};

const SelectItem = ({
  className,
  children,
  ...props
}: SelectPrimitive.Item.Props) => {
  return (
    <SelectPrimitive.Item
      data-slot="select-item"
      className={cn(
        menuOptionClassName,
        menuOptionSelectedClassName,
        className,
      )}
      {...props}
    >
      <SelectPrimitive.ItemText className="flex min-w-0 flex-1 items-center gap-3">
        {children}
      </SelectPrimitive.ItemText>
      <SelectPrimitive.ItemIndicator
        render={<span className={menuCheckClassName} />}
      >
        <CheckIcon className="size-4.5" strokeWidth={3} />
      </SelectPrimitive.ItemIndicator>
    </SelectPrimitive.Item>
  );
};

const SelectScrollUpButton = ({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.ScrollUpArrow>) => {
  return (
    <SelectPrimitive.ScrollUpArrow
      data-slot="select-scroll-up-button"
      className={cn(
        "bg-surface top-0 z-10 flex w-full cursor-default items-center justify-center py-1 [&_svg:not([class*='size-'])]:size-4",
        className,
      )}
      {...props}
    >
      <ChevronUpIcon />
    </SelectPrimitive.ScrollUpArrow>
  );
};

const SelectScrollDownButton = ({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.ScrollDownArrow>) => {
  return (
    <SelectPrimitive.ScrollDownArrow
      data-slot="select-scroll-down-button"
      className={cn(
        "bg-surface bottom-0 z-10 flex w-full cursor-default items-center justify-center py-1 [&_svg:not([class*='size-'])]:size-4",
        className,
      )}
      {...props}
    >
      <ChevronDownIcon />
    </SelectPrimitive.ScrollDownArrow>
  );
};

export {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectScrollDownButton,
  SelectScrollUpButton,
  SelectTrigger,
  selectTriggerVariants,
  SelectValue,
};
