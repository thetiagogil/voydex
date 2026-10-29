"use client";

import {
  createContext,
  useContext,
  useEffect,
  useId,
  useRef,
  useState,
  type ReactNode,
} from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PageHeadToolProvider } from "@/shared/components/page-head-tool";
import { Button } from "@/shared/components/ui/button";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";

/* How long the fold takes, so it stops clipping once it has opened. */
const FOLD_MS = 200;

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
 * The round search button that folds a list's bar, as tall as the head's
 * main action beside it; the bar opens under the title.
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
            size="icon"
            aria-expanded={open}
            aria-controls={controls}
            aria-label={foldLabel(open)}
            onClick={() => onOpenChange(!open)}
          />
        }
      >
        <AppIcon
          icon={open ? appIcons.actions.close : appIcons.actions.search}
        />
      </TooltipTrigger>
      <TooltipContent side="bottom">
        {open ? "Hide search and filter" : "Search and filter"}
      </TooltipContent>
    </Tooltip>
    {!open && activeCount ? <FilterDot /> : null}
  </span>
);

const FoldsOpenContext = createContext(false);

/*
 * Your Search and filters setting for every list inside: Always open
 * (`open`) starts each fold open; Folded, or no one signed in, leaves them
 * to `useFold`'s own start.
 */
export const FoldsOpenProvider = ({
  children,
  open,
}: {
  children: ReactNode;
  open: boolean;
}) => (
  <FoldsOpenContext.Provider value={open}>{children}</FoldsOpenContext.Provider>
);

/*
 * A list's folding search and filter bar: whether it is open and the panel's
 * id for its button. Starts open while a search or filter is on, or on every
 * list when your Search and filters setting is Always open; its button still
 * folds it for that visit.
 */
export const useFold = ({ defaultOpen = false }: { defaultOpen?: boolean }) => {
  const foldsOpen = useContext(FoldsOpenContext);
  const [open, setOpen] = useState(defaultOpen || foldsOpen);
  const panelId = useId();

  return { open, panelId, setOpen };
};

/*
 * A page head with the fold's button in its action row, just before the
 * head's own main action (New Play, New Plan).
 */
export const FoldHead = ({
  children,
  toggle,
}: {
  children: ReactNode;
  toggle: ReactNode;
}) => <PageHeadToolProvider tool={toggle}>{children}</PageHeadToolProvider>;
