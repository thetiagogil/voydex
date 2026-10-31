"use client";

import {
  useRef,
  type ComponentProps,
  type ReactElement,
  type ReactNode,
} from "react";

import {
  OverlayFrame,
  type OverlayFrameProps,
} from "@/shared/components/overlay-frame";
import {
  Sheet,
  SheetContent,
  SheetTrigger,
} from "@/shared/components/ui/sheet";
import { useBottomSheetLayout } from "@/shared/hooks/use-bottom-sheet-layout";
import { cn } from "@/shared/utils/cn";

type SheetContentProps = ComponentProps<typeof SheetContent>;

/* The side sheet's width, from 1024px: 480, 560, 640 or 860px at most. */
export type OverlaySheetSize = "lg" | "md" | "sm" | "xl";

const sideSizeClassNames: Record<OverlaySheetSize, string> = {
  lg: "data-[side=right]:sm:max-w-160",
  md: "data-[side=right]:sm:max-w-140",
  sm: "data-[side=right]:sm:max-w-120",
  xl: "data-[side=right]:sm:max-w-[min(860px,calc(100vw-2rem))]",
};

export type OverlaySheetProps = Omit<
  OverlayFrameProps,
  "children" | "placement" | "titleRef"
> & {
  children: ReactNode;
  className?: string;
  defaultOpen?: boolean;
  /* Where focus returns on close, when it is not the trigger. */
  finalFocus?: SheetContentProps["finalFocus"];
  /* Where focus lands on open; the title unless told otherwise. */
  initialFocus?: SheetContentProps["initialFocus"];
  onOpenChange?: (open: boolean) => void;
  /* After the open or close animation ends. */
  onOpenChangeComplete?: (open: boolean) => void;
  open?: boolean;
  /* The side sheet's width. A bottom sheet is always the full width. */
  size?: OverlaySheetSize;
  /* The element that opens the sheet, through `render`. */
  trigger?: ReactElement;
};

/*
 * The one sheet, for work that is more than a quick answer but doesn't need
 * its own page: a side sheet from 1024px, a bottom sheet (grab handle,
 * rounded top, at most 88% tall) on phones and tablets. The title, its
 * corner close, the body's scroll and the footer are the same everywhere;
 * `head` places a Pokémon's art or a marker beside the title and `toolbar`
 * pins a search under it. Built on the `Sheet` primitive, so focus, Escape
 * and the scrim come with it.
 */
export const OverlaySheet = ({
  className,
  defaultOpen,
  finalFocus,
  initialFocus,
  onOpenChange,
  onOpenChangeComplete,
  open,
  size = "md",
  trigger,
  ...frame
}: OverlaySheetProps) => {
  const titleRef = useRef<HTMLHeadingElement>(null);
  const isBottom = useBottomSheetLayout();

  return (
    <Sheet
      open={open}
      defaultOpen={defaultOpen}
      onOpenChange={onOpenChange}
      onOpenChangeComplete={onOpenChangeComplete}
    >
      {trigger ? <SheetTrigger render={trigger} /> : null}
      <SheetContent
        side={isBottom ? "bottom" : "right"}
        initialFocus={initialFocus ?? titleRef}
        finalFocus={finalFocus}
        className={cn(
          "w-full gap-0 p-0",
          isBottom
            ? ["max-h-[88dvh] data-[side=bottom]:rounded-t-xl"]
            : sideSizeClassNames[size],
          className,
        )}
      >
        {isBottom ? (
          <span
            aria-hidden
            data-slot="overlay-grab"
            className="bg-line mx-auto mt-2.5 mb-0.5 h-1.25 w-11 shrink-0 rounded-full"
          />
        ) : null}
        <OverlayFrame
          {...frame}
          placement={isBottom ? "bottom" : "side"}
          titleRef={titleRef}
        />
      </SheetContent>
    </Sheet>
  );
};
