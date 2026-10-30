"use client";

import type { ReactNode } from "react";

import { BottomSheet } from "@/shared/components/bottom-sheet";
import { Sheet, SheetContent } from "@/shared/components/ui/sheet";
import type { ComponentProps } from "react";
import { useBottomSheetLayout } from "@/shared/hooks/use-bottom-sheet-layout";
import { cn } from "@/shared/utils/cn";

type ResponsiveDetailSheetProps = {
  /* The body, under the head. */
  children: ReactNode;
  /*
   * Where focus returns on close, when the sheet wasn't opened from a
   * trigger, such as a picked stop that opens it through state.
   */
  finalFocus?: ComponentProps<typeof SheetContent>["finalFocus"];
  /* Pinned under the body, such as Remove and Done. */
  footer?: ReactNode;
  /*
   * The head (v3 `.sh-head`), which must render the sheet's `SheetTitle`; it
   * names the sheet.
   */
  head: ReactNode;
  /*
   * The head fills the top edge to edge and brings its own padding, such as
   * a Pokémon's head on its type tint.
   */
  headBleed?: boolean;
  /* The accessible name for the phone sheet, as the head's title reads. */
  label: string;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  /* `wide` for a table such as a matchup matrix. */
  size?: "default" | "wide";
};

/*
 * v3's detail sheet (`.overlay.side .sheet`): from 1024px up it slides in
 * from the right edge over a scrim; below, on phones and tablets, it is the
 * bottom sheet, like every sheet. Both trap focus, close on Escape and
 * return focus to what opened them.
 */
export const ResponsiveDetailSheet = ({
  children,
  finalFocus,
  footer,
  head,
  headBleed = false,
  label,
  onOpenChange,
  open,
  size = "default",
}: ResponsiveDetailSheetProps) => {
  const isBottomSheet = useBottomSheetLayout();

  if (isBottomSheet) {
    return (
      <BottomSheet
        open={open}
        onOpenChange={onOpenChange}
        label={label}
        finalFocus={finalFocus}
        footer={footer}
        size={size}
      >
        <div className="flex flex-col gap-5">
          {head}
          {children}
        </div>
      </BottomSheet>
    );
  }

  return (
    <Sheet open={open} onOpenChange={onOpenChange}>
      <SheetContent
        side="right"
        finalFocus={finalFocus}
        className={cn(
          "w-full gap-0 p-0",
          size === "wide"
            ? "data-[side=right]:sm:max-w-[min(860px,calc(100vw-2rem))]"
            : "data-[side=right]:sm:max-w-120",
        )}
      >
        {headBleed ? (
          <div className="shrink-0">{head}</div>
        ) : (
          <div className="border-line shrink-0 border-b px-6 pt-6 pr-16 pb-5">
            {head}
          </div>
        )}
        <div className="min-h-0 flex-1 overflow-y-auto px-6 py-5">
          <div className="flex flex-col gap-6">{children}</div>
        </div>
        {footer ? (
          <div className="border-line flex shrink-0 items-center gap-2 border-t px-6 py-4">
            {footer}
          </div>
        ) : null}
      </SheetContent>
    </Sheet>
  );
};
