"use client";

import { useRef, type ReactNode } from "react";

import { useMainlinePlayDetailSheetLayout } from "@/modules/mainline/features/plays/hub/shell/use-mainline-play-detail-sheet-layout";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetTitle,
} from "@/shared/components/ui/sheet";
import { cn } from "@/shared/utils/cn";

type PlayFormOverlayProps = {
  bodyClassName?: string;
  children: ReactNode;
  description?: ReactNode;
  /* Pinned under the body: Cancel and the form's main button. */
  footer?: ReactNode;
  /* Above the title, such as a Pokémon's art on its type tint. */
  head?: ReactNode;
  /* A short line over the title, such as "Add · Sword". */
  kicker?: ReactNode;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  /*
   * How it opens on wide screens: `dialog` in the middle, `side` as v3's
   * side sheet (`.overlay.side`) for longer forms. Phones and tablets always
   * get the bottom sheet.
   */
  presentation?: "dialog" | "side";
  title: ReactNode;
  /*
   * Pinned under the title, such as a search: the title and it stay in view
   * while only the body scrolls.
   */
  toolbar?: ReactNode;
};

/*
 * A Play's quiet forms (a note, adding or editing a Pokémon): a bottom sheet
 * on phones and tablets, a dialog or side sheet wider. Focus lands on the
 * title, and the footer stays in view while the body scrolls; with a
 * toolbar, so do the title and the toolbar.
 */
export const PlayFormOverlay = ({
  bodyClassName,
  children,
  description,
  footer,
  head,
  kicker,
  onOpenChange,
  open,
  presentation = "dialog",
  title,
  toolbar,
}: PlayFormOverlayProps) => {
  const titleRef = useRef<HTMLHeadingElement>(null);
  const usesBottomSheet = useMainlinePlayDetailSheetLayout();
  const kickerLine = kicker ? (
    <p className="text-ink-3 text-13 font-extrabold">{kicker}</p>
  ) : null;
  const footerRow = footer ? (
    <div
      data-slot="play-form-footer"
      className="border-line bg-surface flex shrink-0 flex-wrap items-center justify-end gap-2.5 border-t px-5 py-3 sm:px-6"
    >
      {footer}
    </div>
  ) : null;

  const sheetTitleBlock = (
    <>
      {head}
      <div className="grid gap-1 pr-12">
        {kickerLine}
        <SheetTitle
          ref={titleRef}
          tabIndex={-1}
          className="text-24 outline-none"
        >
          {title}
        </SheetTitle>
        {description ? (
          <SheetDescription>{description}</SheetDescription>
        ) : null}
      </div>
    </>
  );

  if (usesBottomSheet) {
    return (
      <BottomSheet
        open={open}
        onOpenChange={onOpenChange}
        initialFocus={titleRef}
        label={typeof title === "string" ? title : undefined}
        bodyClassName={cn("pt-2", bodyClassName)}
        footer={footer}
        header={
          toolbar ? (
            <>
              {sheetTitleBlock}
              <div className="mt-4">{toolbar}</div>
            </>
          ) : undefined
        }
      >
        {toolbar ? (
          children
        ) : (
          <>
            {sheetTitleBlock}
            <div className="mt-4">{children}</div>
          </>
        )}
      </BottomSheet>
    );
  }

  if (presentation === "side") {
    return (
      <Sheet open={open} onOpenChange={onOpenChange}>
        <SheetContent
          side="right"
          initialFocus={titleRef}
          className="w-full gap-0 p-0 data-[side=right]:sm:max-w-[480px]"
        >
          {toolbar ? (
            <>
              <div className="shrink-0 px-6 pt-6 pb-4">
                {sheetTitleBlock}
                <div className="mt-5">{toolbar}</div>
              </div>
              <div
                className={cn(
                  "min-h-0 flex-1 overflow-y-auto px-6 pt-1 pb-6",
                  bodyClassName,
                )}
              >
                {children}
              </div>
            </>
          ) : (
            <div className="min-h-0 flex-1 overflow-y-auto px-6 pt-6 pb-6">
              {sheetTitleBlock}
              <div className={cn("mt-5", bodyClassName)}>{children}</div>
            </div>
          )}
          {footerRow}
        </SheetContent>
      </Sheet>
    );
  }

  const dialogTitleBlock = (
    <>
      {head}
      <DialogHeader className="gap-1 pr-12">
        {kickerLine}
        <DialogTitle
          ref={titleRef}
          tabIndex={-1}
          className="text-24 outline-none"
        >
          {title}
        </DialogTitle>
        {description ? (
          <DialogDescription>{description}</DialogDescription>
        ) : null}
      </DialogHeader>
    </>
  );

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent
        initialFocus={titleRef}
        className="flex max-h-[85dvh] flex-col gap-0 overflow-hidden p-0 sm:max-w-lg"
      >
        {toolbar ? (
          <>
            <div className="shrink-0 px-6 pt-6 pb-4">
              {dialogTitleBlock}
              <div className="mt-5">{toolbar}</div>
            </div>
            <div
              className={cn(
                "min-h-0 flex-1 overflow-y-auto px-6 pt-1 pb-6",
                bodyClassName,
              )}
            >
              {children}
            </div>
          </>
        ) : (
          <div className="flex min-h-0 flex-col overflow-y-auto px-6 pt-6 pb-6">
            {dialogTitleBlock}
            <div className={cn("mt-5", bodyClassName)}>{children}</div>
          </div>
        )}
        {footerRow}
      </DialogContent>
    </Dialog>
  );
};
