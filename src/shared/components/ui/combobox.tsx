"use client";

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
import {
  InputGroup,
  InputGroupAddon,
  InputGroupButton,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import { Combobox as ComboboxPrimitive } from "@base-ui/react";
import { CheckIcon, ChevronDownIcon, XIcon } from "lucide-react";

const Combobox = ComboboxPrimitive.Root;

const ComboboxValue = ({ ...props }: ComboboxPrimitive.Value.Props) => {
  return <ComboboxPrimitive.Value data-slot="combobox-value" {...props} />;
};

const ComboboxTrigger = ({
  className,
  children,
  ...props
}: ComboboxPrimitive.Trigger.Props) => {
  return (
    <ComboboxPrimitive.Trigger
      data-slot="combobox-trigger"
      className={cn("[&_svg:not([class*='size-'])]:size-4", className)}
      {...props}
    >
      {children}
      <ChevronDownIcon className="text-ink-3 pointer-events-none size-4" />
    </ComboboxPrimitive.Trigger>
  );
};

const ComboboxClear = ({
  className,
  ...props
}: ComboboxPrimitive.Clear.Props) => {
  return (
    <ComboboxPrimitive.Clear
      data-slot="combobox-clear"
      render={<InputGroupButton variant="ghost" size="icon-xs" />}
      className={cn(className)}
      {...props}
    >
      <XIcon className="pointer-events-none" />
    </ComboboxPrimitive.Clear>
  );
};

const ComboboxInput = ({
  className,
  children,
  disabled = false,
  showTrigger = true,
  showClear = false,
  ...props
}: ComboboxPrimitive.Input.Props & {
  showTrigger?: boolean;
  showClear?: boolean;
}) => {
  return (
    <InputGroup className={cn("w-auto", className)}>
      <ComboboxPrimitive.Input
        render={<InputGroupInput disabled={disabled} />}
        {...props}
      />
      <InputGroupAddon align="inline-end">
        {showTrigger && (
          <InputGroupButton
            size="icon-xs"
            variant="ghost"
            render={<ComboboxTrigger />}
            data-slot="input-group-button"
            className="group-has-data-[slot=combobox-clear]/input-group:hidden data-pressed:bg-transparent"
            disabled={disabled}
          />
        )}
        {showClear && <ComboboxClear disabled={disabled} />}
      </InputGroupAddon>
      {children}
    </InputGroup>
  );
};

const ComboboxContent = ({
  className,
  side = "bottom",
  sideOffset = 6,
  align = "start",
  alignOffset = 0,
  anchor,
  ...props
}: ComboboxPrimitive.Popup.Props &
  Pick<
    ComboboxPrimitive.Positioner.Props,
    "side" | "align" | "sideOffset" | "alignOffset" | "anchor"
  >) => {
  return (
    <ComboboxPrimitive.Portal>
      <ComboboxPrimitive.Backdrop className={menuSheetBackdropClassName} />
      <ComboboxPrimitive.Positioner
        side={side}
        sideOffset={sideOffset}
        align={align}
        alignOffset={alignOffset}
        anchor={anchor}
        className={cn("isolate z-50", menuSheetPositionerClassName)}
      >
        <ComboboxPrimitive.Popup
          data-slot="combobox-content"
          data-chips={!!anchor}
          className={cn(
            menuPanelClassName,
            "group/combobox-content data-[side=bottom]:slide-in-from-top-2 data-[side=inline-end]:slide-in-from-left-2 data-[side=inline-start]:slide-in-from-right-2 data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2 *:data-[slot=input-group]:bg-surface-2 data-open:animate-in data-open:fade-in-0 data-open:zoom-in-95 data-closed:animate-out data-closed:fade-out-0 data-closed:zoom-out-95 relative max-h-(--available-height) w-(--anchor-width) max-w-(--available-width) min-w-[max(calc(var(--anchor-width)+(--spacing(7))),14rem)] origin-(--transform-origin) overflow-hidden duration-100 data-[chips=true]:min-w-(--anchor-width) *:data-[slot=input-group]:mb-2.5 *:data-[slot=input-group]:h-11 *:data-[slot=input-group]:rounded-full *:data-[slot=input-group]:border-transparent *:data-[slot=input-group]:px-2.5",
            menuSheetPopupClassName,
            className,
          )}
          {...props}
        />
      </ComboboxPrimitive.Positioner>
    </ComboboxPrimitive.Portal>
  );
};

const ComboboxList = ({
  className,
  ...props
}: ComboboxPrimitive.List.Props) => {
  return (
    <ComboboxPrimitive.List
      data-slot="combobox-list"
      className={cn(
        "no-scrollbar max-h-[min(calc(--spacing(80)-(--spacing(13.5))),calc(var(--available-height)-(--spacing(13.5))))] scroll-py-1 space-y-0.5 overflow-y-auto overscroll-contain data-empty:p-0 max-md:max-h-[calc(75dvh-6rem)]",
        className,
      )}
      {...props}
    />
  );
};

const ComboboxItem = ({
  className,
  children,
  ...props
}: ComboboxPrimitive.Item.Props) => {
  return (
    <ComboboxPrimitive.Item
      data-slot="combobox-item"
      className={cn(
        menuOptionClassName,
        menuOptionSelectedClassName,
        "[&_svg:not([class*='size-'])]:size-4",
        className,
      )}
      {...props}
    >
      {children}
      <ComboboxPrimitive.ItemIndicator
        render={<span className={menuCheckClassName} />}
      >
        <CheckIcon className="size-4.5" strokeWidth={3} />
      </ComboboxPrimitive.ItemIndicator>
    </ComboboxPrimitive.Item>
  );
};

const ComboboxEmpty = ({
  className,
  ...props
}: ComboboxPrimitive.Empty.Props) => {
  return (
    <ComboboxPrimitive.Empty
      data-slot="combobox-empty"
      className={cn(
        "text-14 text-ink-2 mt-2 hidden w-full justify-center py-2 text-center font-semibold group-data-empty/combobox-content:flex",
        className,
      )}
      {...props}
    />
  );
};

export {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
  ComboboxTrigger,
  ComboboxValue,
};
