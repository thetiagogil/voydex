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
  children: ReactNode;
  content: ReactNode;
  contentClassName?: string;
  trigger: NonNullable<ComponentProps<typeof PopoverTrigger>["render"]>;
};

export const ExplanatoryTip = ({
  align,
  alignOffset,
  children,
  content,
  contentClassName,
  side = "top",
  sideOffset,
  trigger,
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
        render={trigger}
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
        {children}
      </PopoverTrigger>
      <PopoverContent
        align={align}
        alignOffset={alignOffset}
        side={side}
        sideOffset={sideOffset}
        className={cn(
          "bg-foreground text-background w-fit max-w-xs rounded-md px-3 py-1.5 text-xs leading-5 shadow-md ring-0",
          contentClassName,
        )}
      >
        {content}
      </PopoverContent>
    </Popover>
  );
};
