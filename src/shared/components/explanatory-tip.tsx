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
};

/* v3 `.infotip`: an 18px dot in the inset fill, with a 40px hit area. */
const infoDotClassName =
  "bg-surface-2 text-ink-2 hover:text-ink focus-visible:outline-focus relative inline-grid size-4.5 shrink-0 cursor-help place-items-center rounded-full align-middle transition-colors after:absolute after:-inset-2.5 focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid";

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
              className={infoDotClassName}
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
              className="text-12 leading-none font-extrabold italic"
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
