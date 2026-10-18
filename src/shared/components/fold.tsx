"use client";

import { useEffect, useId, useRef, useState, type ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";

/* How long the fold takes, so it stops clipping once it has opened. */
const FOLD_MS = 200;

const isTyping = (target: EventTarget | null) =>
  target instanceof HTMLElement &&
  (target.isContentEditable ||
    ["INPUT", "SELECT", "TEXTAREA"].includes(target.tagName));

/* "/" anywhere on the page (outside a field) opens the fold. */
export const useSlashToOpen = (onOpen: () => void) => {
  const onOpenRef = useRef(onOpen);

  useEffect(() => {
    onOpenRef.current = onOpen;
  });

  useEffect(() => {
    const onKeyDown = (event: KeyboardEvent) => {
      if (
        event.key !== "/" ||
        event.metaKey ||
        event.ctrlKey ||
        event.altKey ||
        isTyping(event.target)
      ) {
        return;
      }

      event.preventDefault();
      onOpenRef.current();
    };

    window.addEventListener("keydown", onKeyDown);

    return () => window.removeEventListener("keydown", onKeyDown);
  }, []);
};

/*
 * What folds: it grows open, then its contents fade in; it folds back the
 * other way. Opening moves focus to its search. Once fully open it stops
 * clipping, so a bar's shadow and focus rings show whole. Closed, its
 * contents are inert, so the keyboard skips them.
 */
export const FoldPanel = ({
  children,
  id,
  open,
}: {
  children: ReactNode;
  id: string;
  open: boolean;
}) => {
  const [isSettled, setIsSettled] = useState(open);
  const contentRef = useRef<HTMLDivElement>(null);
  const wasOpen = useRef(open);

  useEffect(() => {
    if (open && !wasOpen.current) {
      contentRef.current
        ?.querySelector<HTMLInputElement>("input")
        ?.focus({ preventScroll: true });
    }

    wasOpen.current = open;

    /* Clip again at once on closing; stop clipping once fully open. */
    const timer = window.setTimeout(
      () => setIsSettled(open),
      open ? FOLD_MS : 0,
    );

    return () => window.clearTimeout(timer);
  }, [open]);

  return (
    <div
      id={id}
      inert={!open}
      className={cn(
        "grid transition-[grid-template-rows] duration-200 ease-out motion-reduce:transition-none",
        open ? "grid-rows-[1fr]" : "grid-rows-[0fr]",
      )}
    >
      <div className={cn("min-h-0", !(open && isSettled) && "overflow-hidden")}>
        <div
          ref={contentRef}
          className={cn(
            "transition-opacity duration-200 ease-out motion-reduce:transition-none",
            open ? "opacity-100 delay-100" : "opacity-0",
          )}
        >
          {children}
        </div>
      </div>
    </div>
  );
};

const foldLabel = (open: boolean) =>
  open ? "Hide search and filters" : "Show search and filters";

/* A dot on a fold's button while it is closed with a filter on. */
const FilterDot = () => (
  <span
    aria-hidden
    className="bg-action bubble pointer-events-none absolute -top-1 -right-1 size-2.5 rounded-full"
  />
);

/*
 * A page with no band folds its bar from its title row: a round search
 * button at the row's end, the bar opening under the title.
 */
export const FoldToggle = ({
  activeCount = 0,
  controls,
  onOpenChange,
  open,
}: {
  activeCount?: number;
  controls: string;
  onOpenChange: (open: boolean) => void;
  open: boolean;
}) => (
  <span className="relative shrink-0">
    <Tooltip>
      <TooltipTrigger
        render={
          <Button
            type="button"
            variant={open ? "secondary" : "tint"}
            size="icon-sm"
            aria-expanded={open}
            aria-controls={controls}
            aria-keyshortcuts="/"
            aria-label={foldLabel(open)}
            onClick={() => onOpenChange(!open)}
          />
        }
      >
        <AppIcon
          icon={open ? appIcons.actions.close : appIcons.actions.search}
        />
      </TooltipTrigger>
      {/* Says what it does and its key, for the pointer. */}
      <TooltipContent side="bottom">
        {open ? "Hide search and filters" : "Search and filter · /"}
      </TooltipContent>
    </Tooltip>
    {!open && activeCount ? <FilterDot /> : null}
  </span>
);

/*
 * A list's folding search and filter bar: whether it is open, the panel's
 * id for its button, and "/" anywhere on the page to open it (or, already
 * open, to jump to its search). Starts open while a search or filter is on.
 */
export const useFold = ({ defaultOpen = false }: { defaultOpen?: boolean }) => {
  const [open, setOpen] = useState(defaultOpen);
  const panelId = useId();

  useSlashToOpen(() => {
    setOpen(true);
    /* Already open: jump to the search (closed, the panel focuses it as it opens). */
    document
      .getElementById(panelId)
      ?.querySelector<HTMLInputElement>("input")
      ?.focus({ preventScroll: true });
  });

  return { open, panelId, setOpen };
};

/*
 * A page head with the fold's button at the end of its row: the head (title,
 * line, its own actions) fills the row and the round button closes it.
 */
export const FoldHead = ({
  children,
  toggle,
}: {
  children: ReactNode;
  toggle: ReactNode;
}) => (
  <div className="flex min-w-0 items-center gap-3">
    <div className="min-w-0 flex-1">{children}</div>
    {toggle}
  </div>
);
