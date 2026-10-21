"use client";

import {
  menuCheckClassName,
  menuGroupLabelClassName,
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
import { CheckIcon, ChevronDownIcon, SearchIcon, XIcon } from "lucide-react";

const Combobox = ComboboxPrimitive.Root;

const ComboboxValue = ({ ...props }: ComboboxPrimitive.Value.Props) => {
  return <ComboboxPrimitive.Value data-slot="combobox-value" {...props} />;
};

const ComboboxTrigger = ({
  className,
  children,
  showChevron = true,
  ...props
}: ComboboxPrimitive.Trigger.Props & {
  /* Off for a trigger that says what it does, such as an "Add" chip. */
  showChevron?: boolean;
}) => {
  return (
    <ComboboxPrimitive.Trigger
      data-slot="combobox-trigger"
      className={cn("[&_svg:not([class*='size-'])]:size-4", className)}
      {...props}
    >
      {children}
      {showChevron ? (
        <ChevronDownIcon className="text-ink-3 pointer-events-none size-4" />
      ) : null}
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

/*
 * The search at the top of a picker's panel (an input without its own
 * trigger): a row of the panel, shaped like its options, with a search icon
 * and its focus ring drawn inside so the panel's edge never cuts it.
 */
const panelSearchClassName =
  "mb-1.5 h-11 rounded-md border-transparent bg-surface-2 px-1 has-[[data-slot=input-group-control]:focus-visible]:outline-2 has-[[data-slot=input-group-control]:focus-visible]:-outline-offset-2";

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
  const isPanelSearch = !showTrigger;

  return (
    <InputGroup
      className={cn("w-auto", isPanelSearch && panelSearchClassName, className)}
    >
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
      {children ??
        (isPanelSearch ? (
          <InputGroupAddon align="inline-start">
            <SearchIcon className="text-ink-3 size-4.5" />
          </InputGroupAddon>
        ) : null)}
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
            "group/combobox-content data-[side=bottom]:slide-in-from-top-2 data-[side=inline-end]:slide-in-from-left-2 data-[side=inline-start]:slide-in-from-right-2 data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2 data-open:animate-in data-open:fade-in-0 data-open:zoom-in-95 data-closed:animate-out data-closed:fade-out-0 data-closed:zoom-out-95 relative max-h-(--available-height) w-(--anchor-width) max-w-(--available-width) min-w-[max(calc(var(--anchor-width)+(--spacing(7))),14rem)] origin-(--transform-origin) overflow-hidden duration-100 data-[chips=true]:min-w-(--anchor-width)",
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

/*
 * `check={false}` is for a list that only adds (a picked option leaves it):
 * no option is ever ticked, so the row gives up the check's room at its end.
 */
const ComboboxItem = ({
  check = true,
  className,
  children,
  ...props
}: ComboboxPrimitive.Item.Props & { check?: boolean }) => {
  return (
    <ComboboxPrimitive.Item
      data-slot="combobox-item"
      className={cn(
        menuOptionClassName,
        menuOptionSelectedClassName,
        "[&_svg:not([class*='size-'])]:size-4",
        !check && "pr-2",
        className,
      )}
      {...props}
    >
      {children}
      {check ? (
        <ComboboxPrimitive.ItemIndicator
          render={<span className={menuCheckClassName} />}
        >
          <CheckIcon className="size-4.5" strokeWidth={3} />
        </ComboboxPrimitive.ItemIndicator>
      ) : null}
    </ComboboxPrimitive.Item>
  );
};

/*
 * Grouped items (`items` as `{ value, items }[]`): the list renders each
 * group, the group its label, then its own items through the collection.
 * A group nothing in it matches leaves the list.
 */
const ComboboxGroup = ({
  className,
  ...props
}: ComboboxPrimitive.Group.Props) => {
  return (
    <ComboboxPrimitive.Group
      data-slot="combobox-group"
      className={cn("space-y-0.5", className)}
      {...props}
    />
  );
};

const ComboboxLabel = ({
  className,
  ...props
}: ComboboxPrimitive.GroupLabel.Props) => {
  return (
    <ComboboxPrimitive.GroupLabel
      data-slot="combobox-label"
      className={cn(menuGroupLabelClassName, className)}
      {...props}
    />
  );
};

const ComboboxCollection = ComboboxPrimitive.Collection;

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
  ComboboxCollection,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxGroup,
  ComboboxInput,
  ComboboxItem,
  ComboboxLabel,
  ComboboxList,
  ComboboxTrigger,
  ComboboxValue,
};
