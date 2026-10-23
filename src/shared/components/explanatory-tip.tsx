"use client";

import { useRef, useState, type ComponentProps, type ReactNode } from "react";

import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/shared/components/ui/popover";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { tooltipDelay } from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";

const hoverCloseDelay = 100;

type ExplanatoryTipProps = Pick<
  ComponentProps<typeof PopoverContent>,
  "align" | "alignOffset" | "side" | "sideOffset"
> & {
  children?: ReactNode;
  content: ReactNode;
  contentClassName?: string;
  /*
   * Inside a list's row (a select's option): the dot opens on hover or its
   * own press but never takes focus or picks the row. Give the row the same
   * words for a screen reader, as the dot is hidden from it.
   */
  inert?: boolean;
  nativeButton?: ComponentProps<typeof PopoverTrigger>["nativeButton"];
  pinOnPress?: boolean;
  /* Without a trigger, the tip opens from v3's small "i" dot. */
  trigger?: NonNullable<ComponentProps<typeof PopoverTrigger>["render"]>;
  /* The accessible name of the default "i" dot. */
  triggerLabel?: string;
  /*
   * `info` is the "i" dot; `warn` and `danger` turn it into a soft "!" that
   * flags something to look at (a Plan slot that needs something).
   */
  triggerTone?: InfoDotTone;
  /*
   * `dot` is the small inset dot for text; `icon` is the outlined info icon
   * a Library choice wears, for the end of a chip; `subtle` is that icon
   * smaller and faded, for the end of a list row or beside a value (what an
   * ability or move does); `raised` is a 24px cream bubble for a card's
   * corner (inside a `CornerBubble`).
   */
  triggerVariant?: InfoDotVariant;
};

type InfoDotVariant = "dot" | "icon" | "raised" | "subtle";
type InfoDotTone = "danger" | "info" | "warn";

const infoDotToneClassNames: Record<InfoDotTone, string> = {
  danger: "bg-danger-soft text-danger-deep hover:text-danger-deep",
  info: "",
  warn: "bg-warn-soft text-warn-ink hover:text-warn-ink",
};

/* v3 `.infotip`: a round "i" dot with at least a 40px hit area. */
const infoDotClassName =
  "text-ink-2 hover:text-ink relative inline-grid shrink-0 cursor-help place-items-center rounded-full align-middle transition-colors focus-ring";

const infoDotVariantClassNames: Record<
  InfoDotVariant,
  { dot: string; glyph: string }
> = {
  dot: {
    dot: "bg-surface-2 size-4.5 after:absolute after:-inset-2.5",
    glyph: "text-12",
  },
  icon: {
    dot: "text-ink-3 size-4.5 after:absolute after:-inset-2.5",
    glyph: "",
  },
  raised: {
    dot: "bg-surface bubble size-6 after:absolute after:-inset-2",
    glyph: "text-13",
  },
  subtle: {
    dot: "text-ink-3 size-3.5 opacity-60 hover:opacity-100 after:absolute after:-inset-2.5",
    glyph: "",
  },
};

export const ExplanatoryTip = ({
  align,
  alignOffset,
  children,
  content,
  contentClassName,
  inert = false,
  nativeButton,
  pinOnPress = true,
  side = "top",
  sideOffset,
  trigger,
  triggerLabel = "More information",
  triggerTone = "info",
  triggerVariant = "dot",
}: ExplanatoryTipProps) => {
  const [open, setOpen] = useState(false);
  const openedByKeyboardFocus = useRef(false);
  const pinned = useRef(false);
  const pointerFocus = useRef(false);
  const closedByEscape = useRef(false);

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

        /* Focus inside the tip goes back to the trigger as Escape closes it. */
        closedByEscape.current =
          !nextOpen &&
          details.reason === "escape-key" &&
          Boolean(
            document.activeElement?.closest('[data-slot="popover-content"]'),
          );

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
        delay={tooltipDelay}
        closeDelay={hoverCloseDelay}
        nativeButton={inert ? false : nativeButton}
        /* In a list's row it is no control of its own: never a tab stop. */
        {...(inert ? { role: "presentation", tabIndex: -1 } : {})}
        render={
          trigger ??
          (inert ? (
            <span
              aria-hidden
              className={cn(
                infoDotClassName,
                infoDotVariantClassNames[triggerVariant].dot,
                infoDotToneClassNames[triggerTone],
              )}
              /* Its own press opens the tip; the row under it stays unpicked. */
              onClick={(event) => event.stopPropagation()}
              onMouseDown={(event) => event.stopPropagation()}
              onMouseUp={(event) => event.stopPropagation()}
              onPointerDown={(event) => event.stopPropagation()}
              onPointerUp={(event) => event.stopPropagation()}
            />
          ) : (
            <button
              type="button"
              aria-label={triggerLabel}
              className={cn(
                infoDotClassName,
                infoDotVariantClassNames[triggerVariant].dot,
                infoDotToneClassNames[triggerTone],
              )}
            />
          ))
        }
        onFocus={(event) => {
          /* Focus coming back to the trigger as Escape closes the tip keeps it closed. */
          if (closedByEscape.current) {
            closedByEscape.current = false;
            return;
          }

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
          (trigger ? null : triggerVariant === "icon" ||
            triggerVariant === "subtle" ? (
            <AppIcon
              icon={appIcons.status.info}
              size={triggerVariant === "subtle" ? 14 : "sm"}
            />
          ) : (
            <span
              aria-hidden
              className={cn(
                "leading-none font-extrabold",
                infoDotVariantClassNames[triggerVariant].glyph,
              )}
            >
              {triggerTone === "info" ? "i" : "!"}
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
