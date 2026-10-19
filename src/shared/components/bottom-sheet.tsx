"use client";

import type {
  ComponentProps,
  ReactElement,
  ReactNode,
  UIEventHandler,
} from "react";

import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";
import { cn } from "@/shared/utils/cn";

type SheetContentProps = ComponentProps<typeof SheetContent>;

type BottomSheetProps = {
  /* Controls beside the close button, such as a "More" menu. */
  actions?: ReactNode;
  bodyClassName?: string;
  children: ReactNode;
  className?: string;
  defaultOpen?: boolean;
  /* One line under the title; pass a string to keep it for screen readers only with `descriptionHidden`. */
  description?: ReactNode;
  descriptionHidden?: boolean;
  /* Where focus returns on close, when it is not the trigger. */
  finalFocus?: SheetContentProps["finalFocus"];
  /* Pinned to the bottom above the safe area; its children share the width. */
  footer?: ReactNode;
  /* Pinned above the scrolling body, such as a title and its search. */
  header?: ReactNode;
  /* Where focus lands on open, such as the title (give it `tabIndex={-1}`). */
  initialFocus?: SheetContentProps["initialFocus"];
  /*
   * Names the sheet when the body renders its own `SheetTitle`, such as a
   * Pokémon's profile head. Ignored when `title` is given.
   */
  label?: string;
  /* The scrolling body's scroll, such as loading more as it nears the end. */
  onBodyScroll?: UIEventHandler<HTMLDivElement>;
  onOpenChange?: (open: boolean) => void;
  /*
   * After the open or close animation ends, such as scrolling the page to
   * what was picked once the sheet has let go of it.
   */
  onOpenChangeComplete?: (open: boolean) => void;
  open?: boolean;
  /* `wide` holds a table, such as Team check's matrix, on tablets. */
  size?: "default" | "wide";
  /* The visible Fredoka 24 heading at the top of the body. */
  title?: ReactNode;
  /* The element that opens the sheet, through `render`. */
  trigger?: ReactElement;
};

/*
 * v3's bottom sheet, for details and filters on phones and tablets: a grab
 * handle, a rounded top, at most 88% of the screen tall and 560px wide, a
 * scrolling body and an optional footer pinned above the safe area. Built on
 * the `Sheet` primitive, so focus, Escape and the scrim come with it.
 */
export const BottomSheet = ({
  actions,
  bodyClassName,
  children,
  className,
  defaultOpen,
  description,
  descriptionHidden = false,
  finalFocus,
  footer,
  header,
  initialFocus,
  label,
  onBodyScroll,
  onOpenChange,
  onOpenChangeComplete,
  open,
  size = "default",
  title,
  trigger,
}: BottomSheetProps) => {
  return (
    <Sheet
      open={open}
      defaultOpen={defaultOpen}
      onOpenChange={onOpenChange}
      onOpenChangeComplete={onOpenChangeComplete}
    >
      {trigger ? <SheetTrigger render={trigger} /> : null}
      <SheetContent
        side="bottom"
        aria-label={title ? undefined : label}
        initialFocus={initialFocus}
        finalFocus={finalFocus}
        className={cn(
          "mx-auto max-h-[88dvh] w-full gap-0 p-0 data-[side=bottom]:rounded-t-xl",
          size === "wide" ? "max-w-215" : "max-w-140",
          className,
        )}
      >
        <span
          aria-hidden
          data-slot="bottom-sheet-grab"
          className="bg-line mx-auto mt-2.5 mb-0.5 h-1.25 w-11 shrink-0 rounded-full"
        />
        {actions ? (
          <div className="absolute top-4 right-15 z-10 flex h-9 items-center gap-2">
            {actions}
          </div>
        ) : null}
        {header ? (
          <div
            data-slot="bottom-sheet-header"
            className="shrink-0 px-5 pt-2 pb-3"
          >
            {header}
          </div>
        ) : null}
        <div
          data-slot="bottom-sheet-body"
          onScroll={onBodyScroll}
          className={cn(
            "min-h-0 flex-1 overflow-y-auto px-5 pt-2 pb-5",
            bodyClassName,
          )}
        >
          {title ? (
            <SheetTitle className="text-24 mt-2 mb-2 pr-12">{title}</SheetTitle>
          ) : null}
          {description ? (
            <SheetDescription
              className={cn("mb-3", descriptionHidden && "sr-only")}
            >
              {description}
            </SheetDescription>
          ) : null}
          {children}
        </div>
        {footer ? (
          <div
            data-slot="bottom-sheet-footer"
            className="border-line bg-surface flex shrink-0 gap-2 border-t px-5 pt-3 pb-[calc(0.75rem+env(safe-area-inset-bottom,0px))] *:flex-1"
          >
            {footer}
          </div>
        ) : null}
      </SheetContent>
    </Sheet>
  );
};
