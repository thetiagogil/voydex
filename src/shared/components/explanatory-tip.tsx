"use client";

import { useRef, useState, type ComponentProps, type ReactNode } from "react";

import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/shared/components/ui/popover";
import { cn } from "@/shared/utils/cn";

const hoverDelay = 200;
const hoverCloseDelay = 100;

type ExplanatoryTipProps = Pick<
  ComponentProps<typeof PopoverContent>,
  "align" | "alignOffset" | "side" | "sideOffset"
> & {
  children?: ReactNode;
  content: ReactNode;
  contentClassName?: string;
  nativeButton?: ComponentProps<typeof PopoverTrigger>["nativeButton"];
  pinOnPress?: boolean;
  /* Without a trigger, the tip opens from v3's small "i" dot. */
  trigger?: NonNullable<ComponentProps<typeof PopoverTrigger>["render"]>;
  /* The accessible name of the default "i" dot. */
  triggerLabel?: string;
  /*
   * `dot` is the small inset dot for text; `raised` is v3's `.edit-wrap
   * .infotip`, a 24px cream dot on a 2px lip that sits beside a control.
   */
  triggerVariant?: InfoDotVariant;
};

type InfoDotVariant = "dot" | "raised";

/* v3 `.infotip`: a round "i" dot with at least a 40px hit area. */
const infoDotClassName =
  "text-ink-2 hover:text-ink focus-visible:outline-focus relative inline-grid shrink-0 cursor-help place-items-center rounded-full align-middle transition-colors focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid";

const infoDotVariantClassNames: Record<
  InfoDotVariant,
  { dot: string; glyph: string }
> = {
  dot: {
    dot: "bg-surface-2 size-4.5 after:absolute after:-inset-2.5",
    glyph: "text-12",
  },
  raised: {
    dot: "bg-surface size-6 shadow-[0_2px_0_var(--lip)] after:absolute after:-inset-2",
    glyph: "text-13",
  },
};

export const ExplanatoryTip = ({
  align,
  alignOffset,
  children,
  content,
  contentClassName,
  nativeButton,
  pinOnPress = true,
  side = "top",
  sideOffset,
  trigger,
  triggerLabel = "More information",
  triggerVariant = "dot",
}: ExplanatoryTipProps) => {
  const [open, setOpen] = useState(false);
  const openedByKeyboardFocus = useRef(false);
  const pinned = useRef(false);
  const pointerFocus = useRef(false);

  const close = () => {
    openedByKeyboardFocus.current = false;
    pinned.current = false;
    setOpen(false);
  };

  return (
    <Popover
      open={open}
      onOpenChange={(nextOpen, details) => {
        if (details.reason === "trigger-press" && !pinOnPress) {
          return;
        }

        if (details.reason === "trigger-hover" && pinned.current) {
          return;
        }

        if (details.reason === "trigger-press") {
          pinned.current = nextOpen;
          openedByKeyboardFocus.current = false;
        } else if (!nextOpen) {
          pinned.current = false;
          openedByKeyboardFocus.current = false;
        }

        setOpen(nextOpen);
      }}
    >
      <PopoverTrigger
        openOnHover
        delay={hoverDelay}
        closeDelay={hoverCloseDelay}
        nativeButton={nativeButton}
        render={
          trigger ?? (
            <button
              type="button"
              aria-label={triggerLabel}
              className={cn(
                infoDotClassName,
                infoDotVariantClassNames[triggerVariant].dot,
              )}
            />
          )
        }
        onFocus={(event) => {
          if (
            !pointerFocus.current &&
            event.currentTarget.matches(":focus-visible")
          ) {
            openedByKeyboardFocus.current = true;
            pinned.current = false;
            setOpen(true);
          }
        }}
        onPointerDown={() => {
          pointerFocus.current = true;
        }}
        onPointerUp={() => {
          pointerFocus.current = false;
        }}
        onPointerCancel={() => {
          pointerFocus.current = false;
        }}
        onKeyDown={(event) => {
          if (!pinOnPress) {
            return;
          }

          if (event.key !== "Enter" && event.key !== " ") {
            return;
          }

          event.preventDefault();

          if (!open) {
            pinned.current = true;
            openedByKeyboardFocus.current = false;
            setOpen(true);
            return;
          }

          if (openedByKeyboardFocus.current) {
            openedByKeyboardFocus.current = false;
            pinned.current = true;
            return;
          }

          close();
        }}
      >
        {children ??
          (trigger ? null : (
            <span
              aria-hidden
              className={cn(
                "leading-none font-extrabold",
                infoDotVariantClassNames[triggerVariant].glyph,
              )}
            >
              i
            </span>
          ))}
      </PopoverTrigger>
      <PopoverContent
        align={align}
        alignOffset={alignOffset}
        side={side}
        sideOffset={sideOffset}
        className={cn(
          /* The tip is ink, so quiet ink text inside it turns light. */
          "bg-ink text-on-ink shadow-float text-13 [&_.text-ink-2]:text-on-ink [&_.text-ink-3]:text-on-ink [&_.text-muted-foreground]:text-on-ink w-fit max-w-[min(18.75rem,calc(100vw-2rem))] gap-1.5 rounded-md px-3.5 py-3 leading-normal font-medium [&_.text-ink]:text-white [&_b]:text-white [&_strong]:text-white",
          contentClassName,
        )}
      >
        {content}
      </PopoverContent>
    </Popover>
  );
};
